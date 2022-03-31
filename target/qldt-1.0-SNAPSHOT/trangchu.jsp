<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 3/23/2022
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0052)https://qldt.ptit.edu.vn/default.aspx?page=gioithieu -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script async=""
            src="source-home/za.js"></script>
    <script language="javascript" type="text/javascript">

        var gv = 'False';
    </script>
    <script type="text/javascript"
            src="source-home/platform.js"
            async="" defer="" gapi_processed="true"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta id="ctl00_metaGoogle" name="google-signin-client_id">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://qldt.ptit.edu.vn/Images/Edusoft.gif">
    <script src="source-home/jquery-2.2.1.js"
            type="text/javascript"></script>
    <script src="source-home/dialog.js"
            type="text/javascript"></script>
    <script src="source-home/checkdate.js"
            type="text/javascript"></script>
    <script src="source-home/balloontip.js"
            type="text/javascript"></script>
    <script src="js/login.js"></script>
    <link href="./source-home/balloontip.css"
          rel="stylesheet" type="text/css">
    <title>
        Cổng Thông Tin Đào Tạo-Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc-BCVTVTHN
    </title>
    <script type="text/javascript" language="javascript">

        function ShowMess() {
            var url = location.href;
            if (url.indexOf("err=serveroverload", 0) > 0)
                alert('Server quá tải, vui lòng đăng nhập lại!');
            else if (url.indexOf("err=sessionreuse", 0) > 0)
                alert('Vui lòng tắt và mở lại trình duyệt!');
        }

        $(function () {
            if (typeof AjaxPro != 'undefined' && AjaxPro && AjaxPro.Request && AjaxPro.Request.prototype) {
                AjaxPro.Request.prototype.doStateChange = function () {
                    this.onStateChanged(this.xmlHttp.readyState, this);
                    if (this.xmlHttp.readyState != 4 || !this.isRunning) {
                        return;
                    }
                    this.duration = new Date().getTime() - this.__start;
                    if (this.timeoutTimer != null) {
                        clearTimeout(this.timeoutTimer);
                    }
                    var res = this.getEmptyRes();
                    if (this.xmlHttp.status == 200 && (this.xmlHttp.statusText == "OK" || !this.xmlHttp.statusText)) {
                        res = this.createResponse(res);
                    } else {
                        res = this.createResponse(res, true);
                        res.error = {
                            Message: this.xmlHttp.statusText,
                            Type: "ConnectFailure",
                            Status: this.xmlHttp.status
                        };
                    }
                    this.endRequest(res);
                };
            }
            //gapi.load('auth2', function () {
            //    gapi.auth2.GoogleUser(u => {
            //        u.getAuthResponse(a => {
            //            EduSoft.Web.DefaultMaster.CheckGoogle(a.id_token, x => {
            //                if (x.value) {
            //                    self.location = decodeURIComponent(x.value);
            //                }
            //            });
            //        });
            //    });
            //}
        });
    </script>

    <link href="./source-home/WebResource.axd"
          rel="stylesheet" type="text/css">
    <link href="./source-home/Standard.css"
          type="text/css" rel="stylesheet">
    <link href="./source-home/StyleSheet.css"
          type="text/css" rel="stylesheet">
    <style type="text/css">
        .ctl00_ContentPlaceHolder1_ctl00_leftMenu_0 {
            background-color: white;
            visibility: hidden;
            display: none;
            position: absolute;
            left: 0px;
            top: 0px;
        }

        .ctl00_ContentPlaceHolder1_ctl00_leftMenu_1 {
            color: Black;
            font-size: 12px;
            font-weight: bold;
            text-decoration: none;
        }

        .ctl00_ContentPlaceHolder1_ctl00_leftMenu_2 {
            color: Black;
            background-color: #B0C5FF;
            border-style: None;
            font-size: 12px;
            font-weight: bold;
        }

        .ctl00_ContentPlaceHolder1_ctl00_leftMenu_3 {
            background-color: #B0C5FF;
            width: 200px;
        }

    </style>
</head>

<body background="./source-home/background.png"
      onload="ShowMess()">
