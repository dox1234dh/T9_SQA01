<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 3/24/2022
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0054)https://qldt.ptit.edu.vn/default.aspx?page=thaydoittcn -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script language="javascript" type="text/javascript">

        var gv = 'False';
    </script>
    <script type="text/javascript" src="./source-ttcn/platform.js.tải xuống" async="" defer=""
            gapi_processed="true"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta id="ctl00_metaGoogle" name="google-signin-client_id">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://qldt.ptit.edu.vn/Images/Edusoft.gif">
    <script src="./source-ttcn/jquery-2.2.1.js.tải xuống" type="text/javascript"></script>
    <script src="./source-ttcn/dialog.js.tải xuống" type="text/javascript"></script>
    <script src="./source-ttcn/checkdate.js.tải xuống" type="text/javascript"></script>
    <script src="./source-ttcn/balloontip.js.tải xuống" type="text/javascript"></script>
    <link href="./source-ttcn/balloontip.css" rel="stylesheet" type="text/css">
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

    <link href="./source-ttcn/WebResource.axd" rel="stylesheet" type="text/css">
    <link href="./source-ttcn/Standard.css" type="text/css" rel="stylesheet">
    <link href="./source-ttcn/StyleSheet.css" type="text/css" rel="stylesheet">
</head>

<body background="./source-ttcn/background.png" onload="ShowMess()">
<form name="aspnetForm" method="post" action="https://qldt.ptit.edu.vn/default.aspx?page=thaydoittcn" id="aspnetForm"
      enctype="multipart/form-data">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="/wEPDwUKLTMxNjc3NTM3NQ9kFgJmD2QWBGYPZBYCAgEPFgIeB2NvbnRlbnRkZAIBD2QWCAIDD2QWAmYPZBYCAgEPZBYMZg8PFgYeCUZvcmVDb2xvcgp4HgRUZXh0BSlDaMOgbyBi4bqhbiBUcuG6p24gVsSDbiDEkMO0IChCMThEQ0NOMTU4KR4EXyFTQgIEZGQCAQ8PFggfAgUPWGVtIHRow7RuZyBiw6FvHwEKeB8DAgQeB1Zpc2libGVnZGQCAg8PFggfAgUDIHwgHwEKeB8DAgQfBGdkZAIDDw8WCB8CBRhUaGF5IMSR4buVaSBt4bqtdCBraOG6qXUfAQp4HwMCBB8EZ2RkAgQPDxYIHwIFAyB8IB8BCngfAwIEHwRnZGQCBQ8PFgYfAgUGVGhvw6F0HwEKeB8DAgRkZAIFD2QWwgECAQ8PFgQeCENzc0NsYXNzBQhvdXQtbWVudR8DAgJkFgJmDw8WAh8CBQtUUkFORyBDSOG7pmRkAgMPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRdEQU5IIE3hu6RDIENI4buoQyBOxIJOR2RkAgUPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRtETSBDSOG7qEMgTsSCTkcgxJDDgU5IIEdJw4FkZAIHDw8WBB8FBQhvdXQtbWVudR8DAgJkZAIJDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUVxJDEgk5HIEvDnSBNw5ROIEjhu4xDZGQCCw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCDQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFB1hFTSBUS0JkZAIPDw8WBB8FBQhvdXQtbWVudR8DAgJkZAIRDw8WBB8FBQhvdXQtbWVudR8DAgJkFgJmDw8WAh8CBQ5YRU0gTOG7ikNIIFRISWRkAhMPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRRYRU0gTOG7ikNIIFRISSBM4bqgSWRkAhUPDxYGHwUFCG91dC1tZW51HwMCAh8EaGQWAgIBDw8WAh8CBRFYRU0gTOG7ikNIIFRISSBHS2RkAhcPDxYGHwUFCG91dC1tZW51HwMCAh8EaGRkAhkPDxYEHwUFCG91dC1tZW51HwMCAmRkAhsPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBQ5YRU0gSOG7jEMgUEjDjWRkAh0PDxYEHwUFCG91dC1tZW51HwMCAmRkAh8PDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBQtYRU0gxJBJ4buCTWRkAiEPDxYGHwUFCG91dC1tZW51HwMCAh8EaGRkAiMPDxYEHwUFCG91dC1tZW51HwMCAmRkAiUPDxYEHwUFCG91dC1tZW51HwMCAmRkAicPDxYEHwUFCG91dC1tZW51HwMCAmRkAikPDxYEHwUFCG91dC1tZW51HwMCAmRkAisPDxYGHwUFCG91dC1tZW51HwMCAh8EZ2QWAgIBDw8WAh8CBQlYRU0gQ1TEkFRkZAItDw8WBh8FBQhvdXQtbWVudR8DAgIfBGdkFgICAQ8PFgIfAgULWEVNIE3DlE4gVFFkZAIvDw8WBB8FBQhvdXQtbWVudR8DAgJkZAIxDw8WBB8FBQhvdXQtbWVudR8DAgJkZAIzDw8WBB8FBQlvdmVyLW1lbnUfAwICZBYCAgEPDxYCHwIFElPhu6xBIFRUIEPDgSBOSMOCTmRkAjUPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBQ5Hw5NQIMOdIEtJ4bq+TmRkAjcPDxYEHwUFCG91dC1tZW51HwMCAmQWAmYPDxYCHwIFEFPhu6xBIEzDnSBM4buKQ0hkZAI5Dw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUVUVXhuqJOIEzDnSBTSU5IIFZJw4pOZGQCOw8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFIkvhur5UIFFV4bqiIFNJTkggVknDik4gxJDDgU5IIEdJw4FkZAI9Dw8WBB8FBQhvdXQtbWVudR8DAgJkZAI/Dw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ9kFgJmDw8WAh8CBRnEkMOBTkggR0nDgSBHSeG6ok5HIEThuqBZZGQCQQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFFMSQxIJORyBLw50gVEhJIEzhuqBJZGQCQw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCRQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFEsSQSyBDSFVZw4pOIE5Hw4BOSGRkAkcPDxYEHwUFCG91dC1tZW51HwMCAmRkAkkPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRZLUSBYw4lUIFThu5BUIE5HSEnhu4ZQZGQCSw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCTQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFGkPDglUgSOG7jkkgVEjGr+G7nE5HIEfhurZQZGQCTw8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFE8SQSyBLSMOTQSBMVeG6rE4gVE5kZAJRDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUOTkjhuqxQIMSQSeG7gk1kZAJTDw8WBB8FBQhvdXQtbWVudR8DAgJkZAJVDw8WBB8FBQhvdXQtbWVudR8DAgJkZAJXDw8WBB8FBQhvdXQtbWVudR8DAgJkZAJZDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUeWEVNIMSQSeG7gk0gTcOUTiBHSeG6ok5HIEThuqBZZGQCWw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCXQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCXw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCYQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCYw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCZQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFJlRI4buQTkcgS8OKIEdJ4bqiTkcgVknDik4gRFVZ4buGVCBLUURLZGQCZw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCaQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCaw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCbQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCbw8PFgYfBQUIb3V0LW1lbnUfAwICHwRnZBYCAgEPDxYCHwIFFEjGr+G7mk5HIEThuqpOIMSQS01IZGQCcQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCcw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCdQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCdw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCeQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCew8PFgQfBQUIb3V0LW1lbnUfAwICZGQCfQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCfw8PFgQfBQUIb3V0LW1lbnUfAwICZGQCgQEPDxYEHwUFCG91dC1tZW51HwMCAmRkAoMBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKFAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQChwEPDxYEHwUFCG91dC1tZW51HwMCAmRkAokBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKLAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCjQEPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRdIw5NBIMSQxqBOIMSQSeG7hk4gVOG7rGRkAo8BDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUWTkdI4buIIEThuqBZIEThuqBZIELDmWRkApEBDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUXxJDEgk5HIEvDnSBOR0jhu4ggUEjDiVBkZAKTAQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFEsSQxIJORyBLw50gQ09JIFRISWRkApUBDw8WBB8FBQhvdXQtbWVudR8DAgJkFgICAQ8PFgIfAgUSWEVNIEzhu4pDSCBDT0kgVEhJZGQClwEPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRtLUSBOR0hJw4pOIEPhu6hVIEtIT0EgSOG7jENkZAKZAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCmwEPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBD2QWAmYPDxYCHwIFJMSQxIJORyBLw50gWElOIEdJ4bqkWSBDSOG7qE5HIE5I4bqsTmRkAp0BDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKfAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCoQEPDxYEHwUFCG91dC1tZW51HwMCAmQWAgIBDw8WAh8CBRVD4bqoTSBOQU5HIFNJTkggVknDik5kZAKjAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCpQEPDxYEHwUFCG91dC1tZW51HwMCAmRkAqcBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKpAQ8PFgQfBQUIb3V0LW1lbnUfAwICZBYCAgEPDxYCHwIFJELDgU8gQknhu4JVIFBI4bukQyBW4bukIEzDg05IIMSQ4bqgT2RkAqsBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKtAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCrwEPDxYEHwUFCG91dC1tZW51HwMCAmRkArEBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAKzAQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCtQEPDxYEHwUFCG91dC1tZW51HwMCAmRkArcBDw8WBB8FBQhvdXQtbWVudR8DAgJkZAK5AQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCuwEPDxYEHwUFCG91dC1tZW51HwMCAmRkAr0BDw8WBB8FBQhvdXQtbWVudR8DAgJkZAK/AQ8PFgQfBQUIb3V0LW1lbnUfAwICZGQCwQEPDxYEHwUFCG91dC1tZW51HwMCAmRkAgcPZBYCAgEPZBYCZg9kFjACAg8PFgIfAgUgVEhBWSDEkOG7lEkgVEjDlE5HIFRJTiBDw4EgTkjDgk5kZAIDDw8WAh8CBRRUaMO0bmcgdGluIGPDoSBuaMOibmRkAgQPDxYCHwIFDVTDoGkga2hv4bqjbjpkZAIFDw8WAh8CBQpCMThEQ0NOMTU4ZGQCBg8PFgIfBGhkZAIHDw8WAh8CBQpI4buNIHTDqm46ZGQCCA8PFgIfAgUQVHLhuqduIFbEg24gxJDDtGRkAgkPDxYCHwIFDU3huq10IGto4bqpdTpkZAIKDw8WAh8CBRhUaGF5IMSR4buVaSBt4bqtdCBraOG6qXVkZAILDw8WAh8CBQ/EkGnhu4duIHRob+G6oWlkZAIMDw8WAh8CBQxT4butYSDEkeG7lWlkZAINDw8WAh8CBRTEkGnhu4duIHRob+G6oWkgKDEpOmRkAg4PDxYGHgdUb29sVGlwBSFOaOG6rXAgdsOgbyBz4buRIMSRaeG7h24gdGhv4bqhaSEfAmQeB0VuYWJsZWRoZGQCDw8PFgIfAgUUxJBp4buHbiB0aG/huqFpICgyKTpkZAIQDw8WBh8GBS9OaOG6rXAgc+G7kSDEkWnhu4duIHRob+G6oWkgdGjhu6kgMihO4bq/dSBjw7MpIR8CZR8HaGRkAhIPDxYCHwIFDFPhu61hIMSR4buVaWRkAhMPDxYCHwIFF8SQ4buLYSBjaOG7iSBFbWFpbCAoMSk6ZGQCFA8PFgYfBgUaTmjhuq1wIMSR4buLYSBjaOG7iSBFbWFpbCEfAgUdRG9UVi5CMThDTjE1OEBzdHUucHRpdC5lZHUudm4fB2hkZAIVDw8WAh8EaGRkAhYPDxYCHwRoZGQCFw9kFggCAQ8PFgIfAgUXxJDhu4thIGNo4buJIEVtYWlsICgyKTpkZAIDDw8WBh8GBS1OaOG6rXAgxJHhu4thIGNo4buJIEVtYWlsIHRo4bupIDIoTuG6v3UgY8OzKSEfAgUdRG9UVi5CMThDTjE1OEBzdHUucHRpdC5lZHUudm4fB2hkZAIFDw8WAh8EaGRkAgcPDxYCHwRoZGQCGA8PFgIfBGdkFigCAQ8PFgIfAgUYVGhheSDEkeG7lWkgbeG6rXQga2jhuql1ZGQCAw8PFgIfAgVSICAoTMawdSDDvTogbeG6rXQga2jhuql1IGPhuqduIGtow6FjIHbhu5tpIG3huq10IGto4bqpdSBt4bq3YyDEkeG7i25oIG5nw6B5IHNpbmggKWRkAgUPDxYCHwIFIU5o4bqtcCBt4bqtdCBraOG6qXUgaGnhu4duIHThuqFpOmRkAgcPDxYCHwYFIU5o4bqtcCBt4bqtdCBraOG6qXUgaGnhu4duIHThuqFpIWRkAgsPDxYCHwRoZGQCDQ8PFgIfBGhkZAIPDw8WAh8CBRpOaOG6rXAgbeG6rXQga2jhuql1IG3hu5tpOmRkAhEPDxYCHwYFH05o4bqtcCB2w6BvIG3huq10IGto4bqpdSBt4bubaSFkZAITDw8WAh8CBR9Yw6FjIG5o4bqtbiBt4bqtdCBraOG6qXUgbeG7m2k6ZGQCFQ8PFgIfBgUlWMOhYyBuaOG6rW4gbOG6oWkgbeG6rXQga2jhuql1IG3hu5tpIWRkAhcPDxYCHwRoZGQCGQ8PFgIfBGhkZAIbDw8WBB8CBSdYw6FjIG5o4bqtbiBs4bqhaSBrw70gdOG7sSBiw6puIHBo4bqjaTofBGhkZAIdDw8WAh8EaGRkAh8PDxYCHwRoZGQCIQ8PFgIfBGhkZAInDw8WBB8CBRxDaOG7jW4gY8OidSBo4buPaSBiw60gbeG6rXQ6HwRoZGQCKQ8QDxYIHwRoHg1EYXRhVGV4dEZpZWxkBQdOb2lkdW5nHg5EYXRhVmFsdWVGaWVsZAUISURDYXVob2keC18hRGF0YUJvdW5kZ2QQFQAVABQrAwAWAGQCKw8PFgQfAgUnVHLhuqMgbOG7nWkgY8OidSBo4buPaSAoa2jDtG5nIGThuqV1KTogHwRoZGQCLQ8PFgIfBGhkZAIbDw8WAh8CBQpMxrB1IGzhuqFpZGQCHA8PFgIfAgUKSOG7p3kgYuG7j2RkAgkPZBYIAgEPDxYCHwIFbUNvcHlyaWdodCDCqTIwMDkgSOG7jWMgVmnhu4duIEPDtG5nIE5naOG7hyBCxrB1IENow61uaCBWaeG7hW4gVGjDtG5nLUPGoSBT4bufIE1p4buBbiBC4bqvYy4gUXXhuqNuIGzDvSBi4bufaSBkZAIDDw8WAh8CBQtUcmFuZyBDaOG7p2RkAgUPDxYCHwIFLVRoaeG6v3Qga+G6vyBi4bufaSBjdHkgUGjhuqduIG3hu4FtIEFuaCBRdcOibmRkAgcPDxYCHwIFDMSQ4bqndSBUcmFuZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYCBTpjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJGN0bDAwJE1lc3NhZ2VCb3gxJGltZ0Nsb3NlQnV0dG9uBTFjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxJGN0bDAwJE1lc3NhZ2VCb3gxJGJ0bk9rhUQYVfl9Px+K9nEx5E9kzNZtZ8w=">
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


    <script src="./source-ttcn/WebResource(1).axd" type="text/javascript"></script>


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

    <script type="text/javascript" src="./source-ttcn/prototype.ashx"></script>
    <script type="text/javascript" src="./source-ttcn/core.ashx"></script>
    <script type="text/javascript" src="./source-ttcn/converter.ashx"></script>
    <script type="text/javascript" src="./source-ttcn/EduSoft.Web.DefaultMaster,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-ttcn/EduSoft.Web.UC.Logout,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-ttcn/EduSoft.Web.UC.Footer,EduSoft.Web.ashx"></script>

    <script src="./source-ttcn/ScriptResource.axd" type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
        //]]>
    </script>

    <script src="./source-ttcn/ScriptResource(1).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(2).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(3).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(4).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(5).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(6).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(7).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(8).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(9).axd" type="text/javascript"></script>
    <script src="./source-ttcn/ScriptResource(10).axd" type="text/javascript"></script>
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

