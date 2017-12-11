<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		 <title>多媒体后台管理系统</title>
		 <script type="text/javascript" src="${ctx}/jslib/jquery-easyui-1.5/jquery.min.js"></script>
		 <script type="text/javascript" src="${ctx}/jslib/jquery-easyui-1.5/jquery.easyui.min.js"></script>
		 <script type="text/javascript" src="${ctx}/jslib/extEasyUI.js"></script>
		 
		<style type="text/css">
			.m{ width:900px; margin:0 auto;}
			.header{ height:70px;}
			.header_logo{ float:left; width:180px; height:40px; padding-top:15px;}
			
			.main{ width:100%;  height:480px; position:relative;}
			.main_logginBox{ position:absolute; top:50px; left:50%; margin-left:100px; width:350px; height:380px; border:#cfd6dc 1px solid; background:#FFF;}
			.main_logginBox p{height:28px; line-height:28px; margin-top:35px;}
			.main_logginBox p span{width:90px; text-align:right; display:block; float:left; font-size:16px;  color:#373737;}
			.main_logginBox p input{width:230px; height:28px; border:1px solid #a5c2d4; background:#eaf2f6}
			.ml_head{ height:28px; padding:25px 25px 0px 25px; font-size:20px;   overflow:hidden; color:#0094da;}
		</style>
		 <script type="text/javascript">
			$(document).ready(function() {
				$("#loginName").focus();
				changePic();
			});
		
			document.onkeydown = function(event) {
				var e = event || window.event || arguments.callee.caller.arguments[0];
				if (e && e.keyCode == 27) { // 按 Esc 
					//要做的事情
				}
				if (e && e.keyCode == 113) { // 按 F2 
					//要做的事情
				}
				if (e && e.keyCode == 13) { // enter 键
					//要做的事情
					login();
				}
			};

			function login() {
				var id = document.getElementById("loginName");
				var psd = document.getElementById("loginPwd");
		
				if (id.value == null || id.value == ""
						|| id.value.replace(/\s/g, "") == "") {
					document.getElementById("msg").innerHTML = "请输入用户名!";
					return false;
				} else if (psd.value == null || psd.value == ""
						|| psd.value.replace(/\s/g, "") == "") {
					document.getElementById("msg").innerHTML = "请输入密码！";
					return false;
				}
				$('#msg').html("登录中，请稍候···");
				$.ajax( {
							type : "post",//请求方式
							url : '${pageContext.request.contextPath}/csrCtrl/login.do',
							dataType : "json",
							data : $.serializeObject($('#form')),//传给PHP的数据，多个参数用&连接
							success : function(result) {
								if (result.success) {
									location.replace('${pageContext.request.contextPath}/index.jsp');
								} else {
									$('#msg').html(result.msg);
								}
							}
						});
		
			}

			function changePic() {
				var r = getRandom(8);
				$("#bgimg")
						.attr(
								"style",
								"background-image:url(${ctx}/style/image/login_pic"
										+ r
										+ ".jpg);background-position: 50% 0%; background-repeat: no-repeat ");
			}

			//生成1到N的随机数.范围是[1,n]
			function getRandom(n) {
				return Math.floor(Math.random() * n + 1)
			}
   		</script>

	</head>

	<body>
		<div class="top" id="top" style="margin-left: 0px; left: 0px; width: 100%; position: absolute; top: 50%; margin-top: -310px;">
			<div class="headerOut">
				<div class="m header">
					<h1 class="header_logo">
						<a href="#"><img src="${pageContext.request.contextPath}/style/image/logo.png" border="0">
						</a>
					</h1>
				</div>
			</div>

			<form id="form"
				action="${pageContext.request.contextPath}/loginCtrl/login.do"
				method="post" name="form">
				<div class="mainOut">
					<div class="main" id="bgimg" style="background-image:url(${ctx}/style/index/images/login_pic1.jpg);background-position: 50% 0%; background-repeat: no-repeat ">
						<div class="main_logginBox">
							<div class="ml_head fy">
								用户登录
							</div>
							<br />
							<br />
							<div style="height: 2px; margin-left: 90px;" >
								<font style="" id="msg" color="red" size="2px;">${msg}</font>
							</div>
							<p>
								<span>用户名：</span>
								<input id="loginName" value="admin" onkeyup="$('#loginPwd').val('')" name="csrid" type="text"
									style="font-size: 24px" />
							</p>
							<p>
								<span>密码：</span>
								<input id="loginPwd" name="passwd" type="password" value="123456"
									style="font-size: 24px" />
							</p>
							<br />
							<br />
							<p align="right" style="margin-right: 30px; margin-top: 10px;">
								<a onclick=login();><img style="border: none" src="${ctx}/style/image/login_btn.jpg" />
								</a>
							</p>

						</div>
					</div>
				</div>
			</form>
			
		</div>
	</body>
</html>