<form name="aspnetForm" method="post" action="https://qldt.ptit.edu.vn/default.aspx?page=gioithieu" id="aspnetForm"
      enctype="multipart/form-data">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="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4bqtcDo4NGRkAg8PFgIfAgUjPC90ZD4gPHRkIHdpZHRoPSc3MCUnIHZhbGlnbj0ndG9wJz5kAhAPDxYCHwIFEFRIw5RORyBUSU4gQ0hVTkdkZAIRD2QWGmYPZBYCZg8PFggfAgX+BTxhIGNsYXNzPSdUZXh0VGl0bGUnIGhyZWY9J2RlZmF1bHQuYXNweD9wYWdlPWNoaXRpZXR0aG9uZ3RpbiZpZD0yMDMnPiZuYnNwOzxzdHJvbmcgc3R5bGU9Im1zby1iaWRpLWZvbnQtd2VpZ2h0Om5vcm1hbCI+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPk5nw6B5IDIzLzAzOjwvc3Bhbj48L3NwYW4+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPjxzcGFuIHN0eWxlPSJtc28tc3BhY2VydW46eWVzIj4mbmJzcDsgPC9zcGFuPjxzcGFuIHN0eWxlPSJtc28tc3BhY2VydW46eWVzIj4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDs8L3NwYW4+xJDEgk5HCkvDnSBI4buMQyBM4buaUCBSScOKTkcgS+G7siAyICgyMDIxIC0gMjAyMik8L3NwYW4+PC9zdHJvbmc+PGltZyBzdHlsZT0nIGJvcmRlcjowJyAgc3JjPScuL0ltYWdlcy9uZXcuZ2lmJyB3aWR0aD0nMzBweCcgaGVpZ2h0PSczMHB4JyBhbHQ9J1RpbiB04bupYyBt4bubaSBj4bqtcCBuaOG6rXQnLz48L2E+PHNwYW4gY2xhc3M9J05nYXlUaXRsZSc+ICgyMy8wMy8yMDIyKTwvc3Bhbj4fAQolHg9Ib3Jpem9udGFsQWxpZ24LKilTeXN0ZW0uV2ViLlVJLldlYkNvbnRyb2xzLkhvcml6b250YWxBbGlnbgEfAwKEgARkZAIBD2QWAmYPDxYCHwIFqSg8c3BhbiBjbGFzcz0nVGV4dFRob25nVGluJyBzdHlsZT0ndGV4dC1hbGlnbjpsZWZ0Jz48c3Ryb25nIHN0eWxlPSJtc28tYmlkaS1mb250LXdlaWdodDpub3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4xLyDEkOG7kEkgVMav4buiTkc6IDwvc3Bhbj48L3N0cm9uZz4KCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4tIFNpbmggdmnDqm4gY8OhYyBuZ8OgbmgKa2jhu5FpIEtpbmggdOG6vyB2w6AgVHJ1eeG7gW4gdGjDtG5nIMSQUFQ6IGtow7NhIDIwMTggdHLhu58gduG7gSB0csaw4bubYzs8L3NwYW4+PC9wPgoKPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPi0gU2luaCB2acOqbiBjw6FjCm5nw6BuaCBraOG7kWkgS+G7uSB0aHXhuq10OiBraMOzYSAyMDE3IHRy4bufIHbhu4EgdHLGsOG7m2M8L3NwYW4+PC9wPgoKPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGVtIHN0eWxlPSJtc28tYmlkaS1mb250LXN0eWxlOm5vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPiogU2luaCB2acOqbiBwaOG6o2kgaG/DoG4gdGjDoG5oIG7hu5lwIGjhu41jIHBow60gxJHhur9uIGjhur90IEjhu41jIGvhu7MKMSBuxINtIGjhu41jIDIwMjEtMjAyMiB0csaw4bubYyBuZ8OgeSAyNS8wMy8zMDIyIChsacOqbiBo4buHIHBow7JuZyBUw6BpIGNow61uaCBL4bq/IHRvw6FuIG7hur91CmNoxrBhIGhvw6BuIHRow6BuaCBu4buZcCBo4buNYyBwaMOtKTwvc3Bhbj48L2VtPjwvcD4KCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzdHJvbmcgc3R5bGU9Im1zby1iaWRpLWZvbnQtd2VpZ2h0Om5vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPjIvIE7hu5hJIERVTkcgxJDEgk5HIEvDnTogPC9zcGFuPjwvc3Ryb25nPjwvcD4KCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4tIFNpbmggdmnDqm4gcGjhuqNpCsSRxINuZyBrw70gxJHDum5nIDxzdHJvbmcgc3R5bGU9Im1zby1iaWRpLWZvbnQtd2VpZ2h0Om5vcm1hbCI+TcOjIGjhu41jIHBo4bqnbjwvc3Ryb25nPiBjw7Mgbmd1eeG7h24gduG7jW5nCmjhu41jIChjaMO6IMO9OiDEkcOjIMSRxINuZyBrw70gbmd1eeG7h24gduG7jW5nIHThu6ljIGzDoCB4w6FjIG5o4bqtbiBz4bq9IHRoYW0gZ2lhIGhvYyk7IEvhur90IHRow7pjIHRo4budaSBnaWFuIMSRxINuZyBrw70sIGtow7RuZyDEkcaw4bujYyB0aGF5IMSR4buVaSAoYuG7lSBzdW5nIGhv4bq3Ywpyw7p0IGLhu5t0KSBjw6FjIG5ndXnhu4duIHbhu41uZyB2w6AgcGjhuqNpIGjhu41jIGPDoWMgaOG7jWMgcGjhuqduIHRoZW8gbOG7i2NoIHBow7JuZyBHacOhbyB24bulIMSRw6Mgc+G6r3AKeOG6v3AuPC9zcGFuPjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48ZW0+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPi0gPHN0cm9uZz5LaMO0bmcgxJHGsOG7o2MgxJHEg25nIGvDvSBjw6FjIGjhu41jIHBo4bqnbiDEkWFuZyBo4buNYyB04bqhaSBr4buzIDIgbsSDbSBo4buNYyAyMDIxLTIwMjIgPGJyIC8+PC9zdHJvbmc+PC9zcGFuPjwvZW0+PC9wPgoKPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPi0gS2jDtG5nIMSRxrDhu6NjIMSRxINuZyBrw70gcXXDoSA1IGjhu41jIHBo4bqnbiB0cm9uZyDEkeG7o3QgaOG7jWMgcmnDqm5nIG7DoHkuPC9zcGFuPjwvcD4KCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4tIFRoYW8gdMOhYyB0aOG7sWMgaGnhu4duOiB2w6BvCnBo4bqnbiDEkMSDbmcga8O9IG3DtG4gaOG7jWM6IHThuqFpIMO0IMSQxINuZyBrw70gbmd1eeG7h24gduG7jW5nIG5o4bqtcCDEkcO6bmcgTcOjIG3DtG4gaOG7jWMgY8OzIG5ndXnhu4duCnbhu41uZyBo4buNYywgc2F1IMSRw7MgYuG6pW0gbsO6dCBMxrB1Ljwvc3Bhbj48L3A+Cgo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Ryb25nIHN0eWxlPSJtc28tYmlkaS1mb250LXdlaWdodDpub3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4zLyBUSOG7nEkgR0lBTiDEkMSCTkcgS8OdOiA8L3NwYW4+PC9zdHJvbmc+PC9wPgoKPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPi0gVOG7qyA8L3NwYW4+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBsZXR0ZXItc3BhY2luZzogLTAuNHB0OyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyI+MTJoMDAgbmfDoHkgMjgvMDMgxJHhur9uIDI0aDAwIG5nw6B5IDMxLzAzLzIwMjI8L3NwYW4+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBsZXR0ZXItc3BhY2luZzogLTAuNHB0OyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPjsgPC9zcGFuPjwvcD4KCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxlbSBzdHlsZT0ibXNvLWJpZGktZm9udC1zdHlsZTpub3JtYWwiPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogMTA3JTsgbGV0dGVyLXNwYWNpbmc6IC0wLjRwdDsgZm9udC1mYW1pbHk6ICZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90OywgJnF1b3Q7c2VyaWYmcXVvdDs7IGZvbnQtc2l6ZTogMTRwdDsiIGxhbmc9IkVOLVVTIj4qIEPDsyB24bqlbiDEkeG7gSBnw6wgY2jGsGEgcsO1LCBzaW5oIHZpw6puCmxpw6puIGjhu4cgc+G7kSDEkWnhu4duIHRob+G6oWkgMDguMzY1NS45ODA4IMSR4buDIMSRxrDhu6NjIGdp4bqjaSDEkcOhcCAoOGgzMC0xMWgzMDsgMTRoLTE3aCBjw6FjCm5nw6B5IHThu6sgdGjhu6kgMiDEkeG6v24gdGjhu6kgNik8c3BhbiBzdHlsZT0ibXNvLXNwYWNlcnVuOnllcyI+Jm5ic3A7PC9zcGFuPjwvc3Bhbj48L2VtPjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj48ZW0gc3R5bGU9Im1zby1iaWRpLWZvbnQtc3R5bGU6bm9ybWFsIj48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6IDEwNyU7IGxldHRlci1zcGFjaW5nOiAtMC40cHQ7IGZvbnQtZmFtaWx5OiAmcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDssICZxdW90O3NlcmlmJnF1b3Q7OyBmb250LXNpemU6IDE0cHQ7IiBsYW5nPSJFTi1VUyI+PHNwYW4gc3R5bGU9Im1zby1zcGFjZXJ1bjp5ZXMiPiogQ2hpIHRp4bq/dCB4ZW0gdOG6oWk6IDwvc3Bhbj48L3NwYW4+PC9lbT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+PGVtIHN0eWxlPSJtc28tYmlkaS1mb250LXN0eWxlOm5vcm1hbCI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMDclOyBsZXR0ZXItc3BhY2luZzogLTAuNHB0OyBmb250LWZhbWlseTogJnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LCAmcXVvdDtzZXJpZiZxdW90OzsgZm9udC1zaXplOiAxNHB0OyIgbGFuZz0iRU4tVVMiPjxzcGFuIHN0eWxlPSJtc28tc3BhY2VydW46eWVzIj48YSBocmVmPSJodHRwczovL3BvcnRhbC5wdGl0LmVkdS52bi9naWFvdnUvdGhvbmctYmFvLXZlLXZpZWMtdG8tY2h1Yy1jYWMtbG9wLWhvYy1sYWktaG9jLWNhaS10aGllbi1kaWVtLXRoZW8tbG9wLXJpZW5nLWhvYy1reS0yLW5hbS1ob2MtMjAyMS0yMDIyLWNoby1zaW5oLXZpZW4tY2FjLWxvcC1kYWktaG9jLWNoaW5oLXF1eS8iPmh0dHBzOi8vcG9ydGFsLnB0aXQuZWR1LnZuL2dpYW92dS90aG9uZy1iYW8tdmUtdmllYy10by1jaHVjLWNhYy1sb3AtaG9jLWxhaS1ob2MtY2FpLXRoaWVuLWRpZW0tdGhlby1sb3AtcmllbmctaG9jLWt5LTItbmFtLWhvYy0yMDIxLTIwMjItY2hvLXNpbmgtdmllbi1jYWMtbG9wLWRhaS1ob2MtY2hpbmgtcXV5LzwvYT4mbmJzcDsgPC9zcGFuPjwvc3Bhbj48L2VtPjwvcD48L3NwYW4+PGRpdiBzdHlsZT0ndGV4dC1hbGlnbjpyaWdodCcgPjxkaXYgY2xhc3M9J0NoaVRpZXQnPjxpbWcgc3JjPSdBcHBfVGhlbWVzL1N0YW5kYXJkL0ltYWdlcy9hcnJvd19yLmdpZicgYWx0PScnLz4gPGEgY2xhc3M9J1RleHRUaG9uZ1RpbicgaHJlZj0nZGVmYXVsdC5hc3B4P3BhZ2U9Y2hpdGlldHRob25ndGluJmlkPTIwMyc+WGVtIENoaSBUaeG6v3Q8L2E+PC9kaXY+PC9kaXY+ZGQCAg9kFgJmDw8WBh8GCysEAR8CBaECPHRhYmxlIHdpZHRoPSczMDBweCcgc3R5bGU9J3RleHQtYWxpZ246bGVmdCc+PHRyPjx0ZCByb3dzcGFuPScyJyB3aWR0aD0nMTVweCc+PGltZyBzcmM9J0FwcF9UaGVtZXMvU3RhbmRhcmQvSW1hZ2VzL2ltYWdlcy5qcGcnIHdpZHRoPScxNXB4JyBhbHQ9JycvPjwvdGQ+PHRk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ICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0ndGl0bGUtYmFzZSc+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSd0aXRsZSc+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRhYmxlPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dHI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgd2lkdGg9JzEwcHgnID4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW1nIHNyYz0nQXBwX1RoZW1lcy9TdGFuZGFyZC9JbWFnZXMvaWNvbl8wNGIuZ2lmJyAvPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgdmFsaWduPSd0b3AnPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIExJw4pOIEvhur5UDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3RyPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvdGFibGU+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0YWJsZSBib3JkZXI9JzEnPjx0cj48dGQgYWxpZ249J2NlbnRlcic+PGEgaHJlZj1odHRwOi8vd3d3LnB0aXQuZWR1LnZuPjxpbWcgc3JjPScuL01lc3NhZ2VGaWxlLzI0Mjc5NExvZ28yLmdpZidzdHlsZT0nd2lkdGg6IDEzMHB4Jy8+PC9hPjwvYnI+PGEgaHJlZj1odHRwOi8vd3d3LnB0aXQuZWR1LnZuIHJ1bmF0PSdzZXJ2ZXInIGlkPTE+SOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCB2aeG7hW4gdGjDtG5nPC9hPjwvdGQ+PC90cj48dHI+PHRkIGFsaWduPSdjZW50ZXInPjxhIGhyZWY9aHR0cHM6Ly9wb3J0YWwucHRpdC5lZHUudm4vZ2lhb3Z1LyBydW5hdD0nc2VydmVyJyBpZD01PlRyYW5nIHRpbiBwaMOybmcgR2nDoW8gduG7pTwvYT48L3RkPjwvdHI+PC90YWJsZT4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2Rpdj5kAhYPFgIfAgUgPC90ZD4gPHRkICBzdHlsZT0nZGlzcGxheTpub25lJz5kAhkPFgIfAgUgPC90ZD4gPHRkICBzdHlsZT0nZGlzcGxheTpub25lJz5kAgkPZBYIAgEPDxYCHwIFbUNvcHlyaWdodCDCqTIwMDkgSOG7jWMgVmnhu4duIEPDtG5nIE5naOG7hyBCxrB1IENow61uaCBWaeG7hW4gVGjDtG5nLUPGoSBT4bufIE1p4buBbiBC4bqvYy4gUXXhuqNuIGzDvSBi4bufaSBkZAIDDw8WAh8CBQtUcmFuZyBDaOG7p2RkAgUPDxYCHwIFLVRoaeG6v3Qga+G6vyBi4bufaSBjdHkgUGjhuqduIG3hu4FtIEFuaCBRdcOibmRkAgcPDxYCHwIFDMSQ4bqndSBUcmFuZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYCBTpjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJGN0bDAwJE1lc3NhZ2VCb3gxJGltZ0Nsb3NlQnV0dG9uBTFjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJGN0bDAwJE1lc3NhZ2VCb3gxJGJ0bk9rz8ZxlTz1GC70YEv5Q1OVmx1FEhY=">
    </div>

    <script type="text/javascript">
        //<![CDATA[
        var theForm = document.forms['aspnetForm'];
        if (!theForm) {
            theForm = document.aspnetForm;
        }

        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }

        //]]>
    </script>


    <script src="./source-home/WebResource(1).axd"
            type="text/javascript"></script>


    <script type="text/javascript">
        //<![CDATA[

        function ShowMsgBox(type, message, height, width) {
            if (width == undefined)
                width = '340';
            if (height == undefined)
                height = '60';
            var ajaxModal = $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal');
            var headerText = $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblPopupHeader');
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblMessageDisplay').innerHTML = message;
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelMessageBox').style.width = width + 'px';
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelBody').style.height = height + 'px';
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl03').style.width = (parseInt(width) - 70) + 'px';
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblMessageDisplay').style.width = (parseInt(width) - 80) + 'px';
            var imgType = $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl02');
            if (type.toLowerCase() == 'success') {
                headerText.innerHTML = 'Successful';
                imgType.src = '/WebResource.axd?d=IHSRFx29f-8Idaqq2jLAd5yYHlDOVqVtXMrbmNLYggGAmihdtlW2Xd4KrmbyfrywBHGscCQKjICHUMgwyTQmM5yQ-3OvD66TKHY8tUHhd8YOXzKATvKL0-zE0mTbmeWm89gigMRTcjnJ17m5jVW11qVGcGz6pML0lJDgx7HiZ4WJ5A0F0&t=637692950620000000';
            } else if (type.toLowerCase() == 'error') {
                headerText.innerHTML = 'Error';
                imgType.src = '/WebResource.axd?d=tFrnX03yqL11SknJbybxFmb9G-MC_ao7_45poBm7UammrbnVmRxM83-4ulTr8gypSxgi6LrFd9ap8ayJ_SXL63jaseqUaxndaWZCfhYAhatRs_wXjgiKZ51rCI22OJCxhHHWySR-cqFRebCsapG6XiJuq_w-3HIUBq-vEO_g2yDgZIZo0&t=637692950620000000';
            } else if (type.toLowerCase() == 'warning') {
                headerText.innerHTML = 'Warning';
                imgType.src = '/WebResource.axd?d=7jTq3mgaYwIeCQfsfNiHxec9hBYcj4L3zxSEWOYY0G6REKE-nkM4GS04cQQosdbF9hohDWBrRgwFR9NMmXR_fSmfQ1vpuwNAyNW141UsGb_9DwM7Ibw44wo6C78qWI97hkWd8MPk74H3AiZOuj-lXsYN9emu8x3EIkhX8NKFzbTUJzLY0&t=637692950620000000';
            } else {
                headerText.innerHTML = 'Information';
                imgType.src = '/WebResource.axd?d=7jTq3mgaYwIeCQfsfNiHxec9hBYcj4L3zxSEWOYY0G6REKE-nkM4GS04cQQosdbF9hohDWBrRgwFR9NMmXR_fSmfQ1vpuwNAyNW141UsGb_9DwM7Ibw44wo6C78qWI97hkWd8MPk74H3AiZOuj-lXsYN9emu8x3EIkhX8NKFzbTUJzLY0&t=637692950620000000';
            }

            $find('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal').show();
            $get('ctl00_ContentPlaceHolder1_ctl00_MessageBox1_btnOk').focus();
        }

        //]]>
    </script>

    <script type="text/javascript"
            src="./source-home/prototype.ashx"></script>
    <script type="text/javascript"
            src="./source-home/core.ashx"></script>
    <script type="text/javascript"
            src="./source-home/converter.ashx"></script>
