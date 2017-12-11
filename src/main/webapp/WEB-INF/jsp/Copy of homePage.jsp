<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'homePage.jsp' starting page</title>
		<%@include file="/include.jsp"%>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<script type="text/javascript">
		</script>

	</head>

	<body>
	
	
		<div id="p" class="easyui-panel" title="Basic Panel" style="width:700px;height:200px;padding:10px;">
			<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
			<ul>
				<li>easyui is a collection of user-interface plugin based on jQuery.</li>
				<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
				<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
				<li>complete framework for HTML5 web page.</li>
				<li>easyui save your time and scales while developing your products.</li>
				<li>easyui is very easy but powerful.</li>
			</ul>
		</div>
		
		<div class="easyui-panel" title="Panel Footer" style="width:700px;height:200px;" data-options="footer:'#ft'">
	    </div>
	    <div id="ft" style="padding:5px;">
	        Footer Content.
	    </div>
	    
		<div class="easyui-panel" style="height:350px;padding:5px;">
			<div id="p" class="easyui-panel" title="Panel Tools" style="width:600px;height:200px;padding:10px;"
					data-options="iconCls:'icon-save',collapsible:true,minimizable:true,maximizable:true,closable:true">
				<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
				<ul>
					<li>easyui is a collection of user-interface plugin based on jQuery.</li>
					<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
					<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
					<li>complete framework for HTML5 web page.</li>
					<li>easyui save your time and scales while developing your products.</li>
					<li>easyui is very easy but powerful.</li>
				</ul>
			</div>
		</div>	    
	    <div class="easyui-accordion" style="width:500px;height:300px;">
		<div title="About" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<h3 style="color:#0099FF;">Accordion for jQuery</h3>
			<p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily.</p>
		</div>
		<div title="Help" data-options="iconCls:'icon-help'" style="padding:10px;">
			<p>The accordion allows you to provide multiple panels and display one or more at a time. Each panel has built-in support for expanding and collapsing. Clicking on a panel header to expand or collapse that panel body. The panel content can be loaded via ajax by specifying a 'href' property. Users can define a panel to be selected. If it is not specified, then the first panel is taken by default.</p> 		
		</div>
		<div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding:10px;">
			<ul class="easyui-tree">
				<li>
					<span>Foods</span>
					<ul>
						<li>
							<span>Fruits</span>
							<ul>
								<li>apple</li>
								<li>orange</li>
							</ul>
						</li>
						<li>
							<span>Vegetables</span>
							<ul>
								<li>tomato</li>
								<li>carrot</li>
								<li>cabbage</li>
								<li>potato</li>
								<li>lettuce</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	    
	    <div class="easyui-tabs" style="width:700px;height:250px">
		<div title="About" style="padding:10px">
			<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
			<ul>
				<li>easyui is a collection of user-interface plugin based on jQuery.</li>
				<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
				<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
				<li>complete framework for HTML5 web page.</li>
				<li>easyui save your time and scales while developing your products.</li>
				<li>easyui is very easy but powerful.</li>
			</ul>
		</div>
		<div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
			This is the help content.
		</div>
	</div>
	
	
	<div class="easyui-panel" style="padding:5px">
		<ul class="easyui-tree" data-options="lines:true">
			<li>
				<span>My Documents</span>
				<ul>
					<li data-options="state:'closed'">
						<span>Photos</span>
						<ul>
							<li>
								<span>Friend</span>
							</li>
							<li>
								<span>Wife</span>
							</li>
							<li>
								<span>Company</span>
							</li>
						</ul>
					</li>
					<li>
						<span>Program Files</span>
						<ul>
							<li>Intel</li>
							<li>Java</li>
							<li>Microsoft Office</li>
							<li>Games</li>
						</ul>
					</li>
					<li>index.html</li>
					<li>about.html</li>
					<li>welcome.html</li>
				</ul>
			</li>
		</ul>
	</div>
	   
	    
	    <div class="easyui-calendar" style="width:250px;height:250px;"></div>
	    
	    <table>
		<tr>
			<td>Start Date:</td>
			<td>
				<input class="easyui-datebox" data-options="sharedCalendar:'#cc'">
			</td>
			<td>End Date:</td>
			<td>
				<input class="easyui-datebox" data-options="sharedCalendar:'#cc'">
			</td>
		</tr>
	</table>
	<div id="cc" class="easyui-calendar"></div>
	
	
	<div style="margin:20px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('open')">Open</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('close')">Close</a>
	</div>
	<div class="easyui-panel" style="position:relative;width:500px;height:300px;overflow:auto;">
		<div id="w" class="easyui-window" data-options="title:'Inline Window',inline:true" style="width:250px;height:150px;padding:10px">
			This window stay inside its parent
		</div>
	</div>
	
	
	<div style="margin:20px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">Open</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">Close</a>
	</div>
	<div id="dlg" class="easyui-dialog" title="Basic Dialog" data-options="iconCls:'icon-save'" style="width:400px;height:200px;padding:10px">
		The dialog content.
	</div>
	
	<div style="margin:20px 0;">
		<a href="#" class="easyui-linkbutton" onclick="alert1()">Alert</a>
		<a href="#" class="easyui-linkbutton" onclick="alert2()">Error</a>
		<a href="#" class="easyui-linkbutton" onclick="alert3()">Info</a>
		<a href="#" class="easyui-linkbutton" onclick="alert4()">Question</a>
		<a href="#" class="easyui-linkbutton" onclick="alert5()">Warning</a>
	</div>
	<script>
		function alert1(){
			$.messager.alert('My Title','Here is a message!');
		}
		function alert2(){
			$.messager.alert('My Title','Here is a error message!','error');
		}
		function alert3(){
			$.messager.alert('My Title','Here is a info message!','info');
		}
		function alert4(){
			$.messager.alert('My Title','Here is a question message!','question');
		}
		function alert5(){
			$.messager.alert('My Title','Here is a warning message!','warning');
		}
	</script>
	
	<p>The tooltip can use each elements title attribute.
	<a href="#" title="This is the tooltip message." class="easyui-tooltip">Hover me</a> to display tooltip.
	</p>
	
	
	<h2>Message Box Position</h2>
	<p>Click the buttons below to display message box on different position.</p>
	<div style="margin:20px 0;">
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topLeft();">TopLeft</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topCenter()">TopCenter</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topRight()">TopRight</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerLeft()">CenterLeft</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="center()">Center</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerRight()">CenterRight</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomLeft()">BottomLeft</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomCenter()">BottomCenter</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomRight()">BottomRight</a>
		</p>
	</div>
	<script>
		function topLeft(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'show',
				style:{
					right:'',
					left:0,
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topCenter(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'slide',
				style:{
					right:'',
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topRight(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'show',
				style:{
					left:'',
					right:0,
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function centerLeft(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'fade',
				style:{
					left:0,
					right:'',
					bottom:''
				}
			});
		}
		function center(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'fade',
				style:{
					right:'',
					bottom:''
				}
			});
		}
		function centerRight(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'fade',
				style:{
					left:'',
					right:0,
					bottom:''
				}
			});
		}
		function bottomLeft(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'show',
				style:{
					left:0,
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomCenter(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'slide',
				style:{
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomRight(){
			$.messager.show({
				title:'My Title',
				msg:'The message content',
				showType:'show'
			});
		}
	</script>
	
	<div style="height: 100px;">
	
	</div>
	    
	</body>
</html>
