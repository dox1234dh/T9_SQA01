if(typeof EduSoft == "undefined") EduSoft={};
if(typeof EduSoft.Web == "undefined") EduSoft.Web={};
EduSoft.Web.DefaultMaster_class = function() {};
Object.extend(EduSoft.Web.DefaultMaster_class.prototype, Object.extend(new AjaxPro.AjaxClass(), {
	CheckGoogle: function(token) {
		return this.invoke("CheckGoogle", {"token":token}, this.CheckGoogle.getArguments().slice(1));
	},
	url: '/ajaxpro/EduSoft.Web.DefaultMaster,EduSoft.Web.ashx'
}));
EduSoft.Web.DefaultMaster = new EduSoft.Web.DefaultMaster_class();