<%--    <script type="text/javascript"--%>
<%--            src="./source-home/EduSoft.Web.DefaultMaster,EduSoft.Web.ashx"></script>--%>
<%--    <script type="text/javascript"--%>
<%--            src="./source-home/EduSoft.Web.UC.Logout,EduSoft.Web.ashx"></script>--%>
<%--    <script type="text/javascript"--%>
<%--            src="./source-home/EduSoft.Web.UC.GioiThieu,EduSoft.Web.ashx"></script>--%>
<%--    <script type="text/javascript"--%>
<%--            src="./source-home/EduSoft.Web.UC.DangNhap,EduSoft.Web.ashx"></script>--%>
<%--    <script type="text/javascript"--%>
<%--            src="./source-home/EduSoft.Web.UC.Footer,EduSoft.Web.ashx"></script>--%>

    <script src="./source-home/ScriptResource.axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(1).axd"
            type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
        //]]>
    </script>

    <script src="./source-home/ScriptResource(2).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(3).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(4).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(5).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(6).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(7).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(8).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(9).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(10).axd"
            type="text/javascript"></script>
    <script src="./source-home/ScriptResource(11).axd"
            type="text/javascript"></script>
    <div>

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
    </div>
    <div align="center">
        <div class="base">

            <table>
                <tbody>
                <tr>
                    <td>


                        <div style="background-image: url(https://qldt.ptit.edu.vn/MessageFile/banner1.jpg)">
                            <table width="1000px">
                                <tbody>
                                <tr>
                                    <td height="115px" style="padding-left: 50px" valign="bottom" align="right">


                                        <script language="javascript" type="text/javascript">

                                            function changeLanguage_click(obj) {
                                                EduSoft.Web.UC.Logout.ChangeLanguage(obj, changeLanguage_callback);
                                            }

                                            function changeLanguage_callback() {
                                                var loc = window.location.href;
                                                if (loc.endsWith("/")) loc = loc.substr(0, loc.length - 1);
                                                if (loc.toLowerCase().indexOf("default.aspx") <= 0)
                                                    self.location = loc + "/default.aspx?pgtemp=x";
                                                else if (loc.toLowerCase().indexOf("?") <= 0)
                                                    self.location = loc + "?lang=x";
                                                else if (loc.endsWith("&lang=x"))
                                                    self.location = loc.replace("&lang=x", "&lang=y");
                                                else if (loc.endsWith("&lang=y"))
                                                    self.location = loc.replace("&lang=y", "&lang=x");
                                                else
                                                    self.location = loc + "&lang=x";
                                            }

                                            function selectFont_change() {
                                                var selectmenu = document.getElementById("selectFont");
                                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                                var font = chosenOption.value;
                                                EduSoft.Web.UC.Logout.ChangeFont(font, ChangeFont_callback);
                                            }

                                            function ChangeFont_callback() {
                                                //self.location=window.location;
                                            }

                                            function ConfirmChuaLuu(obj) {

                                                alert(obj);
                                                self.location = "default.aspx?page=dkmonhoc";
                                            }


                                            function signOutGoogle(desc) {
                                                var url = 'http://localhost:8080/index.jsp';
                                                document.location.href = url;
                                            }
                                        </script>

                                        <div id="ctl00_Header1_Logout1_dLog" class="logout"
                                             style="text-align: right; margin-bottom: 0px">

                                            <img src="./source-home/US.gif"
                                                 alt="English" onclick="changeLanguage_click(&#39;_us&#39;)" id="imgUS"
                                                 title="English">
                                            <img src="./source-home/VI.gif"
                                                 alt="Vietnamese" onclick="changeLanguage_click(&#39;_vi&#39;)"
                                                 id="imgVi" title="Vietnamese">
                                            <span id="ctl00_Header1_Logout1_lblNguoiDung" class="Label"
                                                  style="color:MistyRose;font-size:12px;font-weight:bold;" onload="setName()"></span>&nbsp;
                                            <a id="ctl00_Header1_Logout1_lbtnChangePass"
                                               href="http://localhost:8080/ttcn.jsp"
                                               style="color:MistyRose;font-size:12px;font-weight:bold;font-family: &#39;Tahoma&#39;, Times, serif">Thay
                                                đổi mật khẩu</a>
                                            <span id="ctl00_Header1_Logout1_lblXiet2" class="Label"
                                                  style="color:MistyRose;"> | </span>
                                            <a id="ctl00_Header1_Logout1_lbtnLogOut"
                                               href="http://localhost:8080/index.jsp"
                                               onclick="clearSession()"
                                               style="color:MistyRose;font-size:10pt;font-weight:bold;font-family: &#39;Tahoma&#39;, Times, serif">Thoát</a>
                                            &nbsp;<select id="selectFont"
                                                          style="font-size: 11px; width: 100px; color: #000080;"
                                                          onchange="selectFont_change()">
                                            <option value="uni">-------Font-------</option>
                                            <option value="uni" selected="">Font Unicode</option>
                                            <option value="abc">Font ABC</option>
                                            <option value="vni">Font Vni</option>
                                            <option value="not">Text không
                                                dấu
                                            </option>
                                        </select>
                                        </div>

                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>


                        <style type="text/css">
                            .styleApplication {
                                font-size: 26;
                                font-weight: bold;
                            }

                            @font-face {
                                font-family: 'myriadpro';
                                src: url('js/myriadpro-bold.otf');
                            }

                            .menufontdhxd {
                                font-family: 'myriadpro';
                                font-size: 14px;
                            }
                        </style>

                        <div class="left-menu">
                            <div class="right-menu">

                                <div class="main-menu" style="height: 110px">

                                    <div id="ctl00_menu_pnlGioithieu" class="over-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="/trangchu.jsp">
                                                <span id="ctl00_menu_lblTrangChu" class="Label">TRANG CHỦ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_pnDangKyMonHoc" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="/dkmh.jsp">
                                                <span id="ctl00_menu_lblDangKyMonHoc"
                                                      class="Label">ĐĂNG KÝ MÔN HỌC</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_thoikhoabieu" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="/tkb.jsp">
                                                <span id="ctl00_menu_lblThoiKhoaBieu" class="Label">XEM TKB</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_xemlichthi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=xemlichthi">
                                                <span id="ctl00_menu_lblXemLichThi"
                                                      class="Label">XEM LỊCH THI</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>

                                    <div id="ctl00_menu_xemlichthilai" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=xemlichthilai">
                                                <span id="ctl00_menu_lblXemLichThiLai"
                                                      class="Label">XEM LỊCH THI LẠI</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_xemhocphi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=xemhocphi">
                                                <span id="ctl00_menu_lblXemHocPhi" class="Label">XEM HỌC PHÍ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_xemdiemthi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=xemdiemthi">
                                                <span id="ctl00_menu_lblXemDiem" class="Label">XEM ĐIỂM</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_pnlXemCTDTKhoi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=ctdtkhoisv">
                                                <span id="ctl00_menu_lblXemCTDTKhoiSV" class="Label">XEM CTĐT</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>

                                    <div id="ctl00_menu_pnlXemMonTienQuyet" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=xemmontienquyet">
                                                <span id="ctl00_menu_lblXemMonTQ" class="Label">XEM MÔN TQ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_thaydoittcn" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="/ttcn.jsp">
                                                <span id="ctl00_menu_lblThayDoiTTCN" class="Label">SỬA TT CÁ NHÂN</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>

                                    <div id="ctl00_menu_ykiensinhvien" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=ykiensinhvien">
                                                <span id="ctl00_menu_lblykiensinhvien"
                                                      class="Label">GÓP Ý KIẾN</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_panLiLich" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=sualilich">
                                                <span id="ctl00_menu_lblSuaLiLich" class="Label">SỬA LÝ LỊCH</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_pnlHDSD" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/HDDKMH.htm">
                                                <span id="ctl00_menu_lblHuongDanDangKy"
                                                      class="Label">HƯỚNG DẪN ĐKMH</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </td>
                </tr>
                <tr>
                    <td height="500px" valign="top">

