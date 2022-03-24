<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 3/24/2022
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0051)https://qldt.ptit.edu.vn/Default.aspx?page=dkmonhoc -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script language="javascript" type="text/javascript">

        var gv = 'False';
    </script>
    <script type="text/javascript" src="./source-dkmh/platform.js.tải xuống" async="" defer=""
            gapi_processed="true"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta id="ctl00_metaGoogle" name="google-signin-client_id">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://qldt.ptit.edu.vn/Images/Edusoft.gif">
    <script src="./source-dkmh/jquery-2.2.1.js.tải xuống" type="text/javascript"></script>
    <script src="./source-dkmh/dialog.js.tải xuống" type="text/javascript"></script>
    <script src="./source-dkmh/checkdate.js.tải xuống" type="text/javascript"></script>
    <script src="./source-dkmh/balloontip.js.tải xuống" type="text/javascript"></script>
    <link href="./source-dkmh/balloontip.css" rel="stylesheet" type="text/css">
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

    <link href="./source-dkmh/Standard.css" type="text/css" rel="stylesheet">
    <link href="./source-dkmh/StyleSheet.css" type="text/css" rel="stylesheet">
</head>

<body background="./source-dkmh/background.png" onload="ShowMess()">
<form name="aspnetForm" method="post" action="https://qldt.ptit.edu.vn/Default.aspx?page=dkmonhoc" id="aspnetForm"
      enctype="multipart/form-data">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="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bEcxREsnIHJ1bmF0PSdzZXJ2ZXInPiAgPC9hc3A6TGFiZWw+ICA8L3RkPjx0ZCB3aWR0aD0nNjBweCcgPjxhc3A6TGFiZWwgSUQ9J2xibEcxTU1IJyBydW5hdD0nc2VydmVyJz5Nw6MgTUg8L2FzcDpMYWJlbD48L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCB3aWR0aD0nMTUweCcgPjxhc3A6TGFiZWwgSUQ9J2xibEcxVE1IJyBydW5hdD0nc2VydmVyJz5Uw6puIG3DtG4gaOG7jWMgPC9hc3A6TGFiZWw+PC90ZD48dGQgd2lkdGg9JzM1cHgnPjxhc3A6TGFiZWwgSUQ9J2xibEcxTk1NJyBydW5hdD0nc2VydmVyJz5OTUg8L2FzcDpMYWJlbD48L3RkPjx0ZCB3aWR0aD0nMzBweCc+PGFzcDpMYWJlbCBJRD0nbGJsRzFUVEgnIHJ1bmF0PSdzZXJ2ZXInPlRUSDwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHdpZHRoPScyNXB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVNUQycgcnVuYXQ9J3NlcnZlcic+U1RDPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgd2lkdGg9JzM1cHgnPjxhc3A6TGFiZWwgSUQ9J2xibEcxU1RDSFAnIHJ1bmF0PSdzZXJ2ZXInPlNUQ0hQPC9hc3A6TGFiZWw+PC90ZD48dGQgd2lkdGg9Jzc3cHgnPjxhc3A6TGFiZWwgSUQ9J2xibEcxTWFMb3AnIHJ1bmF0PSdzZXJ2ZXInPk3DoyBs4bubcDwvYXNwOkxhYmVsPjwvdGQ+PHRkIHdpZHRoPScyOHB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVNDUCcgcnVuYXQ9J3NlcnZlcic+U8SpIHPhu5E8L2FzcDpMYWJlbD48L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgd2lkdGg9JzI4cHgnPjxhc3A6TGFiZWwgSUQ9J2xibEcxQ0wnIHJ1bmF0PSdzZXJ2ZXInPkNMPC9hc3A6TGFiZWw+PC90ZD48dGQgd2lkdGg9JzIwcHgnPjxhc3A6TGFiZWwgSUQ9J2xibEcxVEgnIHJ1bmF0PSdzZXJ2ZXInPlRIPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHdpZHRoPSczNXB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVRodScgcnVuYXQ9J3NlcnZlcic+VGjhu6kgPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHdpZHRoPSc0MHB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVRCRCcgcnVuYXQ9J3NlcnZlcic+VGnhur90IEJEPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHdpZHRoPSczMHB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVNUJyBydW5hdD0nc2VydmVyJz5TVDwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCB3aWR0aD0nNjBweCc+PGFzcDpMYWJlbCBJRD0nbGJsRzFQaG9uZycgcnVuYXQ9J3NlcnZlcic+UGjDsm5nPC9hc3A6TGFiZWw+IDwvdGQ+PHRkIHdpZHRoPSc3MHB4Jz48YXNwOkxhYmVsIElEPSdsYmxHMVRlbkdWJyBydW5hdD0nc2VydmVyJz5HaeG6o25nIHZpw6puPC9hc3A6TGFiZWw+IDwvdGQ+IDx0ZD48YXNwOkxhYmVsIElEPSdsYmxHMVR1YW4nIHJ1bmF0PSdzZXJ2ZXInPlR14bqnbjwvYXNwOkxhYmVsPjwvdGQ+PC90cj48L3RhYmxlPmQCDQ8WAh8CBTMgIDxkaXYgaWQ9ImRpdlRESyI+PC9kaXY+DQogICAgICAgICAgICAgICAgICAgICAgICBkAg8PZBYMAgEPDxYCHwIFDlhFTSDEkMSCTkcgS8OdZGQCAw8WAh8CBbMXPHRhYmxlIGNlbGxzcGFjaW5nPScwJyBjZWxscGFkZGluZz0nMCcgIGNsYXNzPSd0aXRsZS10YWJsZScgPjx0cj48dGQgY29sc3Bhbj0nMTEnIGFsaWduPSdyaWdodCcgc3R5bGU9J2JhY2tncm91bmQtY29sb3I6IzY2OTlGRjtoZWlnaHQ6NXB4Oyc+PGlucHV0IHR5cGU9J2J1dHRvbicgaWQ9J2J0bkx1dScgZGlzYWJsZWQgdmFsdWU9J0zGsHUgxJDEg25nIEvDvScgb25jbGljaz0nTHV1RGFuaFNhY2hEYW5nS3koKScgLz4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgYWxpZ249J2NlbnRlcicgc3R5bGU9J2JhY2tncm91bmQtY29sb3I6IzY2OTlGRjtoZWlnaHQ6NXB4Oyc+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8aW5wdXQgdHlwZT0nYnV0dG9uJyBkaXNhYmxlZCBpZD0nYm50WG9hQ2hvbicgdmFsdWU9J1jDs2EnIG9uY2xpY2s9J3hvYVR1RGFuaFNhY2godGhpcy5mb3JtLmNoa194b2EsIGZhbHNlKScgLz4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvdHI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ciBhbGlnbj0nY2VudGVyJz4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkICBzdHlsZT0nd2lkdGg6IDMwcHg7Jz48YXNwOkxhYmVsIElEPSdsYmxHMlNUVCcgcnVuYXQ9J3NlcnZlcic+U1RUPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkICBzdHlsZT0nZGlzcGxheTpub25lJz48YXNwOkxhYmVsIElEPSdsYmxHMk1hREsnIHJ1bmF0PSdzZXJ2ZXInPlJlZ2lzIElEIDwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCAgc3R5bGU9J3dpZHRoOiA2MHB4Oyc+PGFzcDpMYWJlbCBJRD0nbGJsRzJNTUgnIHJ1bmF0PSdzZXJ2ZXInPk3DoyBNSCA8L2FzcDpMYWJlbD48L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHN0eWxlPSd3aWR0aDogMTgwcHg7Jz48YXNwOkxhYmVsIElEPSdsYmxHMlRNSCcgcnVuYXQ9J3NlcnZlcic+VMOqbiBtw7RuIGjhu41jIDwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCAgc3R5bGU9J3dpZHRoOiAzNXB4Oyc+PGFzcDpMYWJlbCBJRD0nbGJsRzJOTUgnIHJ1bmF0PSdzZXJ2ZXInPk5NSCA8L2FzcDpMYWJlbD48L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHN0eWxlPSd3aWR0aDogNDVweDsnPjxhc3A6TGFiZWwgSUQ9J2xibEcyVFRIJyBydW5hdD0nc2VydmVyJz5UVEggPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkICBzdHlsZT0nd2lkdGg6IDM1cHg7Jz48YXNwOkxhYmVsIElEPSdsYmxHMlNUQycgcnVuYXQ9J3NlcnZlcic+U1RDIDwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCAgc3R5bGU9J3dpZHRoOiAzNXB4Oyc+PGFzcDpMYWJlbCBJRD0nbGJsRzJTVENIUCcgcnVuYXQ9J3NlcnZlcic+U1RDSFAgPC9hc3A6TGFiZWw+PC90ZD4gPHRkICBzdHlsZT0nd2lkdGg6IDgwcHg7Jz48YXNwOkxhYmVsIElEPSdsYmxHMkhQJyBydW5hdD0nc2VydmVyJz5I4buNYyBQaMOtPC9hc3A6TGFiZWw+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCAgc3R5bGU9J3dpZHRoOiA4MHB4Oyc+PGFzcDpMYWJlbCBJRD0nbGJsRzJNRycgcnVuYXQ9J3NlcnZlcic+TWnhu4VuIEdp4bqjbTwvYXNwOkxhYmVsPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHN0eWxlPSd3aWR0aDogODBweDsnPjxhc3A6TGFiZWwgSUQ9J2xibEcyUEQnIHJ1bmF0PSdzZXJ2ZXInPlBo4bqjaSDEkMOzbmc8L2FzcDpMYWJlbD48L3RkPjx0ZCA+PGFzcDpMYWJlbCBJRD0nbGJsRzJUcmFuZ1RoYWknIHJ1bmF0PSdzZXJ2ZXInPlRy4bqhbmcgVGjDoWkgbcO0biBo4buNYyA8L2FzcDpMYWJlbD48L3RkPjx0ZCBhbGlnbj0nbGVmdCcgIHN0eWxlPSd3aWR0aDo1MHB4OycgPjxpbnB1dCB0eXBlPSdjaGVja2JveCcgaWQ9J0lEY2hrX2FsbCcgbmFtZT0nY2hrX2FsbCcgIGRpc2FibGVkPSdkaXNhYmxlZCcgb25jbGljaz0nY2hlY2sodGhpcy5mb3JtLmNoa194b2EpOycvPjwvdGQ+PC90cj48L3RhYmxlPmQCBQ8WAh8CBalVDQo8ZGl2IGlkPSdkaXZLUScgPjx0YWJsZSBjbGFzcz0nYm9keS10YWJsZScgc3R5bGU9J2JvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7IGNvbG9yOk5hdnk7JyBydWxlcz0nYWxsJyBib3JkZXI9JzEnIGNlbGxzcGFjaW5nPScwJyBjZWxscGFkZGluZz0nMCc+DQoNCiAgICAgICAgICAgICAgICA8dHI+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDMwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MTwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nZGlzcGxheTpub25lJyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+SU5UMTQxNjAxICAgIDwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDYwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+SU5UMTQxNjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDE4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0Jz4mbmJzcDvEkOG6o20gYuG6o28gY2jhuqV0IGzGsOG7o25nIHBo4bqnbiBt4buBbTwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDE8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA0NXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MSw0NDAsMDAwJm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4mbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPjEsNDQwLDAwMCZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCc+Jm5ic3A7xJDDoyBsxrB1IHbDoG8gQ1NETDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0JyBzdHlsZT0nd2lkdGg6IDUwcHg7Jz48aW5wdXQgc3R5bGU9JycgdHlwZT0nY2hlY2tib3gnIGlkPSdjaGtfSU5UMTQxNjAxICAgICcgbmFtZT0nY2hrX3hvYScgIHZhbHVlPSdJTlQxNDE2MDEgICAgJyBvbmNsaWNrPSdDaGVja1RvRGVsZXRlX0NoZWNrZWRDaGFuZ2VkKHRoaXMpJyBkaXNhYmxlZD0nZGlzYWJsZWQnLz48L3RkPjwvdHI+DQogICAgICAgICAgICAgICAgPHRyPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzMHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjI8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J2Rpc3BsYXk6bm9uZScgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPklOVDE0NDgwMSAgICA8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA2MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPklOVDE0NDg8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAxODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCc+Jm5ic3A7UGjDoXQgdHJp4buDbiBwaOG6p24gbeG7gW0gaMaw4bubbmcgZOG7i2NoIHbhu6U8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzNXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjAxPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogNDVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz48L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzNXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjM8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzNXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjM8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPjEsNDQwLDAwMCZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+Jm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4xLDQ0MCwwMDAmbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkICB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnPiZuYnNwO8SQw6MgbMawdSB2w6BvIENTREw8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCcgc3R5bGU9J3dpZHRoOiA1MHB4Oyc+PGlucHV0IHN0eWxlPScnIHR5cGU9J2NoZWNrYm94JyBpZD0nY2hrX0lOVDE0NDgwMSAgICAnIG5hbWU9J2Noa194b2EnICB2YWx1ZT0nSU5UMTQ0ODAxICAgICcgb25jbGljaz0nQ2hlY2tUb0RlbGV0ZV9DaGVja2VkQ2hhbmdlZCh0aGlzKScgZGlzYWJsZWQ9J2Rpc2FibGVkJy8+PC90ZD48L3RyPg0KICAgICAgICAgICAgICAgIDx0cj4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4zPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSdkaXNwbGF5Om5vbmUnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz5JTlQxNDYxMDEgICAgPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogNjBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz5JTlQxNDYxPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMTgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnPiZuYnNwO1jDonkgZOG7sW5nIGPDoWMgaOG7hyB0aOG7kW5nIG5ow7puZzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDE8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA0NXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MSw0NDAsMDAwJm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4mbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPjEsNDQwLDAwMCZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCc+Jm5ic3A7xJDDoyBsxrB1IHbDoG8gQ1NETDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0JyBzdHlsZT0nd2lkdGg6IDUwcHg7Jz48aW5wdXQgc3R5bGU9JycgdHlwZT0nY2hlY2tib3gnIGlkPSdjaGtfSU5UMTQ2MTAxICAgICcgbmFtZT0nY2hrX3hvYScgIHZhbHVlPSdJTlQxNDYxMDEgICAgJyBvbmNsaWNrPSdDaGVja1RvRGVsZXRlX0NoZWNrZWRDaGFuZ2VkKHRoaXMpJyBkaXNhYmxlZD0nZGlzYWJsZWQnLz48L3RkPjwvdHI+DQogICAgICAgICAgICAgICAgPHRyPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzMHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjQ8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J2Rpc3BsYXk6bm9uZScgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPklOVDE0MDgwMSAgICA8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA2MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPklOVDE0MDg8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAxODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCc+Jm5ic3A7Q2h1ecOqbiDEkeG7gSBjw7RuZyBuZ2jhu4cgcGjhuqduIG3hu4FtPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4wMTwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDQ1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4xPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4xPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz40ODAsMDAwJm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4mbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPjQ4MCwwMDAmbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkICB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnPiZuYnNwO8SQw6MgbMawdSB2w6BvIENTREw8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCcgc3R5bGU9J3dpZHRoOiA1MHB4Oyc+PGlucHV0IHN0eWxlPScnIHR5cGU9J2NoZWNrYm94JyBpZD0nY2hrX0lOVDE0MDgwMSAgICAnIG5hbWU9J2Noa194b2EnICB2YWx1ZT0nSU5UMTQwODAxICAgICcgb25jbGljaz0nQ2hlY2tUb0RlbGV0ZV9DaGVja2VkQ2hhbmdlZCh0aGlzKScgZGlzYWJsZWQ9J2Rpc2FibGVkJy8+PC90ZD48L3RyPg0KICAgICAgICAgICAgICAgIDx0cj4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz41PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSdkaXNwbGF5Om5vbmUnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz5JTlQxNDI3MDQgICAgPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogNjBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz5JTlQxNDI3PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMTgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnPiZuYnNwO0tp4bq/biB0csO6YyB2w6AgdGhp4bq/dCBr4bq/IHBo4bqnbiBt4buBbTwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDQ8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA0NXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MSw0NDAsMDAwJm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4mbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPjEsNDQwLDAwMCZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCc+Jm5ic3A7xJDDoyBsxrB1IHbDoG8gQ1NETDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICA8dGQgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0JyBzdHlsZT0nd2lkdGg6IDUwcHg7Jz48aW5wdXQgc3R5bGU9JycgdHlwZT0nY2hlY2tib3gnIGlkPSdjaGtfSU5UMTQyNzA0ICAgICcgbmFtZT0nY2hrX3hvYScgIHZhbHVlPSdJTlQxNDI3MDQgICAgJyBvbmNsaWNrPSdDaGVja1RvRGVsZXRlX0NoZWNrZWRDaGFuZ2VkKHRoaXMpJyBkaXNhYmxlZD0nZGlzYWJsZWQnLz48L3RkPjwvdHI+DQogICAgICAgICAgICAgICAgPHRyPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiAzMHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjY8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J2Rpc3BsYXk6bm9uZScgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPlRMQ0QgIDA5ICAgIDwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDYwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+VExDRDwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDE4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0Jz4mbmJzcDtU4bqtcCBodeG6pW4ga2nhur9uIHRo4bupYyB2w6Aga+G7uSBuxINuZyBi4bqjbyDEkeG6o20gYW4gdG/DoG4sIHBow7JuZyBjaOG7kW5nIHbDoCDEkWnhu4F1IHRy4buLIGThu4tjaCBi4buHbmggdHJvbmcgdGjhu51pIGdpYW4gdHLhu58gbOG6oWkgdHLGsOG7nW5nIGjhu41jIHThuq1wIHbDoCBsw6BtIHZp4buHYzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDk8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA0NXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MDAmbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPiZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MDAmbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkICB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnPiZuYnNwO8SQw6MgbMawdSB2w6BvIENTREw8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nbGVmdCcgc3R5bGU9J3dpZHRoOiA1MHB4Oyc+PGlucHV0IHN0eWxlPScnIHR5cGU9J2NoZWNrYm94JyBpZD0nY2hrX1RMQ0QgIDA5ICAgICcgbmFtZT0nY2hrX3hvYScgIHZhbHVlPSdUTENEICAwOSAgICAnIG9uY2xpY2s9J0NoZWNrVG9EZWxldGVfQ2hlY2tlZENoYW5nZWQodGhpcyknIGRpc2FibGVkPSdkaXNhYmxlZCcvPjwvdGQ+PC90cj4NCiAgICAgICAgICAgICAgICA8dHI+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDMwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+NzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nZGlzcGxheTpub25lJyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+SU5UMTQ0OTA1ICAwMjwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDYwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+SU5UMTQ0OTwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDE4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0Jz4mbmJzcDtQaMOhdCB0cmnhu4NuIOG7qW5nIGThu6VuZyBjaG8gY8OhYyB0aGnhur90IGLhu4sgZGkgxJHhu5luZzwvdGQ+DQogICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDM1cHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J2NlbnRlcic+MDU8L3RkPg0KICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA0NXB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdjZW50ZXInPjAyPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4zPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogMzVweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0nY2VudGVyJz4zPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCBzdHlsZT0nd2lkdGg6IDgwcHg7JyB2YWxpZ249J21pZGRsZScgYWxpZ249J3JpZ2h0Jz4xLDQ0MCwwMDAmbmJzcDs8L3RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHRkIHN0eWxlPSd3aWR0aDogODBweDsnIHZhbGlnbj0nbWlkZGxlJyBhbGlnbj0ncmlnaHQnPiZuYnNwOzwvdGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dGQgc3R5bGU9J3dpZHRoOiA4MHB4OycgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdyaWdodCc+MSw0NDAsMDAwJm5ic3A7PC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCAgdmFsaWduPSdtaWRkbGUnIGFsaWduPSdsZWZ0Jz4mbmJzcDvEkMOjIGzGsHUgdsOgbyBDU0RMPC90ZD4NCiAgICAgICAgICAgICAgICAgICAgICAgIDx0ZCB2YWxpZ249J21pZGRsZScgYWxpZ249J2xlZnQnIHN0eWxlPSd3aWR0aDogNTBweDsnPjxpbnB1dCBzdHlsZT0nJyB0eXBlPSdjaGVja2JveCcgaWQ9J2Noa19JTlQxNDQ5MDUgIDAyJyBuYW1lPSdjaGtfeG9hJyAgdmFsdWU9J0lOVDE0NDkwNSAgMDInIG9uY2xpY2s9J0NoZWNrVG9EZWxldGVfQ2hlY2tlZENoYW5nZWQodGhpcyknIGRpc2FibGVkPSdkaXNhYmxlZCcvPjwvdGQ+PC90cj4NCiAgICAgICAgICAgICAgICA8dHIgc3R5bGU9J2ZvbnQtd2VpZ2h0OiBib2xkOycgaGVpZ2h0PScyMHB4Jz4NCiAgICAgICAgICAgICAgICA8dGQgdmFsaWduPSdtaWRkbGUn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">
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


    <script src="./source-dkmh/WebResource.axd" type="text/javascript"></script>


    <script type="text/javascript" src="./source-dkmh/prototype.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/core.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/converter.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/EduSoft.Web.DefaultMaster,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/EduSoft.Web.UC.Logout,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/EduSoft.Web.UC.DangKyMonHoc,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-dkmh/EduSoft.Web.UC.Footer,EduSoft.Web.ashx"></script>

    <script src="./source-dkmh/ScriptResource.axd" type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
        //]]>
    </script>

    <script src="./source-dkmh/ScriptResource(1).axd" type="text/javascript"></script>
    <div>

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
    </div>
    <div align="center">
        <div class="base">

            <table>
                <tbody>
                <tr>
                    <td>


                        <div style="background-image: url(https://qldt.ptit.edu.vn/Images/bg_heading_thongbao.png)">
                            <table width="1000px">
                                <tbody>
                                <tr>
                                    <td height="20px" style="padding-left: 50px" valign="bottom" align="right">


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


                                            function signOutGoogle(dest) {
                                                var url = 'https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue='
                                                    + decodeURIComponent(dest) + 'page=gioithieu';
                                                document.location.href = url;

                                                //gapi.load('auth2', function () {
                                                //    gapi.auth2.init();
                                                //    var auth = gapi.auth2.GoogleAuth;
                                                //    auth.signOut().then(function () {
                                                //        location = decodeURIComponent(dest) + 'page=gioithieu';
                                                //    });
                                                //});
                                            }
                                        </script>

                                        <div id="ctl00_Header1_Logout1_dLog" class="logout"
                                             style="text-align: right; margin-bottom: 0px">

                                            <img src="./source-dkmh/US.gif" alt="English"
                                                 onclick="changeLanguage_click(&#39;_us&#39;)" id="imgUS"
                                                 title="English">
                                            <img src="./source-dkmh/VI.gif" alt="Vietnamese"
                                                 onclick="changeLanguage_click(&#39;_vi&#39;)" id="imgVi"
                                                 title="Vietnamese">
                                            <span id="ctl00_Header1_Logout1_lblNguoiDung" class="Label"
                                                  style="color:MistyRose;font-size:12px;font-weight:bold;">Chào bạn Trần Văn Đô (B18DCCN158)</span>&nbsp;<a
                                                id="ctl00_Header1_Logout1_lbtnThongBao"
                                                href="javascript:__doPostBack(&#39;ctl00$Header1$Logout1$lbtnThongBao&#39;,&#39;&#39;)"
                                                style="color:MistyRose;font-size:12px;font-style:italic;font-family: &#39;Tahoma&#39;, Times, serif">Xem
                                            thông báo</a><span id="ctl00_Header1_Logout1_lblXiet1" class="Label"
                                                               style="color:MistyRose;"> | </span>
                                            <a id="ctl00_Header1_Logout1_lbtnChangePass"
                                               href="javascript:__doPostBack(&#39;ctl00$Header1$Logout1$lbtnChangePass&#39;,&#39;&#39;)"
                                               style="color:MistyRose;font-size:12px;font-weight:bold;font-family: &#39;Tahoma&#39;, Times, serif">Thay
                                                đổi mật khẩu</a>
                                            <span id="ctl00_Header1_Logout1_lblXiet2" class="Label"
                                                  style="color:MistyRose;"> | </span>
                                            <a id="ctl00_Header1_Logout1_lbtnLogOut"
                                               href="javascript:__doPostBack(&#39;ctl00$Header1$Logout1$lbtnLogOut&#39;,&#39;&#39;)"
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

                                    <div id="ctl00_menu_pnlGioithieu" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=gioithieu">
                                                <span id="ctl00_menu_lblTrangChu" class="Label">TRANG CHỦ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_pnDangKyMonHoc" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=dkmonhoc">
                                                <span id="ctl00_menu_lblDangKyMonHoc"
                                                      class="Label">ĐĂNG KÝ MÔN HỌC</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_thoikhoabieu" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=thoikhoabieu">
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
                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=thaydoittcn">
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


                        <style type="text/css">
                            #dhtmltooltip {
                                position: absolute;
                                padding: 2px;
                                visibility: hidden;
                                z-index: 100;
                            }

                            .style1 {
                                width: 814px;
                            }

                            .style2 {
                                width: 68px;
                            }

                            .style3 {
                                width: 1252px;
                            }

                            #Select1 {
                                height: 66px;
                                width: 238px;
                            }

                            #selectMonHoc1 {
                                width: 352px;
                                height: 63px;
                            }
                        </style>
                        <div id="dhtmltooltip"
                             style="background-image: url(App_Themes/Standard/Images/tooltip.png); text-align: center"></div>
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

                            function ddrivetip(NgayGioiHanHoc) {
                                if (ns6 || ie) {
                                    var thewidth = 170;
                                    if (typeof thewidth != "undefined") tipobj.style.width = thewidth + "px"
                                    tipobj.innerHTML = "<table CellPadding='0' border='0' CellSpacing='0' style='text-align:left;font-size:10pt;font-family:tahoma;background-color:#2E6C92; color:White; '><tr height='20px'><td align='center' >" + NgayGioiHanHoc.split('_').join(' ') + "</td></tr></table>";
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

                            document.onmousemove = positiontip
                        </script>
                        <script language="javascript" type="text/javascript">

                            function MessUpdate(mess) {
                                var mes = mess
                                alert(mes)
                            }

                            function disableSelection(target) {
                                if (typeof target.onselectstart != "undefined") //IE route
                                    target.onselectstart = function () {
                                        return false
                                    }
                                else if (typeof target.style.MozUserSelect != "undefined") //Firefox route
                                    target.style.MozUserSelect = "none"
                                else //All other route (ie: Opera)
                                    target.onmousedown = function () {
                                        return false
                                    }
                                target.style.cursor = "default"
                            }


                            // declare variable
                            var sumCheck = 0;
                            var checkflag = "false";
                            var vuotTC;
                            var trungTKBChoPhep;
                            var trungTKBKChoPhep;
                            var xoaKhongHopLe;
                            var confirmXoa;
                            var confirmXoaTatCa;
                            var nhapDKLoc;
                            var serverBusy;
                            var hinhThucDongHP;
                            var hoiDongHP;
                            var trungMonNC;
                            var waitingCheck;
                            var errorOutOffTime;
                            var errorChuyenNganhChinh;
                            var errorChuyenNganhChuyenSau;
                            var errorCaiThienDiemD;
                            var errorCaiThienHocKy;
                            var errorMucDoTrungTKB0;
                            var errorMucDoTrungTKB1;
                            var errorTrungLichThiCam;
                            var errorTrungLichThiLuaChon;
                            var errorTrungLichThiVuot;
                            var textKhongTheXoa;
                            var textKhongMoMH;
                            var errorGioiHanSTC;
                            var errorGioiHanSoTCThayDoi;
                            var isProcessing = false;

                            function toDKSelectedChange(o) {
                                document.body.disabled = "false";
                                document.body.style.cursor = "wait";
                                document.getElementById("IDchk_all").checked = false;
                                var arr = o.value.split("|");
                                if (!isProcessing) {

                                    isProcessing = true;
                                    EduSoft.Web.UC.DangKyMonHoc.DangKySelectedChange(o.checked, arr[0], arr[1], arr[2], arr[3], arr[4], arr[5],
                                        arr[6], arr[7], arr[8], arr[9], arr[10], arr[11], arr[12],
                                        toDKSelectedChange_callback);
                                } else {
                                    isProcessing = false;
                                    alert(waitingCheck);
                                    toggleSelectRow(arr[0], false);
                                }
                            }

                            function toDKSelectedChange_callback(res) {
                                if (res.value == "") {
                                    self.location = "Default.aspx?page=gioithieu";
                                } else {

                                    var isValidCoso = false;
                                    var isValidTKB = false;
                                    var isValidCTDTKhoi = false;

                                    var resArr = res.value.split("|");
                                    var maDK = resArr[1];
                                    if (resArr.length == 2) {
                                        alert(resArr[0]);
                                        toggleSelectRow(maDK, false);
                                        document.body.disabled = "";
                                        document.body.style.cursor = "default";
                                        isProcessing = false;
                                    } else if (resArr[0] == "IsCheckDangKyTuDong") {
                                        alert(resArr[2]);
                                        toggleSelectRow(maDK, false);
                                        document.body.disabled = "";
                                        document.body.style.cursor = "default";
                                        isProcessing = false;
                                    } else {

                                        var isChecked = resArr[2] == 1;
                                        var oldMaDK = resArr[4];
                                        var isVuotTC = resArr[5];
                                        var isVuotTCNganh2 = resArr[34];
                                        var isMHDangKyCungKhoiSV = resArr[35];
                                        var MonTQ = resArr[6];
                                        var MonSH = resArr[7];
                                        var MonDPH = resArr[8];
                                        var isTGDK = resArr[28];
                                        var xetDienDK = resArr[29];
                                        var chuyenNganh1HopLe = resArr[30];
                                        var chuyenNganh2HopLe = resArr[31];
                                        var monHocRangBuocSTC = resArr[32];
                                        var HopLeSTCDuocPhepThayDoi = resArr[33];
                                        var hopLeNhomMHTuChon = resArr[36];

                                        var strCanhBaoCTDTKhoi = resArr[38];

                                        if (resArr[0] == 'dhmxhetx') {
                                            if (confirm('Môn học học trực tuyến, tiếp tục đăng ký?')) {
                                                isValidTKB = true;
                                                toggleSelectRow(maDK, isChecked);
                                                if (oldMaDK)
                                                    toggleSelectRow(oldMaDK, false);
                                                EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                            }
                                        }
                                        // edit 6.5.12, nếu số tc thay đổi quá giới hạn stc cho phép, không cho chọn và bỏ chọn
                                        else if (!isChecked && HopLeSTCDuocPhepThayDoi == 0) {
                                            alert(errorGioiHanSoTCThayDoi);
                                            toggleSelectRow(maDK, true);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (isTGDK == 0) // Ngoai thoi gian dang ky
                                        {
                                            alert(errorOutOffTime);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (isVuotTC == 1) //vuot tin chi max
                                        {
                                            alert(vuotTC);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (isVuotTCNganh2 == 1) //vuot tin chi max nganh 2
                                        {
                                            alert("Vượt số tín chỉ tối đa ngoài ngành cho phép!");
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (chuyenNganh1HopLe == 0) {
                                            alert(errorChuyenNganhChinh);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (chuyenNganh2HopLe == 0) {
                                            alert(errorChuyenNganhChuyenSau);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (monHocRangBuocSTC == 0) {
                                            alert(errorGioiHanSTC + maDK);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (HopLeSTCDuocPhepThayDoi == 0) {
                                            alert(errorGioiHanSoTCThayDoi);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (hopLeNhomMHTuChon == 0) {
                                            alert("Không được đăng ký môn học thuộc nhóm tự chọn khác nhóm " + resArr[37].toString());
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (resArr[21] == 1 && resArr[22] == 0) // co phai la mon hoc cai thien, neu cai thien, co phai la mon cai thien hop le
                                        {
                                            var mess = resArr[23] == "0" ? errorCaiThienDiemD : errorCaiThienHocKy + resArr[23];
                                            alert(mess);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (xetDienDK) {
                                            alert(xetDienDK);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (MonDPH) //xem co phai la mon duoc phep hoc theo chương trinh dao tao he nganh hoac khoi lop
                                        {
                                            alert(MonDPH);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (MonTQ) // co vi pham tien quyet
                                        {
                                            alert(MonTQ);
                                            toggleSelectRow(maDK, false);
                                            document.body.disabled = "";
                                            document.body.style.cursor = "default";
                                            isProcessing = false;
                                        } else if (strCanhBaoCTDTKhoi != "") //Canh báo ngoài CTĐT khối
                                        {
                                            if (confirm(strCanhBaoCTDTKhoi)) {

                                                toggleSelectRow(maDK, true);
                                                EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                            } else {
                                                toggleSelectRow(maDK, false);
                                                document.body.disabled = "";
                                                document.body.style.cursor = "default";
                                                isProcessing = false;
                                            }
                                        } else if (resArr[9] == 1)// xet trung thoi khoa bieu
                                        {
                                            if (resArr[17] == 1 || resArr[17] == 3) // canh bao khi trung thoi khoa bieu
                                            {
                                                var strAlert;
                                                if (resArr[17] == 3) // bao luon ca so tiet bi trung
                                                {
                                                    strAlert = errorMucDoTrungTKB0 + resArr[19] + ", " + resArr[20] + "% " + errorMucDoTrungTKB1;
                                                } else {
                                                    strAlert = trungTKBChoPhep;
                                                }
                                                if (confirm(strAlert)) {
                                                    isValidTKB = true;
                                                    toggleSelectRow(maDK, true);
                                                    if (oldMaDK)
                                                        toggleSelectRow(oldMaDK, false);
                                                    EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                                } else {
                                                    toggleSelectRow(maDK, false);
                                                    document.body.disabled = "";
                                                    document.body.style.cursor = "default";
                                                    isProcessing = false;
                                                }
                                            } else // cam khong cho trung tkb
                                            {
                                                alert(trungTKBKChoPhep);
                                                toggleSelectRow(maDK, false);
                                                document.body.disabled = "";
                                                document.body.style.cursor = "default";
                                                isProcessing = false;
                                            }
                                        } else if (resArr[10]) // Warning co so
                                        {
                                            if (resArr[11]) // Xet khac co so, 0 la chi canh bao
                                            {
                                                if (confirm(resArr[10])) {
                                                    isValidCoso = true;
                                                    toggleSelectRow(maDK, true);
                                                    EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                                } else {
                                                    toggleSelectRow(maDK, false);
                                                    document.body.disabled = "";
                                                    document.body.style.cursor = "default";
                                                    isProcessing = false;
                                                }
                                            } else if (resArr[11] == "1") // 1 la cam dang ky ko cho luu
                                            {
                                                toggleSelectRow(maDK, false);
                                                alert(resArr[10]);
                                                document.body.disabled = "";
                                                document.body.style.cursor = "default";
                                                isProcessing = false;
                                            }
                                        }
                                        // edit 26.7.2010
                                        else if (resArr[24] != "") // trung thoi khoa bieu trong lich thi
                                        {
                                            if (resArr[24] == "khongchotrung") {
                                                alert(errorTrungLichThiCam);
                                                toggleSelectRow(maDK, false);
                                                document.body.disabled = "";
                                                document.body.style.cursor = "default";
                                                isProcessing = false;
                                            } else if (resArr[24] == "choluachon") {
                                                var strAlert = errorTrungLichThiLuaChon;
                                                if (confirm(strAlert)) {
                                                    toggleSelectRow(maDK, true);
                                                    if (oldMaDK)
                                                        toggleSelectRow(oldMaDK, false);
                                                    EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                                } else {
                                                    toggleSelectRow(maDK, false);
                                                    document.body.disabled = "";
                                                    document.body.style.cursor = "default";
                                                    isProcessing = false;
                                                }
                                            } else {

                                                alert(errorTrungLichThiVuot + resArr[24]);
                                                toggleSelectRow(maDK, false);
                                                document.body.disabled = "";
                                                document.body.style.cursor = "default";
                                                isProcessing = false;
                                            }
                                        } else {
                                            if (resArr[0] == 0) {
                                                if (MonSH) {
                                                    alert(MonSH);
                                                }
                                                toggleSelectRow(maDK, isChecked);
                                                EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                            } else {
                                                toggleSelectRow(maDK, true);
                                                toggleSelectRow(oldMaDK, false);
                                                EduSoft.Web.UC.DangKyMonHoc.LuuVaoKetQuaDangKy(isValidCoso, isValidTKB, resArr[1], resArr[12], resArr[13], resArr[14], resArr[15], resArr[16], isChecked.toString(), oldMaDK, resArr[25], resArr[26], resArr[27], isMHDangKyCungKhoiSV, toDKSelectedChange_callback2);
                                            }
                                        }
                                    }
                                }
                            }

                            function EndProcessing_Callback(data) {
                            }

                            function toDKSelectedChange_callback2(data) {
                                var resArr = data.value.split("|");
                                if (resArr[1] != "")// xet song hanh
                                {
                                    alert(resArr[1]);
                                }
                                document.getElementById("divKQ").innerHTML = resArr[0];
                                document.body.disabled = "";
                                document.body.style.cursor = "default";
                                isProcessing = false;
                            }

                            function toggleSelectRow(maDK, isSelect) {
                                var chk = document.getElementById("chk_" + maDK);
                                chk.checked = isSelect;
                                var row = chk.parentNode.parentNode;
                                row.style.backgroundColor = (isSelect ? "#CCCCCC" : "White");
                            }

                            function toggleSelectRow1(maDK, isSelect) {
                                var chk = document.getElementById(maDK);
                                chk.checked = isSelect;
                                var row = chk.parentNode.parentNode;
                                row.style.backgroundColor = (isSelect ? "#CCCCCC" : "White");
                            }

                            function CheckToDelete_CheckedChanged(maDK) {
                                if (maDK.checked == true)
                                    sumCheck = sumCheck + 1;
                                else {
                                    if (checkflag == "true") {
                                        document.getElementById("IDchk_all").checked = false;
                                    }
                                    sumCheck = sumCheck - 1;
                                }
                            }

                            function check(field) {
                                checkflag = document.getElementById("IDchk_all").checked.toString();
                                try {
                                    if (checkflag == "false" && field.name == "chk_xoa") {
                                        field.checked = false;
                                        sumCheck = sumCheck - 1;
                                    } else if (checkflag == "true" && field.name == "chk_xoa") {
                                        field.checked = true;
                                        sumCheck = sumCheck + 1;
                                    } else if (checkflag == "false") {
                                        for (i = 0; i < field.length; i++) {
                                            field[i].checked = false;
                                            sumCheck = sumCheck - 1;
                                        }
                                    } else {
                                        for (i = 0; i < field.length; i++) {
                                            field[i].checked = true;
                                            sumCheck = sumCheck + 1;
                                        }
                                    }
                                } catch (e) {
                                }
                            }

                            function xoaTuDanhSach(field, isRut) {
                                checkflag = document.getElementById("IDchk_all").checked.toString();
                                if (sumCheck == 0) {
                                    alert(xoaKhongHopLe);
                                    document.getElementById("IDchk_all").checked = false;
                                    return false;
                                } else {
                                    var question = confirmXoa;
                                    if (checkflag == "true")
                                        question = confirmXoaTatCa;
                                    if (isRut || confirm(question)) {
                                        document.body.style.cursor = 'wait';
                                        var lr = "";
                                        var lh = "";
                                        var danhSachBiXoa = "";
                                        if (field.name == "chk_xoa" && field.checked == true)// chi dang ky mot mon hoc
                                        {
                                            toggleSelectRow1(field.id, false);
                                            sumCheck = sumCheck - 1;
                                            danhSachBiXoa = danhSachBiXoa + "," + field.id.substr(4);
                                        } else// dang ky nhieu mon hoc
                                        {

                                            for (i = 0; i < field.length; i++) {
                                                if (field[i].checked == true) {

                                                    toggleSelectRow1(field[i].id, false);
                                                    sumCheck = sumCheck - 1;
                                                    danhSachBiXoa = danhSachBiXoa + "," + field[i].id.substr(4);
                                                }
                                            }
                                        }
                                        if (lr != "")
                                            lr = "Rút môn học: " + lr.substr(1, lr.length - 1) + "\n";
                                        if (lh != "")
                                            lr += "Hủy rút môn học đã rút: " + lh.substr(1, lh.length - 1) + "\n";
                                        lr += 'Đồng ý?';
                                        if (!isRut || confirm(lr))
                                            EduSoft.Web.UC.DangKyMonHoc.XoaKQDKTheoMaDK(danhSachBiXoa, XoaKQDKTheoMaDK_CallBack);
                                        else
                                            document.body.style.cursor = 'default';
                                    }
                                    return false;
                                }
                            }

                            function XoaKQDKTheoMaDK_CallBack(doituong) {
                                var x = doituong.value;
                                if (x == "1") {
                                    document.body.style.cursor = 'default';
                                    window.location = "default.aspx?page=dkmonhoc";
                                    return false;
                                }
                                if (x == "0") {
                                    alert(textKhongTheXoa);
                                    document.body.style.cursor = 'default';
                                    return false;
                                } else {

                                    // kiem tra có những môn xóa kèm (bắt buộc song hành)
                                    var dsXoaKem = x.split("MonXoaKem")[1];
                                    if (dsXoaKem == "1") {
                                        alert(errorGioiHanSoTCThayDoi);
                                    } else if (dsXoaKem) {
                                        var lstXoaKem = dsXoaKem.split("|");
                                        for (var i = 0; i < lstXoaKem.length; i++) {
                                            toggleSelectRow(lstXoaKem[i], false);
                                        }
                                    }
                                    var dsDaChon = x.split("MonXoaKem")[0];
                                    if (dsDaChon.length > 23) {
                                        //            edit 14.1.2010, code cu: doituong.value=x.substring(19,x.length- 26);
                                        doituong.value = dsDaChon.substring(19, x.length - 6);
                                        document.getElementById("divKQ").innerHTML = doituong.value;
                                    } else {
                                        document.getElementById("divKQ").innerHTML = "";
                                    }
                                    document.getElementById("IDchk_all").checked = false;
                                    document.body.style.cursor = 'default';
                                }
                            }

                            function deselectAll() {
                                var ctrls = document.getElementsByTagName("input");
                                for (var i = 0; i < ctrls.length; i++) {
                                    if (ctrls[i].type == "checkbox" && ctrls[i].checked && ctrls[i].disabled == false) {
                                        var chk = ctrls[i];
                                        var maDK = chk.id.split("_")[1];
                                        toggleSelectRow(maDK, false);
                                    }
                                }
                            }

                            function LuuNguyenVong_Click() {
                                var maMH = document.getElementById("IDtxtMonNV").value;
                                var buoi = '0';
                                var maNh = "";
                                var maTo = "";
                                if (document.getElementById("selectToNhom")) {
                                    var selectmenu = document.getElementById("selectToNhom");
                                    var chosenOption = selectmenu.options[selectmenu.selectedIndex].value;
                                    var nhomto = chosenOption.split('|');
                                    if (nhomto.length > 0)
                                        maNh = nhomto[0];
                                    if (nhomto.length > 1)
                                        maTo = nhomto[1];
                                }
                                if (document.getElementById("selectBuoi")) {
                                    var cbo = document.getElementById("selectBuoi");
                                    buoi = cbo.options[cbo.selectedIndex].value;
                                }
                                EduSoft.Web.UC.DangKyMonHoc.LuuNguyenVong(maMH, maNh, maTo, buoi, LuuNguyenVong_callback);
                            }

                            function LuuNguyenVong_callback(valueReturn) {
                                alert(valueReturn.value);
                            }

                            function getValue(v) {
                                myVariable = v
                                alert(myVariable)
                            }


                            function ShowTatCaTDK_callback(doituongTDK) {
                                if (doituongTDK == null)
                                    document.getElementById("divTDK").innerHTML = textKhongMoMH;
                                else
                                    document.getElementById("divTDK").innerHTML = doituongTDK.value;
                                var monHocLoc = document.getElementById("txtMaMH1");
                                if (monHocLoc != null)
                                    monHocLoc.value = "";
                                var txtKhoa = document.getElementById("txtKhoa");
                                if (txtKhoa != null)
                                    txtKhoa.value = "";
                                var txtLop = document.getElementById("txtLop");
                                if (txtLop != null)
                                    txtLop.value = "";
                                document.body.style.cursor = 'default';
                            }

                            function btnLocTheoMaMH1_click() {
                                var monHocLoc = document.getElementById("txtMaMH1");
                                if (monHocLoc.value == "") {
                                    alert(nhapDKLoc);
                                    return false;
                                } else {

                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMonHoc(monHocLoc.value, ShowTatCaTDK_callback);
                                }
                            }


                            function selectDKLoc_change() {

                                var selectmenu = document.getElementById("selectDKLoc");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];

                                var divChonKhoa = document.getElementById("divKhoa");
                                var divChonLop = document.getElementById("divLop");
                                var divChonNganh = document.getElementById("divNganh");


                                if (chosenOption.value == "khoa") {
                                    //            var divChonKhoa=document.getElementById("divKhoa");
                                    //            var divChonLop = document.getElementById("divLop");
                                    if (divChonKhoa != null) {
                                        divChonKhoa.style.display = "block";
                                        divChonLop.style.display = "none";
                                        divChonNganh.style.display = "none";
                                    }

                                } else if (chosenOption.value == "lop") {
                                    if (divChonKhoa != null) {
                                        divChonKhoa.style.display = "none";
                                        divChonLop.style.display = "block";
                                        divChonNganh.style.display = "none";
                                    }
                                } else if (chosenOption.value == "nganh") {
                                    if (divChonKhoa != null) {
                                        divChonKhoa.style.display = "none";
                                        divChonNganh.style.display = "block";
                                        divChonLop.style.display = "none";
                                    }
                                }

                            }

                            var mondphoc = 0;

                            function LoadDSKhoaLop_load(ressControl) {

                                var resArr = ressControl;

                                if (ressControl != "") {
                                    resArr = ressControl.split("|");

                                    vuotTC = resArr[5];
                                    trungTKBChoPhep = resArr[6];
                                    trungTKBKChoPhep = resArr[7];
                                    xoaKhongHopLe = resArr[8];
                                    confirmXoa = resArr[9];
                                    confirmXoaTatCa = resArr[10];
                                    nhapDKLoc = resArr[11];
                                    serverBusy = resArr[12];
                                    hinhThucDongHP = resArr[13];
                                    hoiDongHP = resArr[14];
                                    trungMonNC = resArr[15];
                                    waitingCheck = resArr[16];
                                    errorOutOffTime = resArr[17];
                                    errorChuyenNganhChinh = resArr[18];
                                    errorChuyenNganhChuyenSau = resArr[19];
                                    errorCaiThienDiemD = "Môn học cải thiện không thỏa quy chế";//resArr[20];
                                    errorCaiThienHocKy = resArr[21];
                                    errorMucDoTrungTKB0 = resArr[22];
                                    errorMucDoTrungTKB1 = resArr[23];
                                    errorTrungLichThiCam = resArr[24];
                                    errorTrungLichThiLuaChon = resArr[25];
                                    errorTrungLichThiVuot = resArr[26];
                                    textKhongTheXoa = resArr[27];
                                    textKhongMoMH = resArr[28];
                                    errorGioiHanSTC = resArr[29];
                                    errorGioiHanSoTCThayDoi = resArr[30];
                                }
                                mondphoc = resArr[31];
                                var divChonKhoa = document.getElementById("divKhoa");
                                var divChonNganh = document.getElementById("divNganh");
                                if (mondphoc == 1) {
                                    EduSoft.Web.UC.DangKyMonHoc.LoadChuongTrinhDaoTaoHeNganh(LoadDanhSachKhoaLop_callback);
                                } else if (mondphoc == 2) {
                                    EduSoft.Web.UC.DangKyMonHoc.LoadChuongTrinhDaoTaoKhoiLop(LoadDanhSachKhoaLop_callback);
                                } else {
                                    if (divChonKhoa != null) {
                                        divChonKhoa.style.display = "none";
                                        divChonNganh.style.display = "none";
                                    }
                                    EduSoft.Web.UC.DangKyMonHoc.LoadDanhSachKhoaLop(LoadDanhSachKhoaLop_callback);
                                }
                            }

                            function LoadDanhSachKhoaLop_callback(doituong) {
                                if (doituong != null) {

                                    if (doituong.value && doituong.value.length > 8 && doituong.value.substring(0, 8) == "BCVTVTHN") {
                                        doituong = doituong.value.replace("BCVTVTHN", "");
                                        if (document.getElementById("divMonHoc") != null) {
                                            document.getElementById("divMonHoc").innerHTML = doituong;
                                            document.getElementById("divfilters").style.height = "180px";
                                        }
                                    } else {
                                        if (mondphoc == 0 || mondphoc == 3 || mondphoc == 5 || mondphoc == 6) // 2-2-2010 , mdph = 3 => gioi han theo he dao tao
                                        {
                                            var ress = doituong.value.split("|||||");
                                            if (document.getElementById("divKhoa") != null)
                                                document.getElementById("divKhoa").innerHTML = ress[0];
                                            if (document.getElementById("divLop") != null)
                                                document.getElementById("divLop").innerHTML = ress[1];


                                            if (ress[2]) {
                                                var resArr = ress[2].split("|");
                                                var btnLocMH = document.getElementById("btnLocTheoMaMH1");
                                                btnLocMH.value = resArr[0];
                                                var btnLocKhoa = document.getElementById("btnKhoa");
                                                if (btnLocKhoa != null)
                                                    btnLocKhoa.value = resArr[1];
                                                var btnLocLop = document.getElementById("btnLop");
                                                if (btnLocLop != null)
                                                    btnLocLop.value = resArr[1];
                                                var btnLuuDK = document.getElementById("btnLuu");
                                                btnLuuDK.value = resArr[2];
                                                var btnXoaDK = document.getElementById("bntXoaChon");
                                                btnXoaDK.value = resArr[3];
                                                if (document.getElementById("butLuuNV") != null) {
                                                    var btnLuuNV = document.getElementById("butLuuNV");
                                                    btnLuuNV.value = resArr[4];
                                                }
                                            }

                                            // edit 10/2/2011 , DHNL bổ sung thêm điều kiện lọc theo ngành
                                            if (document.getElementById("divDanhSachDieuKienLoc") != null) {
                                                document.getElementById("divDanhSachDieuKienLoc").innerHTML = ress[3];
                                                selectDKLoc_change();
                                            }

                                            if (document.getElementById("divNganh") != null)
                                                document.getElementById("divNganh").innerHTML = ress[4];

                                            //end edit
                                        } else if (mondphoc == 1) // loc theo ctdt he nganh
                                        {
                                            var ress = doituong.value.split("|||||");
                                            document.getElementById("divLTCTHN1").innerHTML = ress[0];
                                            document.getElementById("divLTCTHN2").innerHTML = ress[1];
                                        } else if (mondphoc == 2) {
                                            document.getElementById("divLTCTKhoi").innerHTML = doituong.value;
                                        }
                                    }
                                }
                            }


                            function selectMonHoc_changed() {
                                var selectmenu = document.getElementById("selectMonHoc");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                if (chosenOption.value) {
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMonHoc(chosenOption.value, ShowTatCaTDK_callback);
                                }
                            }

                            /*
                            function selectKhoa_changed() {
                                var selectmenu = document.getElementById("selectKhoa");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                if (!string.IsNullOrEmpty(chosenOption.value)) {
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMaKhoa(true, chosenOption.value, "", ShowTatCaTDK_callback);
                                }
                            }
                            */

                            function selectKhoa_changed() {
                                var selectmenu = document.getElementById("selectKhoa");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                if (chosenOption.value != "") {
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMaKhoa(true, chosenOption.value, "", ShowTatCaTDK_callback);
                                }
                            }

                            function selectLop_changed() {
                                document.body.style.cursor = 'wait';
                                var selectmenu = document.getElementById("selectLop");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                EduSoft.Web.UC.DangKyMonHoc.LocTheoMaKhoa(false, chosenOption.value, "", ShowTatCaTDK_callback);
                            }

                            function btnLop_click() {
                                var maLop = document.getElementById("txtLop");
                                if (maLop.value == "") {
                                    alert(nhapDKLoc);
                                    return false;
                                } else {
                                    var selectmenu = document.getElementById("selectKhoa");
                                    var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                    var kh = "";
                                    if (chosenOption.visibility == 'visible')
                                        kh = chosenOption.value;
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMaKhoa(false, kh, maLop.value, ShowTatCaTDK_callback);
                                }
                            }

                            function btnKhoa_click() {
                                var maKhoa = document.getElementById("txtKhoa");
                                if (maKhoa.value == "") {
                                    alert(nhapDKLoc);
                                    return false;
                                } else {
                                    var selectmenu = document.getElementById("selectKhoa");
                                    var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                    var kh = "";
                                    if (chosenOption.visibility == 'visible')
                                        kh = chosenOption.value;
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoMaKhoa(true, kh, maKhoa.value, ShowTatCaTDK_callback);
                                }
                            }

                            function LuuDanhSachDangKy() {
                                document.body.style.cursor = 'wait';
                                EduSoft.Web.UC.DangKyMonHoc.KiemTraTrungNhom(KiemTraTrungNhom_callback)
                            }

                            function KiemTraTrungNhom_callback(trungnhom) {
                                if (trungnhom.value == "") {
                                    EduSoft.Web.UC.DangKyMonHoc.LuuDanhSachDangKy(LuuDanhSachDangKy_callback)
                                } else {
                                    alert(trungnhom.value);
                                    document.body.style.cursor = 'default';
                                    return false;
                                }
                            }

                            function LuuDanhSachDangKy_callback(songhanh) {
                                var ans = false;
                                if (songhanh.value == "") {
                                    EduSoft.Web.UC.DangKyMonHoc.LuuDanhSachDangKy_HopLe(false, ans, LuuDanhSachDangKy_HopLe_callback);
                                } else {
                                    if (confirm(songhanh.value)) {
                                        EduSoft.Web.UC.DangKyMonHoc.LuuDanhSachDangKy_HopLe(true, ans, LuuDanhSachDangKy_HopLe_callback);
                                    } else {
                                        document.body.style.cursor = 'default';
                                        return false;

                                    }
                                }
                            }

                            function LuuDanhSachDangKy_HopLe_callback(monHetCho) {
                                var arr = monHetCho.value.split("||");
                                if (arr.length == 1) {
                                    document.body.style.cursor = 'default';
                                    alert(monHetCho.value);
                                    return false;
                                }
                                if (arr[0] != "" && arr[0] != null) {
                                    if (arr[0] == "false") {
                                        document.body.style.cursor = 'default';
                                        alert(serverBusy);
                                        return false;
                                    } else {
                                        document.body.style.cursor = 'default';
                                        alert(arr[0]);
                                    }
                                }
                                self.location = arr[1];
                                //self.location="default.aspx?page=xemhocphi";
                                //
                            }

                            function ShowDSDaDangKy_Callback(obj) {
                                document.getElementById("divKQ").innerHTML = obj.value;
                                document.body.style.cursor = 'default';
                                return false;

                            }

                            function txtMaMH1_keypress(e) {
                                var keyCode = (window.Event) ? e.which : e.keyCode;
                                if (keyCode == 13) {
                                    document.body.style.cursor = 'wait';
                                    //document.getElementById("btnLocTheoMaMH1").click();
                                    btnLocTheoMaMH1_click();
                                }
                            }

                            function txtLop_keypress(e) {
                                var keyCode = (window.Event) ? e.which : e.keyCode;
                                if (keyCode == 13) {
                                    document.body.style.cursor = 'wait';
                                    //document.getElementById("btnLop").click();
                                    btnLop_click();
                                }
                            }

                            function txtKhoa_keypress(e) {
                                var keyCode = (window.Event) ? e.which : e.keyCode;
                                if (keyCode == 13) {
                                    document.body.style.cursor = 'wait';
                                    //document.getElementById("btnKhoa").click();
                                    btnKhoa_click();
                                }
                            }

                            function IDtxtMonNV_keypress(e) {
                                var keyCode = (window.Event) ? e.which : e.keyCode;
                                if (keyCode == 13) {
                                    if (document.getElementById("butLuuNV") != null) {
                                        //document.getElementById("butLuuNV").click();
                                        LuuNguyenVong_Click();
                                    }
                                }
                            }

                            function IDtxtMonNV_blur(textBox) {
                                var maMH = textBox.value;
                                if (maMH)
                                    EduSoft.Web.UC.DangKyMonHoc.LoadNhomTo(maMH, IDtxtMonNV_blur_callback);
                            }

                            function IDtxtMonNV_blur_callback(doituong) {


                                if (doituong != null) {
                                    if (document.getElementById("divToNhomNguyenVong") != null)
                                        document.getElementById("divToNhomNguyenVong").innerHTML = doituong.value;
                                }

                            }


                            function selectCTDTKL_changed() {
                                var selectmenu = document.getElementById("selectCTDTKL");
                                var chosenOption = selectmenu.options[selectmenu.selectedIndex];
                                if (chosenOption.value != "") {
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoCTDTKhoiLop(chosenOption.value, ShowTatCaTDK_callback);
                                }
                            }

                            function LocTheoMonTuChon() {
                                var selectmenu = document.getElementById("selectCTDTKL");
                                document.body.style.cursor = 'wait';
                                EduSoft.Web.UC.DangKyMonHoc.LocTheoMHTuChon(ShowTatCaTDK_callback);
                            }

                            function LocMonChuaHoc() {
                                document.body.style.cursor = 'wait';
                                EduSoft.Web.UC.DangKyMonHoc.LocTheoCTDTHeNganh(null, null, ShowTatCaTDK_callback);
                            }

                            function LocMonHoclai() {
                                document.body.style.cursor = 'wait';
                                EduSoft.Web.UC.DangKyMonHoc.LocTheoMonHoclai(null, null, ShowTatCaTDK_callback);
                            }

                            function selectCTDTHN2_changed() {
                                var selectmenu1 = document.getElementById("selectCTDTHN1");
                                var selectmenu2 = document.getElementById("selectCTDTHN2");
                                var chosenOption1 = selectmenu1 != null ? selectmenu1.options[selectmenu1.selectedIndex] : "";
                                var chosenOption2 = selectmenu2 != null ? selectmenu2.options[selectmenu2.selectedIndex] : "";
                                if (chosenOption2.value != "") {
                                    document.body.style.cursor = 'wait';
                                    EduSoft.Web.UC.DangKyMonHoc.LocTheoCTDTHeNganh(chosenOption1.value, chosenOption2.value, ShowTatCaTDK_callback);
                                }
                            }

                            function LoadKhongHopLe(thongbao) {

                                alert(thongbao);
                                self.location = "Default.aspx?page=dangnhap";
                            }

                            function XemMonNV() {
                                self.location = "Default.aspx?page=monnguyenvong";
                            }

                            function changeLoaiDK(cbo) {
                                var madk = cbo.id.substring(2);
                                EduSoft.Web.UC.DangKyMonHoc.ThayDoiLoaiDK(madk, cbo.value, changeLoaiDK_Callback);
                            }

                            function changeLoaiDK_Callback(obj) {
                                if (obj.value == true)
                                    location.reload();
                            }

                            function setDefLoaiDK(idx, cbo) {
                                if (idx > 0)
                                    cbo.selectedIndex = idx - 1;
                            }
                        </script>


                        <script type="text/javascript">
                            //<![CDATA[
                            Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ctl00$ScriptManager1', document.getElementById('aspnetForm'));
                            Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tctl00$ContentPlaceHolder1$ctl00$UpdatePanel2'], [], [], 90);
                            //]]>
                        </script>

                        <div id="ctl00_ContentPlaceHolder1_ctl00_UpdatePanel2">


                            <div id="divfilters" class="filters" visible="false" style="height: 180px;">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlLocMonHoc">

                                                <table cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                    <tr>
                                                        <td style="width: 110px">
                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblLocMH"
                                                                  style="display:inline-block;width:110px;">Lọc theo môn học: </span>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtMaMH1"
                                                                   onkeypress="txtMaMH1_keypress(event)">
                                                            <input type="button" value="Lọc &gt;&gt;"
                                                                   id="btnLocTheoMaMH1"
                                                                   onclick="btnLocTheoMaMH1_click()">

                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlLocDK">

                                                <table cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                    <tr>
                                                        <td style="width: 110px">
                                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblLocDK">Lọc theo điều kiện: </span>
                                                        </td>
                                                        <td align="left" valign="top">
                                                            <div id="divMonHoc"><select id="selectMonHoc"
                                                                                        onchange="selectMonHoc_changed()"
                                                                                        name="slmonhoc"
                                                                                        multiple="multiple"
                                                                                        style="width:400px;height:140px">
                                                                <option value="INT1408">INT1408 - Chuyên đề công nghệ
                                                                    phần mềm (1TC)
                                                                </option>
                                                                <option value="INT1416">INT1416 - Đảm bảo chất lượng
                                                                    phần mềm (3TC)
                                                                </option>
                                                                <option value="INT1427">INT1427 - Kiến trúc và thiết kế
                                                                    phần mềm (3TC)
                                                                </option>
                                                                <option value="INT1448">INT1448 - Phát triển phần mềm
                                                                    hướng dịch vụ (3TC)
                                                                </option>
                                                                <option value="INT1449">INT1449 - Phát triển ứng dụng
                                                                    cho các thiết bị di động (3TC)
                                                                </option>
                                                                <option value="INT1461">INT1461 - Xây dựng các hệ thống
                                                                    nhúng (3TC)
                                                                </option>
                                                            </select></div>
                                                            <div id="divDanhSachDieuKienLoc"></div>

                                                        </td>
                                                        <td width="790px" align="left">

                                                            <div id="divKhoa" style="display: none;"></div>
                                                            <div id="divLop"></div>
                                                            <div id="divNganh" style="display: none;"></div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>

                                            </div>


                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlThongbao">

                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblThongBaoNgoaiTGDK" class="Label"
                                      style="color:Red;font-weight:bold;">Thông báo: ngoài thời gian đăng ký. Sinh viên không được chọn hoặc hiệu chỉnh môn học.</span>

                            </div>
                            <table id="pnlDSMonhocDK">
                                <tbody>
                                <tr>
                                    <td align="center">
                                        <div align="left">
                                            <table cellspacing="0" cellpadding="0" class="title-table">
                                                <tbody>
                                                <tr align="center" height="30px">
                                                    <td width="25px"><asp:label id="lblG1DK"
                                                                                runat="server"> </asp:label></td>
                                                    <td width="60px"><asp:label id="lblG1MMH"
                                                                                runat="server">Mã MH</asp:label></td>
                                                    <td width="150x"><asp:label id="lblG1TMH"
                                                                                runat="server">Tên môn học </asp:label></td>
                                                    <td width="35px"><asp:label id="lblG1NMM"
                                                                                runat="server">NMH</asp:label></td>
                                                    <td width="30px"><asp:label id="lblG1TTH"
                                                                                runat="server">TTH</asp:label></td>
                                                    <td width="25px"><asp:label id="lblG1STC"
                                                                                runat="server">STC</asp:label></td>
                                                    <td width="35px"><asp:label id="lblG1STCHP"
                                                                                runat="server">STCHP</asp:label></td>
                                                    <td width="77px"><asp:label id="lblG1MaLop"
                                                                                runat="server">Mã lớp</asp:label></td>
                                                    <td width="28px"><asp:label id="lblG1SCP"
                                                                                runat="server">Sĩ số</asp:label></td>
                                                    <td width="28px"><asp:label id="lblG1CL"
                                                                                runat="server">CL</asp:label></td>
                                                    <td width="20px"><asp:label id="lblG1TH"
                                                                                runat="server">TH</asp:label></td>
                                                    <td width="35px"><asp:label id="lblG1Thu"
                                                                                runat="server">Thứ </asp:label></td>
                                                    <td width="40px"><asp:label id="lblG1TBD"
                                                                                runat="server">Tiết BD</asp:label></td>
                                                    <td width="30px"><asp:label id="lblG1ST"
                                                                                runat="server">ST</asp:label></td>
                                                    <td width="60px"><asp:label id="lblG1Phong"
                                                                                runat="server">Phòng</asp:label></td>
                                                    <td width="70px"><asp:label id="lblG1TenGV"
                                                                                runat="server">Giảng viên</asp:label></td>
                                                    <td><asp:label id="lblG1Tuan" runat="server">Tuần</asp:label></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div style="height: 320px" class="grid-roll">
                                            <div id="divTDK"></div>

                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDaChon">

                                <div style="margin-top: 5px;" id="titleDSDK">
                                    <span id="ctl00_ContentPlaceHolder1_ctl00_lblDaChon" class="Label"
                                          style="font-size:14px;font-weight:bold;">XEM ĐĂNG KÝ</span>
                                    <table cellspacing="0" cellpadding="0" class="title-table">
                                        <tbody>
                                        <tr>
                                            <td colspan="11" align="right" style="background-color:#6699FF;height:5px;">
                                                <input type="button" id="btnLuu" disabled="" value="Lưu Đăng Ký"
                                                       onclick="LuuDanhSachDangKy()">
                                            </td>
                                            <td align="center" style="background-color:#6699FF;height:5px;">
                                                <input type="button" disabled="" id="bntXoaChon" value="Xóa"
                                                       onclick="xoaTuDanhSach(this.form.chk_xoa, false)">
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td style="width: 30px;"><asp:label id="lblG2STT"
                                                                                runat="server">STT</asp:label></td>
                                            <td style="display:none"><asp:label id="lblG2MaDK"
                                                                                runat="server">Regis ID </asp:label></td>
                                            <td style="width: 60px;"><asp:label id="lblG2MMH"
                                                                                runat="server">Mã MH </asp:label></td>
                                            <td style="width: 180px;"><asp:label id="lblG2TMH"
                                                                                 runat="server">Tên môn học </asp:label></td>
                                            <td style="width: 35px;"><asp:label id="lblG2NMH"
                                                                                runat="server">NMH </asp:label></td>
                                            <td style="width: 45px;"><asp:label id="lblG2TTH"
                                                                                runat="server">TTH </asp:label></td>
                                            <td style="width: 35px;"><asp:label id="lblG2STC"
                                                                                runat="server">STC </asp:label></td>
                                            <td style="width: 35px;"><asp:label id="lblG2STCHP"
                                                                                runat="server">STCHP </asp:label></td>
                                            <td style="width: 80px;"><asp:label id="lblG2HP"
                                                                                runat="server">Học Phí</asp:label></td>
                                            <td style="width: 80px;"><asp:label id="lblG2MG"
                                                                                runat="server">Miễn Giảm</asp:label></td>
                                            <td style="width: 80px;"><asp:label id="lblG2PD"
                                                                                runat="server">Phải Đóng</asp:label></td>
                                            <td><asp:label id="lblG2TrangThai"
                                                           runat="server">Trạng Thái môn học </asp:label></td>
                                            <td align="left" style="width:50px;"><input type="checkbox" id="IDchk_all"
                                                                                        name="chk_all"
                                                                                        disabled="disabled"
                                                                                        onclick="check(this.form.chk_xoa);">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                </div>
                                <div id="divTemp" class="grid-roll" style="height: 240px">

                                    <div id="divKQ">
                                        <table class="body-table" style="border-collapse: collapse; color:Navy;"
                                               rules="all" border="1" cellspacing="0" cellpadding="0">

                                            <tbody>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">1</td>
                                                <td style="display:none" valign="middle" align="center">INT141601</td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1416</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Đảm bảo
                                                    chất lượng phần mềm
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">01</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT141601    "
                                                                                                             name="chk_xoa"
                                                                                                             value="INT141601    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">2</td>
                                                <td style="display:none" valign="middle" align="center">INT144801</td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1448</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Phát triển
                                                    phần mềm hướng dịch vụ
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">01</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT144801    "
                                                                                                             name="chk_xoa"
                                                                                                             value="INT144801    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">3</td>
                                                <td style="display:none" valign="middle" align="center">INT146101</td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1461</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Xây dựng
                                                    các hệ thống nhúng
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">01</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT146101    "
                                                                                                             name="chk_xoa"
                                                                                                             value="INT146101    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">4</td>
                                                <td style="display:none" valign="middle" align="center">INT140801</td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1408</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Chuyên đề
                                                    công nghệ phần mềm
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">01</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">1</td>
                                                <td style="width: 35px;" valign="middle" align="center">1</td>
                                                <td style="width: 80px;" valign="middle" align="right">480,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">480,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT140801    "
                                                                                                             name="chk_xoa"
                                                                                                             value="INT140801    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">5</td>
                                                <td style="display:none" valign="middle" align="center">INT142704</td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1427</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Kiến trúc
                                                    và thiết kế phần mềm
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">04</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT142704    "
                                                                                                             name="chk_xoa"
                                                                                                             value="INT142704    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">6</td>
                                                <td style="display:none" valign="middle" align="center">TLCD 09</td>
                                                <td style="width: 60px;" valign="middle" align="center">TLCD</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Tập huấn
                                                    kiến thức và kỹ năng bảo đảm an toàn, phòng chống và điều trị dịch
                                                    bệnh trong thời gian trở lại trường học tập và làm việc
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">09</td>
                                                <td style="width: 45px;" valign="middle" align="center"></td>
                                                <td style="width: 35px;" valign="middle" align="center">0</td>
                                                <td style="width: 35px;" valign="middle" align="center">0</td>
                                                <td style="width: 80px;" valign="middle" align="right">00&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">00&nbsp;</td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_TLCD  09    "
                                                                                                             name="chk_xoa"
                                                                                                             value="TLCD  09    "
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30px;" valign="middle" align="center">7</td>
                                                <td style="display:none" valign="middle" align="center">INT144905 02
                                                </td>
                                                <td style="width: 60px;" valign="middle" align="center">INT1449</td>
                                                <td style="width: 180px;" valign="middle" align="left">&nbsp;Phát triển
                                                    ứng dụng cho các thiết bị di động
                                                </td>
                                                <td style="width: 35px;" valign="middle" align="center">05</td>
                                                <td style="width: 45px;" valign="middle" align="center">02</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 35px;" valign="middle" align="center">3</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td style="width: 80px;" valign="middle" align="right">&nbsp;</td>
                                                <td style="width: 80px;" valign="middle" align="right">1,440,000&nbsp;
                                                </td>
                                                <td valign="middle" align="left">&nbsp;Đã lưu vào CSDL</td>
                                                <td valign="middle" align="left" style="width: 50px;"><input style=""
                                                                                                             type="checkbox"
                                                                                                             id="chk_INT144905  02"
                                                                                                             name="chk_xoa"
                                                                                                             value="INT144905  02"
                                                                                                             onclick="CheckToDelete_CheckedChanged(this)"
                                                                                                             disabled="disabled">
                                                </td>
                                            </tr>
                                            <tr style="font-weight: bold;" height="20px">
                                                <td valign="middle" align="center" colspan="5">Tổng cộng</td>
                                                <td valign="middle" align="center">16</td>
                                                <td valign="middle" align="center">16</td>
                                                <td valign="middle" align="right">7,680,000&nbsp;</td>
                                                <td valign="middle" align="right">00&nbsp;</td>
                                                <td valign="middle" align="right">7,680,000&nbsp;</td>
                                                <td valign="middle" align="left"></td>
                                                <td valign="middle" align="center">
                                                </td>

                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <br>

                                <div style="text-align: right">
                                    <span id="ctl00_ContentPlaceHolder1_ctl00_lblNote" class="Label"
                                          style="color:Gray;font-size:10px;font-style:italic;">( Diễn giải: ĐK (đăng ký); Mã MH (mã môn học); NMH (Nhóm môn học); TTH (Tổ thực hành); STC (Số tín chỉ); STCHP (Số tín chỉ học phí); CL (Còn lại); TH (Thực hành) )</span>
                                </div>

                                <br>


                            </div>
                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDanhGia">


                            </div>
                            <div id="ctl00_ContentPlaceHolder1_ctl00_pnlNguyenVong">


                                <br>

                                <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDuyetKQDK">

                                    <fieldset>
                                        <legend>
                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblTieuDeKQDK"
                                                  style="color:Navy;font-weight:bold;">GIẢNG VIÊN DUYỆT KẾT QUẢ ĐĂNG KÝ SINH VIÊN: </span>
                                        </legend>

                                        <table width="100%">
                                            <tbody>
                                            <tr>
                                                <td align="left" width="100px">

                                                    <span id="ctl00_ContentPlaceHolder1_ctl00_lblTrangThaiDuyetKQDK"
                                                          style="color:Navy;">Trạng thái:</span>
                                                </td>
                                                <td align="left">


                                                </td>


                                            </tr>
                                            </tbody>
                                        </table>

                                    </fieldset>

                                </div>


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
                                        <img src="./source-dkmh/icon_11c.gif" alt="">
                                        <span class="LogoFooter"><span id="ctl00_Footer1_lblCompany" class="Label">Copyright ©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi </span></span>
                                    </td>

                                    <td valign="top" align="left" class="style4">
                                        <img src="./source-dkmh/iconHome.png" alt="" align="right">
                                    </td>
                                    <td align="left" class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx"><span
                                                id="ctl00_Footer1_lbltrangchu" class="Label">Trang Chủ</span></a>
                                    </td>


                                </tr>
                                <tr>
                                    <td class="style5">
                                        <img src="./source-dkmh/icon_11c.gif" alt="">
                                        <a href="https://aqtech.vn/" target="_blank"><span
                                                id="ctl00_Footer1_lblCopyRight" class="Label">Thiết kế bởi cty Phần mềm Anh Quân</span></a>


                                    </td>
                                    <td align="right" valign="top" class="style4">
                                        <img src="./source-dkmh/topTen.gif" width="15px" alt="">
                                    </td>
                                    <td class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx?page=dkmonhoc#Top"
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


    <script language="JavaScript">LoadDSKhoaLop_load('Lọc >>|Lọc >>|Lưu Đăng Ký|Xóa|Lưu|Vượt số tín chỉ tối đa cho phép!|Môn học vừa chọn bị trùng thời khóa biểu. Vẫn tiếp tục chọn?|Môn học vừa chọn bị trùng TKB, không được phép chọn!|Không có môn học nào được chọn để xóa!|Xác nhận xóa các môn đã chọn?|Xác nhận xóa tất cả các môn đã đăng ký?|Vui lòng nhập vào điều kiện cần lọc!|Server đang bận, vui lòng đợi chọn lưu lại lần nữa!|100|Bạn có muốn đóng 100% học phí cho lần đầu, nếu đóng 100% chọn Cancle   |Không được phép đăng ký môn học trùng với môn niên chế (môn bắt buộc học)|Vui lòng đợi trong khi môn trước được kiểm tra|Ngoài thời gian cho phép đăng ký môn học!|Môn học vừa chọn nằm ngoài chuyên ngành chuyên sâu chuyên ngành chính của sinh viên|Môn học vừa chọn nằm ngoài chuyên ngành chuyên sâu chuyên ngành 2 của sinh viên|Môn đăng ký học cải thiện cần có điểm tổng kết môn lớn hơn D|Môn đăng ký học cải thiện cần có điểm tổng kết môn lớn hơn D và số chênh lệch học kỳ tính đến học kỳ hiện tại là |Môn học vừa chọn bị trùng tổng số tiết với TKB cũ là | tổng số tiết.Vẫn tiếp tục chọn|Môn vừa đăng ký bị trùng lịch thi với môn đã chọn trước đó, không thể chọn!|Môn vừa chọn trùng lịch thi với môn chọn trước đó, vẫn tiếp tục lưu ?|Môn vừa đăng ký bị trùng lịch thi với môn đã chọn trước đó, vượt quá số cho phép trùng tối đa |Đã qua thời gian đăng ký, không thể xóa|(Không có môn học được mở)|Không đủ số tín chỉ đăng ký tích lũy (hoặc đạt tích lũy) để đăng ký môn |Không thể thay đổi kqdk vượt quá phạm vi số tín chỉ max quy định trong đợt đăng ký 1|0');</script>
    <script type="text/javascript">
        //<![CDATA[
        Sys.Application.initialize();
        //]]>
    </script>
</form>


<img src="./source-dkmh/arrowdown.gif" id="arrowhead"></body>
</html>