<%--                                            <img src="./source-ttcn/US.gif" alt="English"--%>
<%--                                                 onclick="changeLanguage_click(&#39;_us&#39;)" id="imgUS"--%>
<%--                                                 title="English">--%>
<%--                                            <img src="./source-ttcn/VI.gif" alt="Vietnamese"--%>
<%--                                                 onclick="changeLanguage_click(&#39;_vi&#39;)" id="imgVi"--%>
<%--                                                 title="Vietnamese">--%>
                                            <span id="ctl00_Header1_Logout1_lblNguoiDung" class="Label"
                                                  style="color:MistyRose;font-size:12px;font-weight:bold;">Chào bạn Trần Văn Đô (B18DCCN158)</span>&nbsp;<span id="ctl00_Header1_Logout1_lblXiet1" class="Label"
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
<%--                                            &nbsp;<select id="selectFont"--%>
<%--                                                          style="font-size: 11px; width: 100px; color: #000080;"--%>
<%--                                                          onchange="selectFont_change()">--%>
<%--                                            <option value="uni">-------Font-------</option>--%>
<%--                                            <option value="uni" selected="">Font Unicode</option>--%>
<%--                                            <option value="abc">Font ABC</option>--%>
<%--                                            <option value="vni">Font Vni</option>--%>
<%--                                            <option value="not">Text không--%>
<%--                                                dấu--%>
<%--                                            </option>--%>
<%--                                        </select>--%>
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
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemLichThi"
                                                      class="Label">XEM LỊCH THI</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>

                                    <div id="ctl00_menu_xemlichthilai" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemLichThiLai"
                                                      class="Label">XEM LỊCH THI LẠI</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_xemhocphi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemHocPhi" class="Label">XEM HỌC PHÍ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_xemdiemthi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemDiem" class="Label">XEM ĐIỂM</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_pnlXemCTDTKhoi" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemCTDTKhoiSV" class="Label">XEM CTĐT</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>

                                    <div id="ctl00_menu_pnlXemMonTienQuyet" class="out-menu">

                                        <div class="left"></div>
                                        <div class="center" style="white-space: nowrap">
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblXemMonTQ" class="Label">XEM MÔN TQ</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_thaydoittcn" class="over-menu">

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
                                            <a onclick="{alert('Chức năng đang phát triển')}">
                                                <span id="ctl00_menu_lblykiensinhvien"
                                                      class="Label">GÓP Ý KIẾN</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_panLiLich" class="out-menu">

