(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-00880704"],{"70be":function(t,e,s){"use strict";s("710c")},"710c":function(t,e,s){},"7d80":function(t,e,s){},"7dd3":function(t,e,s){"use strict";s("7d80")},d5c2:function(t,e,s){"use strict";s.r(e);var i=function(){var t=this,e=t._self._c;return e("div",{staticClass:"lowin lowin-blue"},[e("div",{staticClass:"lowin-wrapper"},[e("div",{staticClass:"lowin-box lowin-register"},[e("div",{staticClass:"lowin-box-inner"},[e("el-form",{ref:"loginForm"},[e("p",[t._v("教学管理系统")]),e("div",{staticClass:"lowin-group"},[e("label",[t._v("用户名 ")]),e("el-input",{ref:"userName",staticClass:"lowin-input",attrs:{placeholder:"用户名",name:"userName",type:"text",tabindex:"1","auto-complete":"on"}})],1),e("div",{staticClass:"lowin-group password-group"},[e("label",[t._v("密码")]),e("el-input",{ref:"password",staticClass:"lowin-input",attrs:{placeholder:"密码",name:"password",tabindex:"2","auto-complete":"on"}})],1),e("div",{staticClass:"lowin-group"},[e("label",[t._v("年级 ")]),e("el-select",{staticClass:"lowin-input",attrs:{placeholder:"年级"}},[e("el-option")],1)],1),e("el-button",{staticClass:"lowin-btn login-btn",attrs:{type:"text"}},[t._v("注册")]),e("div",{staticClass:"text-foot"},[t._v(" 已有账号? "),e("router-link",{staticClass:"login-link",attrs:{to:"/login"}},[t._v(" 登录 ")])],1)],1)],1)])]),e("div",{staticClass:"account-foot-copyright"})])},n=[],o=s("5530"),a=(s("14d9"),s("2f62")),l=s("b775"),r={register:function(t){return Object(l["b"])("/api/student/user/register",t)}},c={name:"Login",data:function(){return{loginForm:{userName:"",password:"",userLevel:1}}},methods:Object(o["a"])({handleRegister:function(){var t=this;r.register(this.loginForm).then((function(e){e&&1===e.code?t.$router.push({path:"/login"}):t.$message.error(e.message)}))}},Object(a["d"])("user",["setUserName"])),computed:Object(o["a"])({},Object(a["e"])("enumItem",{levelEnum:function(t){return t.user.levelEnum}}))},u=c,d=(s("70be"),s("7dd3"),s("2877")),p=Object(d["a"])(u,i,n,!1,null,"48fcf418",null);e["default"]=p.exports}}]);