<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
	
	$(function(){
		$('#user').tooltip({
			hideEvent: 'none',
			showDelay:'10',
			content: function(){
				return $('#toolbar');
			},
			onShow: function(){
				var t = $(this);
				t.tooltip('tip').unbind().bind('mouseenter', function(){
					t.tooltip('show');
				}).bind('mouseleave', function(){
					t.tooltip('hide');
				});
			}
		}).bind('mouseleave', function(){
			var t = $(this);
			t.tooltip('hide');
		});
		
		$('#color').tooltip({
			hideEvent: 'none',
			showDelay:'10',
			content: function(){
				return $('#color-toolbar');
			},
			onShow: function(){
				var t = $(this);
				t.tooltip('tip').unbind().bind('mouseenter', function(){
					t.tooltip('show');
				}).bind('mouseleave', function(){
					t.tooltip('hide');
				});
			}
		});
		
		$('#color-toolbar ul li').click(function(){
			$(this).addClass("active").siblings().removeClass("active");
			var href = "${ctx}/jslib/jquery-easyui-1.5/themes/default/"+$(this).text()+"/ext-easyui.css";
			$('#theme').attr("href",href);
			var $iframe = $('iframe');
			if ($iframe.length > 0) {
				for ( var i = 0; i < $iframe.length; i++) {
					var ifr = $iframe[i];
					$(ifr).contents().find('#theme').attr('href', href);
				}
			}
		});
	});
	
	
	function logout(){
		$.messager.confirm('退出确认', '你确定要退出用户吗?', function(r){
			if (r){
				$.ajax({
					type : "post",//请求方式
					url : '${pageContext.request.contextPath}/csrCtrl/logout.do', 
					dataType : "json",
					success : function(result) {
						if(result.success){
							location.replace('${pageContext.request.contextPath}/index.jsp');
						}
					}
				});
	
				
			}
		});
			
	}
	function editFun(){
		$('#Password').window('open');
	}
		function changePassword(){
			var newpw=$("#passwdnew").val();
			var surepw=$("#passwd2").val();

			var oldpasswd=$("#passwd").val();
			if (newpw == null || newpw == ""
				|| newpw.replace(/\s/g, "") == "") {

				$.messager.alert("提示","新密码不能为空",'info');
				return;
			}

			if (oldpasswd == null || oldpasswd == ""
				|| oldpasswd.replace(/\s/g, "") == "") {

				$.messager.alert("提示","旧密码不能为空",'info');
				return;
			}
				
			if(newpw!=surepw){
				$.messager.alert("提示","两次密码不一致",'info');

			}else{

				$.messager.progress();	// 显示一个进度条 
				$('#winPassword_s').form('submit', {   
				    url:'${pageContext.request.contextPath}/csrCtrl/editPasswd.do',//${ctx}
				    onSubmit: function(){   
						var isValid = $(this).form('validate');
						if (!isValid){
							$.messager.progress('close');	// 当form不合法的时候隐藏工具条
						}
						return isValid;	// 返回false将停止form提交 
				    },   
				    success:function(data){
				    	$.messager.progress('close'); 
				    	var data = jQuery.parseJSON(data);  // change the JSON string to javascript object
				        if (data.success){  
				        	$.messager.alert('提示',data.msg,'info');//title: 标题文本,显示在panel的头部的.msg: 显示的消息文本.icon:显示icon图片,可用值有: error,question,info,warning
				        	$('#winPassword_s').form('clear');		//	清空FORM
				    		$('#Password').window('close');		//关闭窗口
				        }
				    }   
				}); 
				}
			}
	
</script>

<div id="north" style="height: 100%;width: auto">

	<div class="north-logo">
		<a href="javascript:void(0)">
		<img src="${ctx}/style/image/logo.png" alt="logo" class="logo-default"> </a>
	</div>

	<div class="north-right" >
		<ul>
			<li>
				<a id="user" href="javascript:void(0)">
					<span class="username"> ${csrSession.csrid} </span>		
					<img alt="" class="img-circle" src="${ctx}/style/image/user.jpg">
				</a>
			</li>
			<li>
				<a id="color" href="javascript:void(0)">
					<span class="username"> 主题 </span>		
					<img alt="" class="img-circle" src="${ctx}/style/image/color.png">
				</a>
			</li>
		</ul>
	</div>
	
	
	<div style="display:none">
		<div id="toolbar">
			<div class="north-toolbar">
				<ul>
					<li>
						<a href="javascript:void(0)">
						<i class="fa fa-anchor"></i> My Profile </a>
					</li>
					<li>
						<a href="javascript:void(0)">
						<i class="fa fa-anchor"></i> My Calendar </a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="fa fa-anchor"></i> 个人信息
						</a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="editFun()">
						<i class="fa fa-anchor"></i> 修改密码 </a>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="logout()">
						<i class="fa fa-anchor"></i> 退出 </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div style="display:none">
		<div id="color-toolbar">
			<div class="north-toolbar">
				<ul>
					<li >
						<a href="javascript:void(0)">
						<i class="fa fa-anchor "></i>blue</a>
					</li>
					<li>
						<a href="javascript:void(0)">
						<i class="fa fa-anchor"></i>write</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

