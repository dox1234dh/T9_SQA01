<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 3/24/2022
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0055)https://qldt.ptit.edu.vn/Default.aspx?page=thoikhoabieu -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script language="javascript" type="text/javascript">

        var gv = 'False';
    </script>
    <script type="text/javascript" src="./source-tkb/platform.js" async="" defer=""
            gapi_processed="true"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta id="ctl00_metaGoogle" name="google-signin-client_id">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://qldt.ptit.edu.vn/Images/Edusoft.gif">
    <script src="./source-tkb/jquery-2.2.1.js" type="text/javascript"></script>
    <script src="./source-tkb/dialog.js" type="text/javascript"></script>
    <script src="./source-tkb/checkdate.js" type="text/javascript"></script>
    <script src="./source-tkb/balloontip.js" type="text/javascript"></script>
    <script type="text/javascript" src="./js/createTkb.js"></script>
    <link href="./source-tkb/balloontip.css" rel="stylesheet" type="text/css">
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

    <link href="./source-tkb/WebResource.axd" rel="stylesheet" type="text/css">
    <link href="./source-tkb/Standard.css" type="text/css" rel="stylesheet">
    <link href="./source-tkb/StyleSheet.css" type="text/css" rel="stylesheet">
</head>

<body background="./source-tkb/background.png" onload="ShowMess()">
<form name="aspnetForm" method="post" action="https://qldt.ptit.edu.vn/Default.aspx?page=thoikhoabieu" id="aspnetForm"
      enctype="multipart/form-data">
    <div>
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
        <input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="">
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


    <script src="./source-tkb/WebResource(1).axd" type="text/javascript"></script>


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

    <script type="text/javascript" src="./source-tkb/prototype.ashx"></script>
    <script type="text/javascript" src="./source-tkb/core.ashx"></script>
    <script type="text/javascript" src="./source-tkb/converter.ashx"></script>
    <script type="text/javascript" src="./source-tkb/EduSoft.Web.DefaultMaster,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-tkb/EduSoft.Web.UC.Logout,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-tkb/EduSoft.Web.UC.ThoiKhoaBieu,EduSoft.Web.ashx"></script>
    <script type="text/javascript" src="./source-tkb/EduSoft.Web.UC.Footer,EduSoft.Web.ashx"></script>

    <script src="./source-tkb/ScriptResource.axd" type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
        //]]>
    </script>

    <script src="./source-tkb/ScriptResource(1).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(2).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(3).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(4).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(5).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(6).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(7).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(8).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(9).axd" type="text/javascript"></script>
    <script src="./source-tkb/ScriptResource(10).axd" type="text/javascript"></script>
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
                                        <script type="text/javascript" src="js/login.js"></script>
                                        <div id="ctl00_Header1_Logout1_dLog" class="logout"
                                             style="text-align: right; margin-bottom: 0px">