<span id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1"><a id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lbTarget"
                                                          href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$ctl00$MessageBox1$lbTarget&#39;,&#39;&#39;)"></a><div
        id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelMessageBox" class="confirmBox"
        style="display: none; position: fixed; z-index: 100001;">
	<div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelHeader" class="header"
         style="background: url(./source-home/Images/header.png);repeat-x 0px -200px;">
		<div class="msg">
			<span id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblPopupHeader" class="Label"
                  style="color:White;font-family:Arial Black;"></span>
		</div><input type="image" name="ctl00$ContentPlaceHolder1$ctl00$MessageBox1$imgCloseButton"
                     id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_imgCloseButton" class="close"
                     src="./source-home/WebResource(2).axd"
                     style="border-width:0px;">
	</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelBody" class="body"
               style="background-color:#E1E5F0;">
		<div class="body-left" style="background-color:#E1E5F0;">
			<img id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl02"
                 src="https://qldt.ptit.edu.vn/default.aspx?page=gioithieu" style="border-width:0px;">
		</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl03" class="body-right"
                   style="background-color:#E1E5F0;">
			<span id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblMessageDisplay" class="Label"
                  style="font-family:Tahoma;color:#263F75;"></span>
		</div>
	</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelFooter" class="footer"
               style="background-color:#E1E5F0;">
		<div class="right" style="background-color:#E1E5F0;">
			<input type="image" name="ctl00$ContentPlaceHolder1$ctl00$MessageBox1$btnOk"
                   id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_btnOk" class="button_small_active"
                   src="./source-home/WebResource(3).axd"
                   style="height:22px;width:70px;border-width:0px;">
		</div>
	</div>
