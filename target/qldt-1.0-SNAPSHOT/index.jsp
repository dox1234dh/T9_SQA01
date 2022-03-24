<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0051)https://qldt.ptit.edu.vn/default.aspx?page=dangnhap -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script language="javascript" type="text/javascript">
        var gv = 'False';
    </script>
    <script type="text/javascript" src="source/platform.js" async="" defer=""
            gapi_processed="true"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta id="ctl00_metaGoogle" name="google-signin-client_id">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://qldt.ptit.edu.vn/Images/Edusoft.gif">
    <script src="source/jquery-2.2.1.js" type="text/javascript"></script>
    <script src="source/dialog.js" type="text/javascript"></script>
    <script src="source/checkdate.js" type="text/javascript"></script>
    <script src="source/balloontip.js" type="text/javascript"></script>
    <link href="./source/balloontip.css" rel="stylesheet" type="text/css">
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

    <link href="./source/Standard.css" type="text/css" rel="stylesheet">
    <link href="./source/StyleSheet.css" type="text/css" rel="stylesheet">
</head>

<body background="./source/background.png" onload="ShowMess()">
<form name="aspnetForm" method="post" action="https://qldt.ptit.edu.vn/default.aspx?page=dangnhap" id="aspnetForm"
      enctype="multipart/form-data">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="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">
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


<%--    <script src="./source/WebRe./source.axd" type="text/javascript"></script>--%>


    <script type="text/javascript" src="source/prototype.js"></script>
    <script type="text/javascript" src="source/core.js"></script>
    <script type="text/javascript" src="source/converter.js"></script>
    <script type="text/javascript" src="source/EduSoft.Web.DefaultMaster,EduSoft.Web.js"></script>
    <script type="text/javascript" src="source/EduSoft.Web.UC.Logout,EduSoft.Web.js"></script>
    <script type="text/javascript" src="source/EduSoft.Web.UC.DangNhap,EduSoft.Web.js"></script>
    <script type="text/javascript" src="source/EduSoft.Web.UC.Footer,EduSoft.Web.js"></script>

<%--    <script src="./source/ScriptRe./source.axd" type="text/javascript"></script>--%>
<%--    <script type="text/javascript">--%>
<%--        //<![CDATA[--%>
<%--        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');--%>
<%--        //]]>--%>
<%--    </script>--%>

<%--    <script src="./source/ScriptRe./source(1).axd" type="text/javascript"></script>--%>
    <div>

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
    </div>
    <div align="center">
        <div class="base">

            <table>
                <tbody>
                <tr>
                    <td>


                        <div style="background-image: url(./source/Images/bg_heading_thongbao.png)">
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

                                            <img src="./source/US.gif" alt="English"
                                                 onclick="changeLanguage_click(&#39;_us&#39;)" id="imgUS"
                                                 title="English">
                                            <img src="./source/VI.gif" alt="Vietnamese"
                                                 onclick="changeLanguage_click(&#39;_vi&#39;)" id="imgVi"
                                                 title="Vietnamese">
                                            <span id="ctl00_Header1_Logout1_lblNguoiDung" class="Label"
                                                  style="color:MistyRose;font-size:12px;font-weight:bold;">Chào bạn </span>&nbsp;


                                            <a id="ctl00_Header1_Logout1_lbtnLogOut"
                                               href="javascript:__doPostBack(&#39;ctl00$Header1$Logout1$lbtnLogOut&#39;,&#39;&#39;)"
                                               style="color:MistyRose;font-size:10pt;font-weight:bold;font-family: &#39;Tahoma&#39;, Times, serif">Đăng
                                                Nhập</a>
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
                                            <a href="localhost:8080">
                                                <span id="ctl00_menu_lblTrangChu" class="Label">TRANG CHỦ</span></a>
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


                        <script src="source/jquery-2.2.3.min.js"></script>
                        <script src="source/jsrsasign-latest-all-min.js"></script>
                        <script src="source/graph-js-sdk-web.js"></script>
<%--                        <script src="source/Login365_1.js"></script>--%>
                        <script src="js/login.js"></script>
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