<%--                                            <img src="./source-tkb/US.gif" alt="English"--%>
<%--                                                 onclick="changeLanguage_click(&#39;_us&#39;)" id="imgUS"--%>
<%--                                                 title="English">--%>
<%--                                            <img src="./source-tkb/VI.gif" alt="Vietnamese"--%>
<%--                                                 onclick="changeLanguage_click(&#39;_vi&#39;)" id="imgVi"--%>
<%--                                                 title="Vietnamese">--%>
                                            <span id="ctl00_Header1_Logout1_lblNguoiDung" class="Label"
                                                  style="color:MistyRose;font-size:12px;font-weight:bold;"></span>&nbsp;
                                            <span id="ctl00_Header1_Logout1_lblXiet1" class="Label"
                                                               style="color:MistyRose;"> | </span>
                                            <a id="ctl00_Header1_Logout1_lbtnChangePass"
                                               href="/ttcn.jsp"
                                               style="color:MistyRose;font-size:12px;font-weight:bold;font-family: &#39;Tahoma&#39;, Times, serif">Thay
                                                đổi mật khẩu</a>
                                            <span id="ctl00_Header1_Logout1_lblXiet2" class="Label"
                                                  style="color:MistyRose;"> | </span>
                                            <a id="ctl00_Header1_Logout1_lbtnLogOut"
                                               href="/index.jsp"
                                               onclick="clearSession()"
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
                                            <a href="dkmh.jsp">
                                                <span id="ctl00_menu_lblDangKyMonHoc"
                                                      class="Label">ĐĂNG KÝ MÔN HỌC</span></a>
                                        </div>
                                        <div class="right"></div>

                                    </div>


                                    <div id="ctl00_menu_thoikhoabieu" class="over-menu">

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
                     src="./source-tkb/WebResource(2).axd" style="border-width:0px;">
	</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_panelBody" class="body"
               style="background-color:#E1E5F0;">
		<div class="body-left" style="background-color:#E1E5F0;">
			<img id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ctl02"
                 src="/tkb.jsp" style="border-width:0px;">
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
                   src="./source-tkb/WebResource(3).axd" style="height:22px;width:70px;border-width:0px;">
		</div>
	</div>
