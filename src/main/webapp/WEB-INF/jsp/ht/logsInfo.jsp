<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
    <%@include file="/include.jsp" %>
    
    <script type="text/javascript">  
	$(function(){  
	    $('#sbutton').switchbutton({
	        checked: true,  
	        onChange: function(checked){  
	            if (checked == true){  
	            	$('#datagrid').datagrid({
	            		remoteSort:true,
	            	});
	                return;  
	            }  
	            if (checked == false){  
	            	$('#datagrid').datagrid({
	            		remoteSort:false,
	            	});
	            }}  
			});
		});
	
	</script> 
  </head>
  <body>
  	<table id ="datagrid" class="easyui-datagrid"  style="width:auto;height:auto;"
			data-options="
			fit:true,
			fitColumns:true,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			pageList: [5, 10, 20, 30, 40, 50 ],
			sortName:'id',
			sortOrder:'desc',
			rownumbers:true,
			singleSelect:true,
			toolbar:'#toolbar',
			striped:true,
			url:'${ctx}/logsInfoCtrl/dataGrid.do'">
		<thead>
			<tr>
				<th data-options="field:'id',width:180,sortable:true">ID</th>
				<th data-options="field:'account',width:160,sortable:true">用户</th>
				<th data-options="field:'module',width:80">模块</th>
				<th data-options="field:'methods',width:80">方法</th>
				<th data-options="field:'opertime',width:130">创建时间</th>
				<th data-options="field:'description',width:160">描述</th>
				<th data-options="field:'menuName',width:80">菜单名字</th>
				<th data-options="field:'menuUrl',width:80">菜单URL</th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar" style="display: none;">
		
		<div align="right" style="padding-right: 20px;">
			<label>是否远程加载：</label>
			<input id="sbutton" style="width:60px;" />
		</div>
	</div>
  </body>
</html>
