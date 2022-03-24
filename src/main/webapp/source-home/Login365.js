
var hash = window.location.hash;
var action = hash.split('=')[0];

if (action == '#access_token') {
    handleTokenResponse(hash);
}
    
if (action=='#signout') {    
    clearUserState();
    renderTokens(true); // VIET
    window.location.hash = '#';
}

var isAuthenticated = (sessionStorage.accessToken != null && sessionStorage.accessToken.length > 0);

if (isAuthenticated) {

    validateIdToken(false, function(isValid) {
        if (isValid) {
          // Re-render token to handle refresh
          renderTokens(false);
          
          // Redirect to home page
          window.location.hash = '#';
        } else {
          // VIET: da het han / expired ???
          clearUserState();
          renderTokens(true); // clear
          // Report error
          window.location.hash = '#error=Invalid+ID+token&error_description=ID+token+failed+validation,+please+try+signing+in+again.';
        }
    });

    isAuthenticated = (sessionStorage.accessToken != null && sessionStorage.accessToken.length > 0);
}

if (isAuthenticated && sessionStorage.userName == null) {
    // được include trong trang DangNhap.aspx, set lại các thông tin đăng nhập thành công
    EduSoft.Web.UC.DangNhap.CheckLogin365(sessionStorage.userSigninName, CheckLogin365_callback);
    
}

function CheckLogin365_callback(res) {
    if (res.value == "") {
        self.location = "Default.aspx?page=gioithieu";
        sessionStorage.userName = "Login";
    }
    else {
        alert("callback" + res.value);
    }
}


function renderTokens(isClear) {
    if (isClear)
    {
        $('#token', window.parent.document).text('');
        $('#expires-display', window.parent.document).text('');
        $('#id-token', window.parent.document).text('');

        return;
    }

    if (sessionStorage.accessToken) {
        // For demo purposes display the token and expiration
        var expireDate = new Date(parseInt(sessionStorage.tokenExpires));
        $('#token', window.parent.document).text(sessionStorage.accessToken);
        $('#expires-display', window.parent.document).text(expireDate.toLocaleDateString() + ' ' + expireDate.toLocaleTimeString());
        if (sessionStorage.idToken) {
            $('#id-token', window.parent.document).text(sessionStorage.idToken);

            //alert('VIET_renderTokens()...Expired: '+expireDate.toLocaleDateString() + ' ' + expireDate.toLocaleTimeString()+'\r\n idToken: '+sessionStorage.idToken);
        }

        //$('#token-display', window.parent.document).show();
    } else {
        //$('#token-display', window.parent.document).hide();
    }
}

function buildAuthUrl() {
    clearUserState();
    // Generate random values for state and nonce
    sessionStorage.authState = guid();
    sessionStorage.authNonce = guid();

    var authParams = {
      response_type: 'id_token token',
      client_id: appId,
      redirect_uri: redirectUri,
      scope: scopes,
      state: sessionStorage.authState,
      nonce: sessionStorage.authNonce,
      response_mode: 'fragment'
    };
    
    return authEndpoint + $.param(authParams);
}

function clearUserState() {
    // Clear session
    sessionStorage.clear();
}

function guid() {
    var buf = new Uint16Array(8);
    cryptObj.getRandomValues(buf);
    function s4(num) {
      var ret = num.toString(16);
      while (ret.length < 4) {
        ret = '0' + ret;
      }
      return ret;
    }
    return s4(buf[0]) + s4(buf[1]) + '-' + s4(buf[2]) + '-' + s4(buf[3]) + '-' +
      s4(buf[4]) + '-' + s4(buf[5]) + s4(buf[6]) + s4(buf[7]);
}

function parseHashParams(hash) {
    var params = hash.slice(1).split('&');
    
    var paramarray = {};
    params.forEach(function(param) {
      param = param.split('=');
      paramarray[param[0]] = param[1];
    });
    
    return paramarray;
}