</div><div id="ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal_backgroundElement"
           class="msgbox_messagemodalbackground"
           style="display: none; position: fixed; left: 0px; top: 0px; z-index: 10000;"></div></span>


                        <style type="text/css">
                            #dhtmltooltip {
                                position: absolute;
                                padding: 2px;
                                visibility: hidden;
                                z-index: 100;
                                height: 230px;
                            }

                            #dhtmltooltip2 {
                                position: absolute;
                                padding: 2px;
                                visibility: hidden;
                                z-index: 101;
                                height: 15px;
                            }

                            .style1 {
                                height: 34px;
                            }

                            .style2 {
                                height: 23px;
                            }

                            .auto-style1 {
                                height: 1px;
                            }
                        </style>
                        <div id="dhtmltooltip"
                             style="background-image: url(https://qldt.ptit.edu.vn/App_Themes/Standard/Images/tooltip.png); text-align: center; left: -1000px; top: 261px; visibility: hidden;">
                            <table cellpadding="0" border="0" cellspacing="0"
                                   style="text-align:left;font-size:10pt;font-family:tahoma;font-weight:bold">
                                <tbody>
                                <tr height="20px">
                                    <td colspan="3" valign="top">
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td width="5px"></td>
                                                <td width="30px" valign="top"><img
                                                        src="https://qldt.ptit.edu.vn/App_Themes/Standard/Images/Learning.gif"
                                                        width="30" height="42"></td>
                                                <td align="left"><span
                                                        style="font-size:11pt ;font-weight:bold;color:#ffffff">Phát triển ứng dụng cho các thiết bị di động</span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr height="20px">
                                    <td width="40px"></td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td>Mã Môn Học :</td>
                                    <td><span style="color:Teal">INT1449 nhóm 05 </span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td>Tên Môn Học :</td>
                                    <td><span style="color:Teal">Phát triển ứng dụng cho các thiết bị di động</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td width="120px">Phòng Học :</td>
                                    <td><span style="color:Teal">1109355</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td>Thứ :</td>
                                    <td><span style="color:Teal">Thứ Năm</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td width="120px">Tiết Bắt Đầu :</td>
                                    <td><span style="color:Teal">1</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td width="120px">Số Tiết :</td>
                                    <td><span style="color:Teal">2</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td>Giảng Viên :</td>
                                    <td><span style="color:Teal">N.H.Anh</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                    <td>Lớp :</td>
                                    <td><span style="color:Teal">D18-059</span></td>
                                </tr>
                                <tr>
                                    <td width="40px"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="dhtmltooltip2" style="text-align: center"></div>
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

                            function ddrivetip(maLop, tenMH, maMH, Thu, TC, Phong, tbd, st, giaoVien, ngaybd, ngaykt, thecolor, thewidth, num, tkbTuan) {
                                if (ns6 || ie) {
                                    if (typeof thewidth != "undefined") tipobj.style.width = thewidth + "px"
                                    if (typeof thecolor != "undefined" && thecolor != "") tipobj.style.backgroundColor = thecolor;

                                    var nums = num.split("-");
                                    // console.log(nums);
                                    if (tkbTuan == "0") {
                                        tipobj.innerHTML = "<table cellpadding='0' border='0' CellSpacing='0' style='text-align:left;font-size:10pt;font-family:tahoma;font-weight:bold'><tr height='20px'><td colspan='3' valign='top'><table><tr><td width='5px'></td><td width='30px' valign='top'><IMG src='https://qldt.ptit.edu.vn/App_Themes/Standard/Images/Learning.gif' width='30' height='42'/></td><td align='left'><span style='font-size:11pt ;font-weight:bold;color:#ffffff'>" + tenMH + "</span></td></tr></table></td></tr><tr height='20px'><td width='40px'></td><td colspan='2'> </td></tr><tr><td width='40px'></td><td>" + nums[0] + " :</td><td><span style='color:Teal'>" + maMH + "</span></td></tr><tr><td width='40px'></td><td>" + nums[1] + " :</td><td><span style='color:Teal'>" + tenMH + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[2] + " :</td><td><span style='color:Teal'>" + Phong + "</span></td></tr><tr><td width='40px'></td><td>" + nums[3] + " :</td><td><span style='color:Teal'>" + Thu + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[4] + " :</td><td><span style='color:Teal'>" + tbd + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[5] + " :</td><td><span style='color:Teal'>" + st + "</span></td></tr><tr><td width='40px'></td><td>" + nums[6] + " :</td><td><span style='color:Teal'>" + giaoVien.split('_').join(' ') + "</span></td></tr>  <tr><td width='40px'></td><td>" + nums[9] + " :</td><td><span style='color:Teal'>" + maLop + "</span></td></tr>  <tr><td width='40px'></td><td>" + nums[7] + " :</td><td><span style='color:Teal'>" + ngaybd + "</span><span style='font-style:italic;color:gray'> " + nums[8] + "</span> <span style='color:Teal'>" + ngaykt + "</span></td></tr></table>";
                                    } else {
                                        tipobj.innerHTML = "<table cellpadding='0' border='0' CellSpacing='0' style='text-align:left;font-size:10pt;font-family:tahoma;font-weight:bold'><tr height='20px'><td colspan='3' valign='top'><table><tr><td width='5px'></td><td width='30px' valign='top'><IMG src='https://qldt.ptit.edu.vn/App_Themes/Standard/Images/Learning.gif' width='30' height='42'/></td><td align='left'><span style='font-size:11pt ;font-weight:bold;color:#ffffff'>" + tenMH + "</span></td></tr></table></td></tr><tr height='20px'><td width='40px'></td><td colspan='2'> </td></tr><tr><td width='40px'></td><td>" + nums[0] + " :</td><td><span style='color:Teal'>" + maMH + "</span></td></tr><tr><td width='40px'></td><td>" + nums[1] + " :</td><td><span style='color:Teal'>" + tenMH + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[2] + " :</td><td><span style='color:Teal'>" + Phong + "</span></td></tr><tr><td width='40px'></td><td>" + nums[3] + " :</td><td><span style='color:Teal'>" + Thu + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[4] + " :</td><td><span style='color:Teal'>" + tbd + "</span></td></tr><tr><td width='40px'></td><td width='120px'>" + nums[5] + " :</td><td><span style='color:Teal'>" + st + "</span></td></tr><tr><td width='40px'></td><td>" + nums[6] + " :</td><td><span style='color:Teal'>" + giaoVien.split('_').join(' ') + "</span></td></tr>  <tr><td width='40px'></td><td>" + nums[9] + " :</td><td><span style='color:Teal'>" + maLop + "</span></td></tr>  <tr><td width='40px'></td></tr></table>";
                                    }
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

                            function ddrivetiptuan(NgayGioiHanHoc) {
                                if (ns6 || ie) {
                                    var thewidth = 170;
                                    if (typeof thewidth != "undefined") tipobj.style.width = thewidth + "px"
                                    tipobj = document.getElementById("dhtmltooltip2");
                                    tipobj.innerHTML = "<table cellpadding='0' border='0' CellSpacing='0' style='text-align:left;font-size:10pt;font-family:tahoma;background-color:#2E6C92; color:White; '><tr height='20px'><td align='center' >" + NgayGioiHanHoc + "</td></tr></table>";
                                    enabletip = true
                                    return false
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

                            function showGrv() {
                            }

                            function InTKBClick() {
                                EduSoft.Web.UC.ThoiKhoaBieu.LoadDatatablePrint(LoadDatatablePrint_Callback)
                            }

                            function LoadDatatablePrint_Callback(obj) {
                                window.open('Report/TKBReportView.aspx', '_Blank');
                            }
                        </script>


                        <div id="ctl00_ContentPlaceHolder1_ctl00_pnlPage">


                            <div class="navigate-base">
                                <div class="title-base">
                                    <div class="title">
                                        <table style="width: 480px">
                                            <tbody>
                                            <tr>
                                                <td width="10px">
                                                    <img src="./source-tkb/icon_04b.gif">
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentPlaceHolder1_ctl00_lbltieudetkb"
                                                          class="Label">Thông Tin Thời Khóa Biểu</span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <table>
                                    <tbody>
                                    <tr id="ctl00_ContentPlaceHolder1_ctl00_pnlTTCanhan">
                                        <td colspan="2">


                                        </td>
                                    </tr>

                                    <tr>
                                        <td rowspan="3" width="80px">
                                            <img src="./source-tkb/icon_lich.png" alt="" width="70px" height="60px">
                                        </td>
                                        <td align="left" valign="top">
                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblTT" class="Label"
                                                  style="font-size:10pt;">Học kỳ xem TKB</span>&nbsp;
<%--                                            <select name="ctl00$ContentPlaceHolder1$ctl00$ddlChonNHHK"--%>
<%--                                                    onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ctl00$ddlChonNHHK\&#39;,\&#39;\&#39;)&#39;, 0)"--%>
<%--                                                    id="ctl00_ContentPlaceHolder1_ctl00_ddlChonNHHK" class="DropDown"--%>
<%--                                                    style="height:20px;width:215px;">--%>
<%--                                                <option selected="selected" value="20212">Học kỳ 2 - Năm học 2021-2022--%>
<%--                                                </option>--%>
<%--                                                <option value="20211">Học kỳ 1 - Năm học 2021-2022</option>--%>
<%--                                                <option value="20203">Học kỳ 3 - Năm học 2020-2021</option>--%>
                                                <span class="DropDown" style="height:20px;width:215px;font-size: 10pt">Học kỳ 2 - Năm học 2020-2021</span>

                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-size: 10px">
<%--                                            <select name="ctl00$ContentPlaceHolder1$ctl00$ddlLoai"--%>
<%--                                                    onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ctl00$ddlLoai\&#39;,\&#39;\&#39;)&#39;, 0)"--%>
<%--                                                    id="ctl00_ContentPlaceHolder1_ctl00_ddlLoai" class="DropDown"--%>
<%--                                                    style="width:150px;">--%>
                                                <span class="DropDown" style="width:150px;">TKB theo tuần</span>
<%--                                                <option value="2">TKB Toàn Trường</option>--%>
<%--                                                <option value="1">TKB học kỳ cá nhân</option>--%>

                                            </select>


                                            <select name="ctl00$ContentPlaceHolder1$ctl00$ddlTuan"
                                                    id="ctl00_ContentPlaceHolder1_ctl00_ddlTuan" class="DropDown"
                                                    style="width:300px;"
                                            onchange = "getIdTuanHoc()">
                                            </select>


<%--                                            <input type="button" id="InTKB" onclick="InTKBClick()" value="In TKB"--%>
<%--                                                   style="font-size: 11px; height: 20px;">&nbsp;--%>


                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblNote" class="Label"
                                                  style="font-style:italic;">( Lưu ý: tuần 26 tương ứng với tuần 1 của học kỳ, bắt đầu từ ngày 07/02/2022)  </span>
                                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblNote2" class="Label">...</span>
                                            <br>


                                        </td>
                                    </tr>
                                    </tbody>
                                </table>


                                <div style="width: 100%; text-align: center;">

                                </div>


                                <div id="ctl00_ContentPlaceHolder1_ctl00_pnlTuan">


                                    <table id="TKB" class="classTable"
                                           cellspacing="0" cellpadding="1" border="0"
                                           style="border-color:#999999;border-width:1px;border-style:Solid;height:100%;width:100%;border-collapse:collapse;">
                                        <thead>
                                        <tr id="ctl00_ContentPlaceHolder1_ctl00_TableRow7" style="height:18px;">
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell123" align="center"
                                                style="height:18px;width:50px;"></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell124" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;height:18px;width:100px;white-space:nowrap;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt2"
                                                      class="Label">THỨ HAI</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell125" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt3"
                                                      class="Label">THỨ BA</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell126" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt4"
                                                      class="Label">THỨ TƯ</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell127" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt5"
                                                      class="Label">THỨ NĂM</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell128" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt6"
                                                      class="Label">THỨ SÁU</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell129" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblt7"
                                                      class="Label">THỨ BẢY</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell130" align="center"
                                                style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lbltcn"
                                                      class="Label">CHỦ NHẬT</span></td>
                                            <td id="ctl00_ContentPlaceHolder1_ctl00_TableCell131"
                                                style="width:50px;"></td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td title="Tiết 1 (từ 07:30 đến 08:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 1
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td onmouseover="ddrivetip(&#39;D18-059&#39;,&#39;Phát triển ứng dụng cho các thiết bị di động&#39;,&#39;INT1449 nhóm 05 tổ thực hành 02&#39;,&#39;Thứ Tư&#39;,&#39;3&#39;,&#39;1109355&#39;,&#39;1&#39;,&#39;4&#39;,&#39;N.H.Anh&#39;,&#39;09/02/2022&#39;,&#39;12/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1109355,-----6---0---4,1,4" onmouseout="hideddrivetip()"
                                                rowspan="4"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Phát triển ứng dụng cho các thiết bị di động</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1109355</span>

                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-059&#39;,&#39;Phát triển ứng dụng cho các thiết bị di động&#39;,&#39;INT1449 nhóm 05 &#39;,&#39;Thứ Năm&#39;,&#39;3&#39;,&#39;1109355&#39;,&#39;1&#39;,&#39;2&#39;,&#39;N.H.Anh&#39;,&#39;10/02/2022&#39;,&#39;20/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1109355,123456789012345,1,2" onmouseout="hideddrivetip()"
                                                rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Phát triển ứng dụng cho các thiết bị di động</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1109355</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td onmouseover="ddrivetip(&#39;D18-008&#39;,&#39;Chuyên đề công nghệ phần mềm&#39;,&#39;INT1408 nhóm 01 &#39;,&#39;Thứ Bảy&#39;,&#39;1&#39;,&#39;1131751&#39;,&#39;1&#39;,&#39;2&#39;,&#39;N.D.Phương&#39;,&#39;12/02/2022&#39;,&#39;03/04/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1131751,-2345678,1,2" onmouseout="hideddrivetip()" rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Chuyên đề công nghệ phần mềm</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1131751</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 1 (từ 07:30 đến 08:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 1
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 2 (từ 08:30 đến 09:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 2
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 2 (từ 08:30 đến 09:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 2
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 3 (từ 09:30 đến 10:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 3
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 3 (từ 09:30 đến 10:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 3
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 4 (từ 10:30 đến 11:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 4
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 4 (từ 10:30 đến 11:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 4
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 5 (từ 12:30 đến 13:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 5
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 5 (từ 12:30 đến 13:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 5
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 6 (từ 13:30 đến 14:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 6
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 6 (từ 13:30 đến 14:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 6
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 7 (từ 14:30 đến 15:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 7
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td onmouseover="ddrivetip(&#39;D18-063&#39;,&#39;Xây dựng các hệ thống nhúng&#39;,&#39;INT1461 nhóm 01 &#39;,&#39;Thứ Tư&#39;,&#39;3&#39;,&#39;70305&#39;,&#39;7&#39;,&#39;2&#39;,&#39;V.H.Nam&#39;,&#39;09/02/2022&#39;,&#39;19/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="70305,123456789012345,7,2" onmouseout="hideddrivetip()"
                                                rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Xây dựng các hệ thống nhúng</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">70305</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-051&#39;,&#39;Phát triển phần mềm hướng dịch vụ&#39;,&#39;INT1448 nhóm 01 &#39;,&#39;Thứ Năm&#39;,&#39;3&#39;,&#39;1109606&#39;,&#39;7&#39;,&#39;2&#39;,&#39;N.T.Khánh&#39;,&#39;10/02/2022&#39;,&#39;20/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1109606,123456789012345,7,2" onmouseout="hideddrivetip()"
                                                rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Phát triển phần mềm hướng dịch vụ</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1109606</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-022&#39;,&#39;Đảm bảo chất lượng phần mềm&#39;,&#39;INT1416 nhóm 01 &#39;,&#39;Thứ Sáu&#39;,&#39;3&#39;,&#39;1131446&#39;,&#39;7&#39;,&#39;2&#39;,&#39;Đ.T.B.Ngọc&#39;,&#39;11/02/2022&#39;,&#39;21/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1131446,123456789012345,7,2" onmouseout="hideddrivetip()"
                                                rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Đảm bảo chất lượng phần mềm</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1131446</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 7 (từ 14:30 đến 15:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 7
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 8 (từ 15:30 đến 16:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 8
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 8 (từ 15:30 đến 16:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 8
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 9 (từ 16:30 đến 17:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 9
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td onmouseover="ddrivetip(&#39;D18-039&#39;,&#39;Kiến trúc và thiết kế phần mềm&#39;,&#39;INT1427 nhóm 04 &#39;,&#39;Thứ Năm&#39;,&#39;3&#39;,&#39;1116189&#39;,&#39;9&#39;,&#39;2&#39;,&#39;T.Đ.Quế&#39;,&#39;10/02/2022&#39;,&#39;20/05/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1116189,123456789012345,9,2" onmouseout="hideddrivetip()"
                                                rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Kiến trúc và thiết kế phần mềm</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1116189</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 9 (từ 16:30 đến 17:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 9
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 10 (từ 17:30 đến 18:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 10
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 10 (từ 17:30 đến 18:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 10
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 11 (từ 19:30 đến 20:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 11
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td onmouseover="ddrivetip(&#39;H-009&#39;,&#39;Tập huấn kiến thức và kỹ năng bảo đảm an toàn, phòng chống và điều trị dịch bệnh trong thời gian trở lại trường học tập và làm việc&#39;,&#39;TLCD nhóm 09 &#39;,&#39;Thứ Ba&#39;,&#39;0&#39;,&#39;195974&#39;,&#39;11&#39;,&#39;2&#39;,&#39;&#39;,&#39;08/02/2022&#39;,&#39;16/03/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="195974,-----6,11,2" onmouseout="hideddrivetip()" rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Tập huấn kiến thức và kỹ năng bảo đảm an toàn, phòng chống và điều trị dịch bệnh trong thời gian trở lại trường học tập và làm việc</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">195974</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-063&#39;,&#39;Xây dựng các hệ thống nhúng&#39;,&#39;INT1461 nhóm 01 &#39;,&#39;Thứ Tư&#39;,&#39;3&#39;,&#39;70305&#39;,&#39;11&#39;,&#39;2&#39;,&#39;V.H.Nam&#39;,&#39;09/02/2022&#39;,&#39;24/03/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="70305,1234567,11,2" onmouseout="hideddrivetip()" rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Xây dựng các hệ thống nhúng</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">70305</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-051&#39;,&#39;Phát triển phần mềm hướng dịch vụ&#39;,&#39;INT1448 nhóm 01 &#39;,&#39;Thứ Năm&#39;,&#39;3&#39;,&#39;1109606&#39;,&#39;11&#39;,&#39;2&#39;,&#39;N.T.Khánh&#39;,&#39;10/02/2022&#39;,&#39;25/03/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1109606,1234567,11,2" onmouseout="hideddrivetip()" rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Phát triển phần mềm hướng dịch vụ</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1109606</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td onmouseover="ddrivetip(&#39;D18-022&#39;,&#39;Đảm bảo chất lượng phần mềm&#39;,&#39;INT1416 nhóm 01 &#39;,&#39;Thứ Sáu&#39;,&#39;3&#39;,&#39;1131446&#39;,&#39;11&#39;,&#39;2&#39;,&#39;Đ.T.B.Ngọc&#39;,&#39;11/02/2022&#39;,&#39;26/03/2022&#39;,&#39;&#39;,&#39;420&#39;,&#39;Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp&#39;)"
                                                maph="1131446,1234567,11,2" onmouseout="hideddrivetip()" rowspan="2"
                                                style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                <table cellpadding="0" border="0" cellspacing="0"
                                                       style="text-align:left;width:90px;cursor:pointer"
                                                       class="textTable">
                                                    <tbody>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="color:Teal">Đảm bảo chất lượng phần mềm</span>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="90px">
                                                            <span style="font-style:italic; color:gray">Phòng:</span>
                                                            <span style="color:Teal">1131446</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 11 (từ 19:30 đến 20:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 11
                                            </td>
                                        </tr>
                                        <tr>
                                            <td title="Tiết 12 (từ 20:30 đến 21:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 12
                                            </td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                                            <td title="Tiết 12 (từ 20:30 đến 21:20)" align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;">
                                                Tiết 12
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;"></td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ HAI
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ BA
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ TƯ
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ NĂM
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ SÁU
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                THỨ BẢY
                                            </td>
                                            <td align="center"
                                                style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                                                CHỦ NHẬT
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDienGiaiMauTKBHKCu">

                                    </div>
                                    <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDienGiaiNghiDay">

                                    </div>
                                    <table style="width: 100%; text-align: left">
                                        <tbody>
                                        <tr>
                                            <td align="center" width="20px">
                                                <div style="width: 15px; height: 15px; background-color: YellowGreen">
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblmontrung" class="Label">Môn học chỉ trùng một vài tiết</span>
                                            </td>
                                            <td align="center">
                                                <div style="text-align: left">
                                                    <input type="button" name="ctl00$ContentPlaceHolder1$ctl00$btnDt"
                                                           value="Tuần Đầu" id="btnStart"
                                                           class="DefaultButton"
                                                           onclick="{$('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val('TUANHOC26');
                                                        getApiTkb('TUANHOC26');
                                                        $('#btnBefore').attr('disabled','disabled');
                                                        $('#btnAfter').attr('disabled',false)}">
                                                    <input type="button"
                                                           name="ctl00$ContentPlaceHolder1$ctl00$btnTrangTruoc"
                                                           value="Tuần Trước"
                                                           id="btnBefore"
                                                           class="DefaultButton"
                                                           onclick="btnbefore()">
                                                    <input type="button"
                                                           name="ctl00$ContentPlaceHolder1$ctl00$btnTuanToi"
                                                           value="Tuần Kế"
                                                           id="btnAfter"
                                                           class="DefaultButton"
                                                           onclick="btnafter()">
                                                    <input type="button"
                                                           name="ctl00$ContentPlaceHolder1$ctl00$btnTuanCuoi"
                                                           value="Tuần Cuối"
                                                           id="btnEnd"
                                                           class="DefaultButton"
                                                           onclick="{$('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val('TUANHOC47');
                                                        getApiTkb('TUANHOC47');
                                                    $('#btnAfter').attr('disabled','disabled');
                                                    $('#btnBefore').attr('disabled',false)}">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20px" align="center" class="auto-style1">
                                                <div style="width: 15px; height: 15px; background-color: #CCCCFF"></div>
                                            </td>
                                            <td class="auto-style1">
                        <span id="ctl00_ContentPlaceHolder1_ctl00_lbltrungtatca" class="Label">
      Môn học trùng tất cả các tiết
    </span></td>
                                            <td class="auto-style1"></td>
                                        </tr>

                                        <tr>
                                            <td width="20px" align="center">
                                                <div style="width: 15px; height: 15px; background-color: yellow"></div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_Label3" class="Label">Thời khóa biểu học kỳ cũ</span>
                                            </td>
                                            <td></td>


                                        </tr>

                                        <tr>
                                            <td width="20px" align="center">
                                                <div style="width: 15px; height: 15px; background-color: lightpink"></div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_Label7" class="Label">Giảng viên đã đăng ký nghỉ dạy</span>
                                            </td>
                                            <td></td>


                                        </tr>

                                        <tr>
                                            <td colspan="3">
                                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblMonHocKhongXepTKB"
                                                      class="Label"
                                                      style="color:Red;font-size:Medium;font-weight:bold;"></span>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>

                                </div>


<%--                                <span id="ctl00_ContentPlaceHolder1_ctl00_lblNoteUpdate" class="Label"--%>
<%--                                      style="color:Blue;font-weight:bold;font-style:italic;text-align: right;">( Dữ liệu được cập nhật vào lúc: 21:30 Ngày: 7/3/2022)</span>--%>

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
                                        <img src="./source-tkb/icon_11c.gif" alt="">
                                        <span class="LogoFooter"><span id="ctl00_Footer1_lblCompany" class="Label">Copyright ©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi </span></span>
                                    </td>

                                    <td valign="top" align="left" class="style4">
                                        <img src="./source-tkb/iconHome.png" alt="" align="right">
                                    </td>
                                    <td align="left" class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx"><span
                                                id="ctl00_Footer1_lbltrangchu" class="Label">Trang Chủ</span></a>
                                    </td>


                                </tr>
                                <tr>
                                    <td class="style5">
                                        <img src="./source-tkb/icon_11c.gif" alt="">
                                        <a href="https://aqtech.vn/" target="_blank"><span
                                                id="ctl00_Footer1_lblCopyRight" class="Label">Thiết kế bởi cty Phần mềm Anh Quân</span></a>


                                    </td>
                                    <td align="right" valign="top" class="style4">
                                        <img src="./source-tkb/topTen.gif" width="15px" alt="">
                                    </td>
                                    <td class="style3">
                                        <a href="https://qldt.ptit.edu.vn/Default.aspx?page=thoikhoabieu#Top"
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
                "dynamicServicePath": "/Default.aspx",
                "id": "ctl00_ContentPlaceHolder1_ctl00_MessageBox1_ajaxModal"
            }, null, null, $get("ctl00_ContentPlaceHolder1_ctl00_MessageBox1_lbTarget"));
        });
        //]]>
    </script>
</form>


<%--<img src="./source-tkb/arrowdown.gif" id="arrowhead">--%>
</body>
</html>