<%--                                        <div class="left"></div>--%>
<%--                                        <div class="center" style="white-space: nowrap">--%>
<%--                                            <a href="https://qldt.ptit.edu.vn/Default.aspx?page=sualilich">--%>
<%--                                                <span id="ctl00_menu_lblSuaLiLich" class="Label">SỬA LÝ LỊCH</span></a>--%>
<%--                                        </div>--%>
<%--                                        <div class="right"></div>--%>

                                    </div>


                                    <div id="ctl00_menu_pnlHDSD" class="out-menu">

<%--                                        <div class="left"></div>--%>
<%--                                        <div class="center" style="white-space: nowrap">--%>
<%--                                            <a href="https://qldt.ptit.edu.vn/HDDKMH.htm">--%>
<%--                                                <span id="ctl00_menu_lblHuongDanDangKy"--%>
<%--                                                      class="Label">HƯỚNG DẪN ĐKMH</span></a>--%>
<%--                                        </div>--%>
<%--                                        <div class="right"></div>--%>

                                    </div>


                                </div>

                            </div>

                        </div>

                    </td>
                </tr>
                <tr>
                    <td height="500px" valign="top">

                        <script type="text/javascript">
                            //<![CDATA[
                            Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ctl00$ScriptManager1', document.getElementById('aspnetForm'));
                            Sys.WebForms.PageRequestManager.getInstance()._updateControls([], [], [], 90);
                            //]]>
                        </script>

                        <span id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1"><a
                                id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lbTarget"
                                href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$ctl00$MessageBox1$lbTarget&#39;,&#39;&#39;)"></a><div
                                id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelMessageBox" class="confirmBox"
                                style="display: none; position: fixed; z-index: 100001;">
	<div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelHeader" class="header"
         style="background: url(Images/header.png);repeat-x 0px -200px;">
		<div class="msg">
			<span id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lblPopupHeader" class="Label"
                  style="color:White;font-family:Arial Black;"></span>
		</div><input type="image" name="ctl00$ContentPlaceHolder1$ctl00$MessageBox1$imgCloseButton"
                     id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_imgCloseButton" class="close"
                     src="./source-ttcn/WebResource(2).axd" style="border-width:0px;">
	</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelBody" class="body"
               style="background-color:#E1E5F0;">
		<div class="body-left" style="background-color:#E1E5F0;">
			<img id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl02"
                 src="https://qldt.ptit.edu.vn/default.aspx?page=thaydoittcn" style="border-width:0px;">
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
                   src="./source-ttcn/WebResource(3).axd" style="height:22px;width:70px;border-width:0px;">
		</div>
	</div>