function handleTokenResponse(hash) {
    // If this was a silent request remove the iframe
    //$('#auth-iframe').remove();
    //alert('VIET_handleTokenResponse()..,');

    // clear tokens
    sessionStorage.removeItem('accessToken');
    sessionStorage.removeItem('idToken');

    var tokenresponse = parseHashParams(hash);

    // Check that state is what we sent in sign in request
    if (tokenresponse.state != sessionStorage.authState) {
      sessionStorage.removeItem('authState');
      sessionStorage.removeItem('authNonce');
      // Report error
      window.location.hash = '#error=Invalid+state&error_description=The+state+in+the+authorization+response+did+not+match+the+expected+value.+Please+try+signing+in+again.';
      return;
    }

    sessionStorage.authState = '';
    sessionStorage.accessToken = tokenresponse.access_token;
    
    // Get the number of seconds the token is valid for,
    // Subract 5 minutes (300 sec) to account for differences in clock settings
    // Convert to milliseconds
    var expiresin = (parseInt(tokenresponse.expires_in) - 300) * 1000; // VIET_QUAN TRONG
    var now = new Date();
    var expireDate = new Date(now.getTime() + expiresin);
    sessionStorage.tokenExpires = expireDate.getTime();

    sessionStorage.idToken = tokenresponse.id_token;

    validateIdToken(true, function(isValid) {
      if (isValid) {
        // Re-render token to handle refresh
        renderTokens(false);
        
        // Redirect to home page
        window.location.hash = '#';
      } else {
        // VIET: da het han / expired ???
        clearUserState();
        renderTokens(true);
        // Report error
        window.location.hash = '#error=Invalid+ID+token&error_description=ID+token+failed+validation,+please+try+signing+in+again.';
      }
    });
  }

  function validateIdToken(isFirstLogin, callback) {
    // Per Azure docs (and OpenID spec), we MUST validate
    // the ID token before using it. However, full validation
    // of the signature currently requires a server-side component
    // to fetch the public signing keys from Azure. This sample will
    // skip that part (technically violating the OpenID spec) and do
    // minimal validation

    if (null == sessionStorage.idToken || sessionStorage.idToken.length <= 0) {
        alert('ERR_01');
        callback(false);
    }

    // JWT is in three parts seperated by '.'
    var tokenParts = sessionStorage.idToken.split('.');
    if (tokenParts.length != 3){
        alert('ERR_02');
        callback(false);
    }

    // Parse the token parts
    var header = KJUR.jws.JWS.readSafeJSONString(b64utoutf8(tokenParts[0]));
    var payload = KJUR.jws.JWS.readSafeJSONString(b64utoutf8(tokenParts[1]));

    // Check the nonce
    if (isFirstLogin)
    {
        if (payload.nonce != sessionStorage.authNonce) {
            sessionStorage.authNonce = '';
            //alert('ERR_03: '+payload.nonce+' # '+sessionStorage.authNonce);
            callback(false);
        }

        sessionStorage.authNonce = '';
    }        

    // Check the audience
    if (payload.aud != appId) {
        alert('ERR_04');
        callback(false);
    }

    // Check the issuer
    // Should be https://login.microsoftonline.com/{tenantid}/v2.0
    if (payload.iss !== 'https://login.microsoftonline.com/' + payload.tid + '/v2.0') {
        alert('ERR_05');
        callback(false);
    }

    // Check the valid dates
    var now = new Date();
    // To allow for slight inconsistencies in system clocks, adjust by 5 minutes
    var notBefore = new Date((payload.nbf - 300) * 1000);
    var expires = new Date((payload.exp + 300) * 1000);
    if (now < notBefore || now > expires) {
        alert('ERR_06');
        callback(false);
    }

    // Now that we've passed our checks, save the bits of data
    // we need from the token.

    sessionStorage.userDisplayName = payload.name;
    sessionStorage.userSigninName = payload.preferred_username;

    // Per the docs at:
    // https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols-implicit/#send-the-sign-in-request
    // Check if this is a consumer account so we can set domain_hint properly
    sessionStorage.userDomainType = 
      payload.tid === '9188040d-6c67-4c5b-b112-36a304b66dad' ? 'consumers' : 'organizations';

    callback(true);
  }
