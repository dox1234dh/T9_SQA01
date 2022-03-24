var authEndpoint = 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize?';
var redirectUri = 'https://localhost';
var appId = '7ccd7c89-22b2-45cb-a5bf-9ea4b7cbc028';
var scopes = 'openid profile User.Read Mail.Read Calendars.Read Contacts.Read';

var cryptObj = window.crypto || window.msCrypto; // For IE11
if (cryptObj === undefined || cryptObj.getRandomValues === 'undefined') {
   alert('unsupportedbrowser');
   //return;
}