<%--                        <script type="text/javascript">--%>
<%--                            //<![CDATA[--%>
<%--                            Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ctl00$ScriptManager1', document.getElementById('aspnetForm'));--%>
<%--                            Sys.WebForms.PageRequestManager.getInstance()._updateControls([], [], [], 90);--%>
<%--                            //]]>--%>
<%--                        </script>--%>


                        <div id="ctl00_ContentPlaceHolder1_ctl00_vLogin">

                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tbody>
                                <tr>
                                    <td valign="top" style="background-image: url(./source/Images/menuLogLeft.png)"
                                        width="320px" height="34px">
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td>
                                                    <div class="icons"></div>
                                                </td>
                                                <td>
                                                    <a id="ctl00_ContentPlaceHolder1_ctl00_lnkBtnQuenMK"
                                                       href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$ctl00$lnkBtnQuenMK&#39;,&#39;&#39;)"
                                                       style="color:Blue;font-family:Tahoma;font-size:9pt;">Quên mật
                                                        khẩu!</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="background-image: url(./source/Images/loginGiua.png)" height="34px"
                                        width="475px">
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td width="95px" align="center">&nbsp;
                                                    <span id="ctl00_ContentPlaceHolder1_ctl00_lblTenDangNhap"
                                                          class="Label">Tên Đăng Nhập</span></td>
                                                <td align="left" width="100px">
                                                    <input name="ctl00$ContentPlaceHolder1$ctl00$txtTaiKhoa" type="text"
                                                           id="ctl00_ContentPlaceHolder1_ctl00_txtTaiKhoa"
                                                           class="TextBox"
                                                           style="border-color:White;border-style:None;height:16px;width:110px;">
                                                </td>
                                                <td width="100px" align="center">&nbsp;<span
                                                        id="ctl00_ContentPlaceHolder1_ctl00_lblMatKhau" class="Label">Mật Khẩu</span>
                                                </td>
                                                <td width="100px">
                                                    <input name="ctl00$ContentPlaceHolder1$ctl00$txtMatKhau"
                                                           type="password"
                                                           id="ctl00_ContentPlaceHolder1_ctl00_txtMatKhau"
                                                           class="TextBox"
                                                           style="border-color:White;border-style:None;height:16px;width:120px;">
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>

                                    </td>
                                    <td valign="middle"
                                        style="background-image: url(./source/Images/menuNavigateLogRight.png)"
                                        height="34px" width="75px">
                                        <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnDangNhap"
                                               value="Đăng Nhập" id="ctl00_ContentPlaceHolder1_ctl00_btnDangNhap"
                                               class="DefaultButton" onclick="login()">

                                    </td>
                                    <td valign="middle"
                                        style="background-image: url(./source/Images/menuNavigateLogRight.png)"
                                        height="34px" width="120px">


                                    </td>

                                </tr>

                                </tbody>
                            </table>


                        </div>


<%--                        <script src="source/Login365.js"></script>--%>
<%--                        <script language="javascript" type="text/javascript">--%>

<%--                            //Đăng ký sự kiện cho button Login365--%>
<%--                            $('#btnLogin365').attr('href', buildAuthUrl());--%>

<%--                        </script>--%>


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
                                        <img src="./source/icon_11c.gif" alt="">
                                        <span class="LogoFooter"><span id="ctl00_Footer1_lblCompany" class="Label">Copyright ©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi </span></span>
                                    </td>

                                    <td valign="top" align="left" class="style4">
                                        <img src="./source/iconHome.png" alt="" align="right">
                                    </td>
                                    <td align="left" class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx"><span
                                                id="ctl00_Footer1_lbltrangchu" class="Label">Trang Chủ</span></a>
                                    </td>


                                </tr>
                                <tr>
                                    <td class="style5">
                                        <img src="./source/icon_11c.gif" alt="">
                                        <a href="https://aqtech.vn/" target="_blank"><span
                                                id="ctl00_Footer1_lblCopyRight" class="Label">Thiết kế bởi cty Phần mềm Anh Quân</span></a>


                                    </td>
                                    <td align="right" valign="top" class="style4">
                                        <img src="./source/topTen.gif" width="15px" alt="">
                                    </td>
                                    <td class="style3">
                                        <a href="https://qldt.ptit.edu.vn/default.aspx?page=dangnhap#Top"
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


<%--    <script type="text/javascript">--%>
<%--        //<![CDATA[--%>
<%--        Sys.Application.initialize();--%>
<%--        //]]>--%>
<%--    </script>--%>
</form>


<%--<img src="./source/arrowdown.gif" id="arrowhead"></body>--%>
</html>