</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal_backgroundElement"
           class="msgbox_messagemodalbackground"
           style="display: none; position: fixed; left: 0px; top: 0px; z-index: 10000;"></div></span>

                        <script language="javascript" type="text/javascript">
                            function MessUpdate(obj) {
                                alert(obj);
                            }

                            function check() {
                                var qr = '';
                                if (qr) {
                                    history.back(1);
                                    return false;
                                }
                                return true;
                            }
                        </script>

                        <style type="text/css">
                            .style1 {
                                width: 322px;
                            }

                            .styl {
                                border: 1px;
                                border-color: Black;
                            }

                            .auto-style1 {
                                height: 23px;
                            }
                        </style>
                        <div class="navigate-base">
                            <div class="title-base">
                                <div class="title">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td width="10px">
                                                <img src="./source-ttcn/icon_04b.gif">
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblTieuDe" class="Label">THAY ĐỔI THÔNG TIN CÁ NHÂN</span>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <fieldset>
                                <div class="styl">
                                    <div id="ctl00_ContentPlaceHolder1_ctl00_pnlEmail">


                                    </div>
                                    <table align="center" style="width: 65%;" cellspacing="0" cellpadding="3">
                                        <tbody>
                                        <tr>
                                            <td colspan="2" bgcolor="#CCCCFF" align="left">&nbsp;&nbsp;<b><span
                                                    id="ctl00_ContentPlaceHolder1_ctl00_lblTitleTTCaNhan" class="Label">Thông tin cá nhân</span></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style1">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblTitleTaiKhoan"
                                                      class="Label">Tài khoản:</span>
                                                <span
                                                        id="ctl00_ContentPlaceHolder1_ctl00_lblTaiKhoan" class="Label"
                                                        style="font-weight:bold;font-style:italic;">B18DCCN158</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style1">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_labelHoTen" class="Label">Họ tên:</span>
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblHoTen"
                                                      class="Label"
                                                      style="font-weight:bold;font-style:italic;">Trần Văn Đô</span>
                                            </td>
                                        </tr>

