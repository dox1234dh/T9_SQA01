if(typeof EduSoft == "undefined") EduSoft={};
if(typeof EduSoft.Web == "undefined") EduSoft.Web={};
if(typeof EduSoft.Web.UC == "undefined") EduSoft.Web.UC={};
EduSoft.Web.UC.DangNhap_class = function() {};
Object.extend(EduSoft.Web.UC.DangNhap_class.prototype, Object.extend(new AjaxPro.AjaxClass(), {
	CheckGoogle: function(token) {
		return this.invoke("CheckGoogle", {"token":token}, this.CheckGoogle.getArguments().slice(1));
	},
	CheckLogin365: function(emailSinhVien) {
		return this.invoke("CheckLogin365", {"emailSinhVien":emailSinhVien}, this.CheckLogin365.getArguments().slice(1));
	},
	url: '/ajaxpro/EduSoft.Web.UC.DangNhap,EduSoft.Web.ashx'
}));
EduSoft.Web.UC.DangNhap = new EduSoft.Web.UC.DangNhap_class();