</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal_backgroundElement"
           class="msgbox_messagemodalbackground"
           style="display: none; position: fixed; left: 0px; top: 0px; z-index: 10000;"></div></span>


                        <style type="text/css">
                            #dhtmltooltip {
                                position: absolute;
                                width: 500px;
                                border: 1px solid black;
                                padding: 2px;
                                visibility: hidden;
                                z-index: 100;
                                filter: progid:DXImageTransform.Microsoft.Shadow(color=gray, direction=135);
                            }
                        </style>
                        <div id="dhtmltooltip"></div>

                        <script type="text/javascript"
                                src="source-home/sdk.js"></script>

                        <script type="text/javascript">

                            var offsetxpoint = -60 //Customize x offset of tooltip
                            var offsetypoint = 20 //Customize y offset of tooltip
                            var ie = document.all
                            var ns6 = document.getElementById && !document.all
                            var enabletip = false
                            if (ie || ns6)
                                var tipobj = document.all ? document.all["dhtmltooltip"] : document.getElementById ? document.getElementById("dhtmltooltip") : ""

                            function ietruebody() {
                                return (document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body
                            }

                            function ddrivetip(src, thecolor, thewidth) {
                                if (ns6 || ie) {
                                    if (typeof thewidth != "undefined") tipobj.style.width = thewidth + "px"
                                    if (typeof thecolor != "undefined" && thecolor != "") tipobj.style.backgroundColor = thecolor
                                    tipobj.innerHTML = src;
                                    enabletip = true
                                    return false
                                }
                            }

                            function positiontip(e) {
                                if (enabletip) {
                                    var curX = (ns6) ? e.pageX : event.clientX + ietruebody().scrollLeft;
                                    var curY = (ns6) ? e.pageY : event.clientY + ietruebody().scrollTop;
                                    //Find out how close the mouse is to the corner of the window
                                    var rightedge = ie && !window.opera ? ietruebody().clientWidth - event.clientX - offsetxpoint : window.innerWidth - e.clientX - offsetxpoint - 20
                                    var bottomedge = ie && !window.opera ? ietruebody().clientHeight - event.clientY - offsetypoint : window.innerHeight - e.clientY - offsetypoint - 20

                                    var leftedge = (offsetxpoint < 0) ? offsetxpoint * (-1) : -1000

                                    //if the horizontal distance isn't enough to accomodate the width of the context menu
                                    if (rightedge < tipobj.offsetWidth)
                                        //move the horizontal position of the menu to the left by it's width
                                        tipobj.style.left = ie ? ietruebody().scrollLeft + event.clientX - tipobj.offsetWidth + "px" : window.pageXOffset + e.clientX - tipobj.offsetWidth + "px"
                                    else if (curX < leftedge)
                                        tipobj.style.left = "5px"
                                    else
                                        //position the horizontal position of the menu where the mouse is positioned
                                        tipobj.style.left = curX + offsetxpoint + "px"

                                    //same concept with the vertical position
                                    if (bottomedge < tipobj.offsetHeight)
                                        tipobj.style.top = ie ? ietruebody().scrollTop + event.clientY - tipobj.offsetHeight - offsetypoint + "px" : window.pageYOffset + e.clientY - tipobj.offsetHeight - offsetypoint + "px"
                                    else
                                        tipobj.style.top = curY + offsetypoint + "px"
                                    tipobj.style.visibility = "visible"
                                }
                            }

                            function hideddrivetip() {
                                if (ns6 || ie) {
                                    enabletip = false
                                    tipobj.style.visibility = "hidden"
                                    tipobj.style.left = "-1000px"
                                    tipobj.style.backgroundColor = ''
                                    tipobj.style.width = ''
                                }
                            }

                            document.onmousemove = positiontip;
                            document.onblur = function (ev) {

                            }
                        </script>

                        <script type="text/javascript">
                            // initialize plugins
                            $(function () {
                                var tm = setTimeout(function () {
                                    // EduSoft.Web.UC.GioiThieu.GetHitCounter(function (ret) {
                                    //     if (ret?.value) {
                                    //         var st = "00000000" + ret.value;
                                    //         st = st?.substring(st.length - 9);
                                    //         var ltCount = document.getElementById("ltHitCounter");
                                    //         if (!ltCount) return;
                                    //         var tb = '<table cellSpacing="1" cellPadding="1" border="1" borderWidth="" borderColor="White" style="color:White;background-color:Black;border-color:White;"><TR>';
                                    //         for (i = 0; i < st.length; i++) {
                                    //             tb += '<TD align="middle">' + st.substring(i, i + 1) + '</TD>';
                                    //         }
                                    //         tb += '</TR></table>';
                                    //         ltCount.innerHTML = tb;
                                    //     }
                                    // });
                                }, 1000);

                                try {
                                    $("ul.sf-menu").supersubs({
                                        minWidth: 13,
                                        maxWidth: 60,
                                        extraWidth: 5,
                                    }).superfish();
                                } catch (ex) {
                                }
                            });
                        </script>


                        <div class="navigate-base">
                            <table>


                                <tbody>
                                <tr>
                                    <td align="left">


                                        <script src="source-home/jquery-2.2.3.min.js"></script>
                                        <script src="source-home/jsrsasign-latest-all-min.js"></script>
                                        <script src="source-home/graph-js-sdk-web.js"></script>
                                        <script src="source-home/Login365_1.js"></script>

                                        <script language="javascript" type="text/javascript">
                                            function MessUpdate(obj) {
                                                alert(obj);
                                            }

                                            function ConfirmXemDiem(obj) {
                                                if (confirm(obj)) {
                                                    self.location = "default.aspx?page=xemdiemthi";
                                                }
                                            }
                                        </script>

                                        <script type="text/javascript">
                                            //<![CDATA[
                                            Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ctl00$ucDangNhap$ScriptManager1', document.getElementById('aspnetForm'));
                                            Sys.WebForms.PageRequestManager.getInstance()._updateControls([], [], [], 90);
                                            //]]>
                                        </script>


                                        <script src="source-home/Login365.js"></script>
                                        <script language="javascript" type="text/javascript">

                                            //Đăng ký sự kiện cho button Login365
                                            $('#btnLogin365').attr('href', buildAuthUrl());

                                        </script>

                                    </td>
                                </tr>

                                <tr valign="top">
                                    <td>
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td style="display:none" width="0%">

                                                </td>
                                                <td style="display:none">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td>
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri0"
                                                                                  class="Label">GIỚI THIỆU CHUNG</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>


                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri0"
                                                               class="classTable" border="0" style="width:100%;">
                                                            <tbody>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>


                                                <td style="display:none">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td>
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri1"
                                                                                  class="Label">THÔNG TIN HỆ VỪA LÀM VỪA HỌC</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri1"
                                                               class="classTable" border="0" style="width:100%;">
                                                            <tbody>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <div id="ctl00_ContentPlaceHolder1_ctl00_pnlYahoo">

                                        </div>
                                        <div id="ctl00_ContentPlaceHolder1_ctl00_pnlWebLink">

                                        </div>
                                        <table width="100%">
                                            <tbody>
                                            <tr>
                                                <td width="14%" valign="top">
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="navigate-base">
                                                                    <table cellpadding="0" cellspacing="0">
                                                                        <tbody>
                                                                        <tr>
                                                                            <td align="left">

                                                                            </td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>

                                                                    <div class="title-base">
                                                                        <div class="title">
                                                                            <table>

                                                                                <tbody>
                                                                                <tr>

                                                                                    <td width="10px">
                                                                                        <img src="./source-home/icon_04b.gif">
                                                                                    </td>
                                                                                    <td>
                                                                                        <span id="ctl00_ContentPlaceHolder1_ctl00_lblLeft"
                                                                                              class="Label">HỔ TRỢ ONLINE</span>
                                                                                    </td>

                                                                                </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>


                                                                </div>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>

                                                                <div id="ltHitCounter">
                                                                    <table cellspacing="1" cellpadding="1" border="1"
                                                                           borderwidth="" bordercolor="White"
                                                                           style="color:White;background-color:Black;border-color:White;">
                                                                        <tbody>
                                                                        <tr>
                                                                            <td align="middle">0</td>
                                                                            <td align="middle">2</td>
                                                                            <td align="middle">2</td>
                                                                            <td align="middle">4</td>
                                                                            <td align="middle">8</td>
                                                                            <td align="middle">6</td>
                                                                            <td align="middle">8</td>
                                                                            <td align="middle">6</td>
                                                                            <td align="middle">3</td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblSumGust"
                                                                      class="Label">Số đang truy cập: 16503</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblSumInDay"
                                                                      class="Label"></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblSumLogon"
                                                                      class="Label">Số đã đăng nhập:84</span>/1600
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>

                                                            </td>
                                                        </tr>

                                                        </tbody>
                                                    </table>
                                                </td>


                                                <td width="1px">
                                                </td>
                                                <td width="70%" valign="top">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td>
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri2"
                                                                                  class="Label">THÔNG TIN CHUNG</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri2"
                                                               class="classTable" border="0" style="text-align: left">
                                                            <tbody>
                                                            <tr>
                                                                <td align="left" style="color:Blue;"><a
                                                                        class="TextTitle"
                                                                        href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=203">&nbsp;<strong
                                                                        style="mso-bidi-font-weight:normal"><span
                                                                        style="text-decoration: underline;"><span
                                                                        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                                                        lang="EN-US">Ngày 23/03:</span></span><span
                                                                        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                                                        lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span><span
                                                                        style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;</span>ĐĂNG
KÝ HỌC LỚP RIÊNG KỲ 2 (2021 - 2022)</span></strong><img style=" border:0"
                                                        src="./source-home/new.gif"
                                                        width="30px" height="30px" alt="Tin tức mới cập nhật"></a><span
                                                                        class="NgayTitle"> (23/03/2022)</span></td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="TextThongTin"
                                                                          style="text-align:left"><strong
                                                                        style="mso-bidi-font-weight:normal"><span
                                                                        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                                                        lang="EN-US">1/ ĐỐI TƯỢNG: </span></strong>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Sinh viên các ngành
khối Kinh tế và Truyền thông ĐPT: khóa 2018 trở về trước;</span></p>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Sinh viên các
ngành khối Kỹ thuật: khóa 2017 trở về trước</span></p>

<p class="MsoNormal"><em style="mso-bidi-font-style:normal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">* Sinh viên phải hoàn thành nộp học phí đến hết Học kỳ
1 năm học 2021-2022 trước ngày 25/03/3022 (liên hệ phòng Tài chính Kế toán nếu
chưa hoàn thành nộp học phí)</span></em></p>

<p class="MsoNormal"><strong style="mso-bidi-font-weight:normal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">2/ NỘI DUNG ĐĂNG KÝ: </span></strong></p>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Sinh viên phải
đăng ký đúng <strong style="mso-bidi-font-weight:normal">Mã học phần</strong> có nguyện vọng
học (chú ý: đã đăng ký nguyện vọng tức là xác nhận sẽ tham gia hoc); Kết thúc thời gian đăng ký, không được thay đổi (bổ sung hoặc
rút bớt) các nguyện vọng và phải học các học phần theo lịch phòng Giáo vụ đã sắp
xếp.</span></p><p class="MsoNormal"><em><span style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                              lang="EN-US">- <strong>Không được đăng ký các học phần đang học tại kỳ 2 năm học 2021-2022 <br></strong></span></em></p>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Không được đăng ký quá 5 học phần trong đợt học riêng này.</span></p>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Thao tác thực hiện: vào
phần Đăng ký môn học: tại ô Đăng ký nguyện vọng nhập đúng Mã môn học có nguyện
vọng học, sau đó bấm nút Lưu.</span></p>

<p class="MsoNormal"><strong style="mso-bidi-font-weight:normal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">3/ THỜI GIAN ĐĂNG KÝ: </span></strong></p>

<p class="MsoNormal"><span
        style="line-height: 107%; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">- Từ </span><span
        style="line-height: 107%; letter-spacing: -0.4pt; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;">12h00 ngày 28/03 đến 24h00 ngày 31/03/2022</span><span
        style="line-height: 107%; letter-spacing: -0.4pt; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">; </span></p>

<p class="MsoNormal"><em style="mso-bidi-font-style:normal"><span
        style="line-height: 107%; letter-spacing: -0.4pt; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
        lang="EN-US">* Có vấn đề gì chưa rõ, sinh viên
liên hệ số điện thoại 08.3655.9808 để được giải đáp (8h30-11h30; 14h-17h các
ngày từ thứ 2 đến thứ 6)<span style="mso-spacerun:yes">&nbsp;</span></span></em></p><p class="MsoNormal"><em
                                                                            style="mso-bidi-font-style:normal"><span
                                                                            style="line-height: 107%; letter-spacing: -0.4pt; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                                                            lang="EN-US"><span style="mso-spacerun:yes">* Chi tiết xem tại: </span></span></em></p><p
                                                                            class="MsoNormal"><em
                                                                            style="mso-bidi-font-style:normal"><span
                                                                            style="line-height: 107%; letter-spacing: -0.4pt; font-family: &quot;Times New Roman&quot;, &quot;serif&quot;; font-size: 14pt;"
                                                                            lang="EN-US"><span style="mso-spacerun:yes"><a
                                                                            href="https://portal.ptit.edu.vn/giaovu/thong-bao-ve-viec-to-chuc-cac-lop-hoc-lai-hoc-cai-thien-diem-theo-lop-rieng-hoc-ky-2-nam-hoc-2021-2022-cho-sinh-vien-cac-lop-dai-hoc-chinh-quy/">https://portal.ptit.edu.vn/giaovu/thong-bao-ve-viec-to-chuc-cac-lop-hoc-lai-hoc-cai-thien-diem-theo-lop-rieng-hoc-ky-2-nam-hoc-2021-2022-cho-sinh-vien-cac-lop-dai-hoc-chinh-quy/</a>&nbsp; </span></span></em></p></span>
                                                                    <div style="text-align:right">
                                                                        <div class="ChiTiet"><img
                                                                                src="./source-home/arrow_r.gif"
                                                                                alt=""> <a class="TextThongTin"
                                                                                           href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=203">Xem
                                                                            Chi Tiết</a></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <table width="300px" style="text-align:left">
                                                                        <tbody>
                                                                        <tr>
                                                                            <td rowspan="2" width="15px"><img
                                                                                    src="./source-home/images.jpg"
                                                                                    width="15px" alt=""></td>
                                                                            <td align="left" width="280px">Bản tin cũ
                                                                            </td>
                                                                            <td align="left"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" class="kecham"></td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=202">
                                                                    <h1 class="title"><span
                                                                            style="font-family: &quot;Times New Roman&quot;; font-size: 18pt;">Thông báo V/v: Tổ chức đăng ký môn học kỳ 2, năm học 2021-2022</span>
                                                                    </h1>... (<span class="NgayTitle">17/12/2021</span>)</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=201">
                                                                    <div class="kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q">
                                                                        <div style="text-align: start;"><span
                                                                                style="font-size: 12pt;">Thông báo: V/v tổ chức kế hoạch thi kỳ thi phụ học kỳ 2 và học kỳ phụ (kỳ hè) năm học 2020-2021</span>
                                                                        </div>
                                                                    </div>
                                                                    ... (<span class="NgayTitle">05/11/2021</span>)</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=200"><span
                                                                        style="font-size: 12pt;">Thông báo V/v: Đăng ký chuyên ngành đào tạo các lớp khóa D18 ngành Công nghệ kỹ thuật Điện, điện tử</span>...
                                                                    (<span class="NgayTitle">18/10/2021</span>)</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=199"><span
                                                                        style="font-size: 12pt;">Thông báo: V/v Đăng ký xét tốt nghiệp tháng 10 năm 2021</span>...
                                                                    (<span class="NgayTitle">24/09/2021</span>)</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=198"><span
                                                                        style="font-size: 12pt;"><span><span
                                                                        lang="EN-US">Thông báo: </span></span><span><span
                                                                        style="line-height: 117%;" lang="EN-US">V/v Tổ chức đăng ký học ghép cùng khóa 2021 - học kỳ 1
năm học 2021-2022 </span></span></span>
                                                                    <div id="gtx-trans"
                                                                         style="position: absolute; left: 274px; top: 19px;">
                                                                        <div class="gtx-trans-icon"></div>
                                                                    </div>
                                                                    ... (<span class="NgayTitle">20/09/2021</span>)</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=197"></a>
                                                                    <p class="MsoNormal"><a class="TextTitle"
                                                                                            href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=197"><strong><span
                                                                            style="line-height: 107%; background: white none repeat scroll 0% 0%; font-weight: normal; font-size: 12pt; color: black;">Thông
báo: v/v tổ chức đăng ký học kỳ 1 năm học 2021 - 2022</span></strong>... (<span class="NgayTitle">27/07/2021</span>)</a>
                                                                    </p></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=196"><span
                                                                        style="font-size: 12pt;">

</span></a>
                                                                    <p class="MsoNormal"><a class="TextTitle"
                                                                                            href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=196"><span
                                                                            style="font-size: 12pt;">Thông báo: V/v Đăng ký bảo vệ khóa luận trực tuyến khóa 2017
khối ngành kinh tế, Truyền thông ĐPT</span>... (<span class="NgayTitle">20/07/2021</span>)</a></p></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=195">
                                                                    <div class="_2bnn4NUZa-NanNIO4GItP0 allowTextSelection"
                                                                         title="Thông báo: V/v Điều chỉnh lịch thực hành môn Vật lý 1 và thí nghiệm; Bna hành lịch thi kỳ thi phụ học kỳ 1 năm học 2020-2021 khóa 2020"><span
                                                                            class="_15gqBTUta5ZVWkGNTkvx90"><span
                                                                            style="font-size: 12pt;">Thông
 báo: Lịch thi kỳ thi phụ học kỳ 1 năm học 2020-2021 khóa 2020</span></span></div>
                                                                    ... (<span class="NgayTitle">04/07/2021</span>)</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><img
                                                                        src="./source-home/Bull9.gif"
                                                                        alt=""><a class="TextTitle"
                                                                                  href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=194"></a>
                                                                    <p class="MsoNormal"><a class="TextTitle"
                                                                                            href="https://qldt.ptit.edu.vn/default.aspx?page=chitietthongtin&amp;id=194"><span
                                                                            style="line-height: 107%; background: white; font-size: 12pt; color: black;">Thông báo:&nbsp; về việc hỗ trợ điều chỉnh đăng
ký học kỳ phụ 2020-2021 (hè 2021)</span>... (<span class="NgayTitle">15/06/2021</span>)</a></p></td>
                                                            </tr>
                                                            <tr>

                                                            </tr>
                                                            <tr>
                                                                <td align="right"><span class="tatcabantin"><a
                                                                        href="https://qldt.ptit.edu.vn/default.aspx?page=danhsachthongtin&amp;type=0">Xem tất cả</a></span>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                                <td width="1px">
                                                </td>
                                                <td style="display:none">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td valign="top">
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri3"
                                                                                  class="Label">TIN TỨC &amp; SỰ KIỆN</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri3"
                                                               class="classTable" border="0">
                                                            <tbody>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>

                                                <td width="1px">
                                                </td>
                                                <td width="14%" valign="top">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td valign="top">
                                                                            LIÊN KẾT
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <table border="1">
                                                            <tbody>
                                                            <tr>
                                                                <td align="center"><a
                                                                        href="http://www.ptit.edu.vn/"><img
                                                                        src="./source-home/242794Logo2.gif"
                                                                        style="width: 130px"></a><br><a
                                                                        href="http://www.ptit.edu.vn/" runat="server"
                                                                        id="1">Học viện Công nghệ Bưu chính viễn
                                                                    thông</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"><a
                                                                        href="https://portal.ptit.edu.vn/giaovu/"
                                                                        runat="server" id="5">Trang tin phòng Giáo
                                                                    vụ</a></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>


                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <table width="100%">
                                            <tbody>
                                            <tr>
                                                <td width="2px">
                                                </td>
                                                <td style="display:none">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td>
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri4"
                                                                                  class="Label"> THONG BAO KHAC 1</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri4"
                                                               class="classTable" border="0" style="width:100%;">
                                                            <tbody>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>

                                                <td width="1px">
                                                </td>
                                                <td style="display:none">
                                                    <div class="navigate-base">
                                                        <div class="title-base">
                                                            <div class="title">
                                                                <table>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td width="10px">
                                                                            <img src="./source-home/icon_04b.gif">
                                                                        </td>
                                                                        <td>
                                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblViTri5"
                                                                                  class="Label">THONG BAO KHAC 2</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <table id="ctl00_ContentPlaceHolder1_ctl00_tbViTri5"
                                                               class="classTable" border="0" style="width:100%;">
                                                            <tbody>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>


                                </tbody>
                            </table>
                        </div>

                        <div id="ctl00_ContentPlaceHolder1_ctl00_pnlZalo">

                            <div class="zalo-chat-widget" data-oaid="" data-welcome-message="" data-autopopup="0"
                                 data-width="300" data-height="300">
                            </div>


                        </div>


                    </td>
                </tr>
                <tr>
                    <td>


                        <style type="text/css">

                            .style3 {
                                width: 70px;
                            }

                            .style4 {
                                width: 129px;
                            }

                            .style5 {
                                width: 1019px;
                            }

                        </style>

                        <div class="footer">
                            <table width="100%">
                                <tbody>
                                <tr>
                                    <td align="left" class="style5">
                                        <img src="./source-home/icon_11c.gif"
                                             alt="">
                                        <span class="LogoFooter"><span id="ctl00_Footer1_lblCompany" class="Label">Copyright ©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi </span></span>
                                    </td>

                                    <td valign="top" align="left" class="style4">
                                        <img src="./source-home/iconHome.png"
                                             alt="" align="right">
                                    </td>
                                    <td align="left" class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx"><span
                                                id="ctl00_Footer1_lbltrangchu" class="Label">Trang Chủ</span></a>
                                    </td>


                                </tr>
                                <tr>
                                    <td class="style5">
                                        <img src="./source-home/icon_11c.gif"
                                             alt="">
                                        <a href="https://aqtech.vn/" target="_blank"><span
                                                id="ctl00_Footer1_lblCopyRight" class="Label">Thiết kế bởi cty Phần mềm Anh Quân</span></a>


                                    </td>
                                    <td align="right" valign="top" class="style4">
                                        <img src="./source-home/topTen.gif"
                                             width="15px" alt="">
                                    </td>
                                    <td class="style3">
                                        <a href="https://qldt.ptit.edu.vn/default.aspx?page=gioithieu#Top"
                                           title="Go to top"
                                           style="text-decoration: none; font-family:Tahoma;font-size:8pt">
                                            <span id="ctl00_Footer1_lbltop" class="Label">Đầu Trang</span>
                                        </a>
                                    </td>
                                    <td align="right"><a
                                            href="https://qldt.ptit.edu.vn/Default.aspx?page=thongtinsp"><span
                                            id="ctl00_Footer1_lblAbout" class="Label">About</span></a></td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>


    <script type="text/javascript">
        //<![CDATA[
        var ctl00_ContentPlaceHolder1_ctl00_leftMenu_Data = new Object();
        ctl00_ContentPlaceHolder1_ctl00_leftMenu_Data.disappearAfter = 500;
        ctl00_ContentPlaceHolder1_ctl00_leftMenu_Data.horizontalOffset = 0;
        ctl00_ContentPlaceHolder1_ctl00_leftMenu_Data.verticalOffset = 0;
        ctl00_ContentPlaceHolder1_ctl00_leftMenu_Data.iframeUrl = '/WebResource.axd?d=-mHn_5QspiPJ2gNCKVjteggeC9sRL1zArqZBs2YXHs5beYIs8M6M4ocJpZCZr9s4DOdiaSITE1I7KNPZC8f2wqdDh141&t=636041026940000000';
        Sys.Application.add_init(function () {
            $create(AjaxControlToolkit.ModalPopupBehavior, {
                "BackgroundCssClass": "msgbox_messagemodalbackground",
                "CancelControlID": "ctl00_ContentPlaceHolder1_ctl00_MessageBox1_imgCloseButton",
                "OkControlID": "ctl00_ContentPlaceHolder1_ctl00_MessageBox1_btnOk",
                "PopupControlID": "ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelMessageBox",
                "dynamicServicePath": "/default.aspx",
                "id": "ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal"
            }, null, null, $get("ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lbTarget"));
        });
        Sys.Application.initialize();
        //]]>
    </script>
</form>
<div id="app" class="zs"></div>


<%--<img src="./source-home/arrowdown.gif"--%>
<%--     id="arrowhead">--%>
</body>
</html>