<%--                                        <tr>--%>
<%--                                            <td class="style1" bgcolor="#CCCCFF" align="left">&nbsp;&nbsp;<b><span--%>
<%--                                                    id="ctl00_ContentPlaceHolder1_ctl00_labelPhone" class="Label">Điện thoại</span></b>--%>
<%--                                            </td>--%>
<%--                                            <td align="right" bgcolor="#CCCCFF">--%>
<%--&lt;%&ndash;                                                <a id="ctl00_ContentPlaceHolder1_ctl00_btnEditPhone"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                   href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$ctl00$btnEditPhone&#39;,&#39;&#39;)"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                   style="color:Blue;">Sửa đổi</a>&nbsp;&nbsp;&ndash;%&gt;--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td align="left" class="style1">--%>
<%--                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblPhone1" class="Label">Điện thoại (1):</span>--%>
<%--                                                <input name="ctl00$ContentPlaceHolder1$ctl00$txtDT1"--%>
<%--                                                       type="text"--%>
<%--                                                       id="ctl00_ContentPlaceHolder1_ctl00_txtDT1"--%>
<%--                                                       disabled="disabled"--%>
<%--                                                       title="Nhập vào số điện thoại!"--%>
<%--                                                       class="TextBox"--%>
<%--                                                       style="font-weight:bold;font-style:italic;width:240px;">--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td align="left" class="style1">--%>
<%--                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblPhone2" class="Label">Điện thoại (2):</span>--%>
<%--                                                <input name="ctl00$ContentPlaceHolder1$ctl00$txtDT2"--%>
<%--                                                       type="text"--%>
<%--                                                       id="ctl00_ContentPlaceHolder1_ctl00_txtDT2"--%>
<%--                                                       disabled="disabled"--%>
<%--                                                       title="Nhập số điện thoại thứ 2(Nếu có)!"--%>
<%--                                                       class="TextBox"--%>
<%--                                                       style="font-weight:bold;font-style:italic;width:240px;">--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td class="style1" align="left" bgcolor="#CCCCFF">&nbsp;&nbsp;<b><span--%>
<%--                                                    id="ctl00_ContentPlaceHolder1_ctl00_lblTitleEmail" class="Label">Email</span></b>--%>
<%--                                            </td>--%>
<%--                                            <td align="right" bgcolor="#CCCCFF">--%>
<%--&lt;%&ndash;                                                <a id="ctl00_ContentPlaceHolder1_ctl00_btnEditEmail"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                   href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$ctl00$btnEditEmail&#39;,&#39;&#39;)"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                   style="color:Blue;">Sửa đổi</a>&nbsp;&nbsp;&ndash;%&gt;--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td align="left" class="style1">--%>
<%--                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblEmail1" class="Label">Địa chỉ Email (1):</span>--%>
<%--                                                <input--%>
<%--                                                        name="ctl00$ContentPlaceHolder1$ctl00$txtEmail1" type="text"--%>
<%--                                                        value="DoTV.B18CN158@stu.ptit.edu.vn"--%>
<%--                                                        onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ctl00$txtEmail1\&#39;,\&#39;\&#39;)&#39;, 0)"--%>
<%--                                                        onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"--%>
<%--                                                        id="ctl00_ContentPlaceHolder1_ctl00_txtEmail1" disabled="disabled"--%>
<%--                                                        title="Nhập địa chỉ Email!" class="TextBox"--%>
<%--                                                        style="font-weight:bold;font-style:italic;width:240px;">--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td align="left" class="style1">--%>
<%--                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblEmail2" class="Label">Địa chỉ Email (2):</span>--%>
<%--                                                <input--%>
<%--                                                        name="ctl00$ContentPlaceHolder1$ctl00$txtEmail2" type="text"--%>
<%--                                                        value="DoTV.B18CN158@stu.ptit.edu.vn"--%>
<%--                                                        onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ctl00$txtEmail2\&#39;,\&#39;\&#39;)&#39;, 0)"--%>
<%--                                                        onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"--%>
<%--                                                        id="ctl00_ContentPlaceHolder1_ctl00_txtEmail2" disabled="disabled"--%>
<%--                                                        title="Nhập địa chỉ Email thứ 2(Nếu có)!" class="TextBox"--%>
<%--                                                        style="font-weight:bold;font-style:italic;width:240px;">--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>


                                        <tr>
                                            <td colspan="2">
                                                <div id="ctl00_ContentPlaceHolder1_ctl00_pnlTDMatKhau"
                                                     style="width:100%;">

                                                    <table width="100%">
                                                        <tbody>
                                                        <tr>
                                                            <td colspan="2" align="left" bgcolor="#CCCCFF">
                                                                &nbsp;&nbsp;<span
                                                                    id="ctl00_ContentPlaceHolder1_ctl00_lblTDMatKhau"
                                                                    class="Label" style="font-weight:bold;">Thay đổi mật khẩu</span>
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblLuuY"
                                                                      class="Label" style="font-weight:bold;">  (Lưu ý: mật khẩu cần khác với mật khẩu mặc định ngày sinh )</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="style1">
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblMKHTai"
                                                                      class="Label">Nhập mật khẩu hiện tại:</span>
                                                                <input
                                                                        name="ctl00$ContentPlaceHolder1$ctl00$txtMKHienTai"
                                                                        type="password"
                                                                        id="ctl00_ContentPlaceHolder1_ctl00_txtMKHienTai"
                                                                        title="Nhập mật khẩu hiện tại!" class="TextBox"
                                                                        style="font-weight:bold;font-style:normal;width:240px;" required onchange="this.value = this.value.trim()">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="style1">
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblMKMoi"
                                                                      class="Label">Nhập mật khẩu mới:</span>
                                                                <input
                                                                        name="ctl00$ContentPlaceHolder1$ctl00$txtMKMoi"
                                                                        type="password"
                                                                        id="ctl00_ContentPlaceHolder1_ctl00_txtMKMoi"
                                                                        title="Nhập vào mật khẩu mới!" class="TextBox"
                                                                        style="font-weight:bold;font-style:normal;width:240px;" required onchange="this.value = this.value.trim()">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="style1">
                                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblXacNhanMK"
                                                                      class="Label">Xác nhận mật khẩu mới:</span>
                                                                <input
                                                                        name="ctl00$ContentPlaceHolder1$ctl00$txtXacNhanMK"
                                                                        type="password"
                                                                        id="ctl00_ContentPlaceHolder1_ctl00_txtXacNhanMK"
                                                                        title="Xác nhận lại mật khẩu mới!" class="TextBox"
                                                                        style="font-weight:bold;font-style:normal;width:240px;" required onchange="this.value = this.value.trim()">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style1">


                                                            </td>
                                                            <td align="left">&nbsp;


                                                                &nbsp;


                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">

                                                            </td>
                                                            <td align="left">

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">

                                                            </td>
                                                            <td align="left">


                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td colspan="2">

                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" align="left">

                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right" class="style1">
                                                <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnLuuLai"
                                                       value="Lưu lại" id="ctl00_ContentPlaceHolder1_ctl00_btnLuuLai"
                                                       class="DefaultButton">
                                            </td>
                                            <td align="left">&nbsp;
                                                <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnHuyBo"
                                                       value="Hủy bỏ" onclick="return check();"
                                                       id="ctl00_ContentPlaceHolder1_ctl00_btnHuyBo"
                                                       class="DefaultButton">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
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
                                        <img src="./source-ttcn/icon_11c.gif" alt="">
                                        <span class="LogoFooter"><span id="ctl00_Footer1_lblCompany" class="Label">Copyright ©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi </span></span>
                                    </td>

                                    <td valign="top" align="left" class="style4">
                                        <img src="./source-ttcn/iconHome.png" alt="" align="right">
                                    </td>
                                    <td align="left" class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx"><span
                                                id="ctl00_Footer1_lbltrangchu" class="Label">Trang Chủ</span></a>
                                    </td>


                                </tr>
                                <tr>
                                    <td class="style5">
                                        <img src="./source-ttcn/icon_11c.gif" alt="">
                                        <a href="https://aqtech.vn/" target="_blank"><span
                                                id="ctl00_Footer1_lblCopyRight" class="Label">Thiết kế bởi cty Phần mềm Anh Quân</span></a>


                                    </td>
                                    <td align="right" valign="top" class="style4">
                                        <img src="./source-ttcn/topTen.gif" width="15px" alt="">
                                    </td>
                                    <td class="style3">
                                        <a href="https://qldt.ptit.edu.vn/default.aspx?page=thaydoittcn#Top"
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
        Sys.Application.initialize();
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
        //]]>
    </script>
</form>


<img src="./source-ttcn/arrowdown.gif" id="arrowhead"></body>
</html>
