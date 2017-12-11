<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>Group</title>
	<%@include file="/include.jsp" %>
	<script type="text/javascript">
	
	//新增窗口
	function addFun(){
		$('#groupAddWin').window({  
		    width: 490,  
		    height: 500,  
		    top:0,
		    minimizable:false,
		    maximizable:false,
		    resizable:false, 
		    closed: false,  
		    cache: false,  
		    href: '${ctx}/gotoPage.do?targetUrl=/ht/groupAdd',  
		    modal: true  
		}); 
	}
	
	//更新窗口
	function editFun(){
	   	var node = $('#groupDataGrid').datagrid('getSelected');//选中事件
		if (node == null) {
			$.messager.alert('警告','请选中一条数据!','warning');
		}
		if (node) {
			$('#groupEditWin').window({  
			    width: 490,  
			    height: 500,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    closed: false,  
			    resizable:false,
			    cache: false,  
			    href: '${ctx}/groupCtrl/groupEditPage.do?groupid='+node.groupid,  
			    modal: true  
			}); 
		}
	}
	
	//删除
	function deleteFun(){
	   	var node = $('#groupDataGrid').datagrid('getSelected');//选中事件
		if (node == null) {
			$.messager.alert('警告','请选中一条数据!','warning');
		}
		if (node) {
			$.messager.confirm('询问', '您是否要删除当前数据？', function(b) {
				if (b) {
					$.messager.progress({
						title : '提示',
						text : '数据处理中，请稍后....'
					});
					$.post('${ctx}/groupCtrl/groupDelete.do', {
						groupid : node.groupid
					}, function(result) {
						if (result.success) {
							$.messager.alert('提示', result.msg, 'info');
							$('#groupDataGrid').datagrid("reload");	//从新加载Grid
						}else{
							$.messager.alert('提示', result.msg, 'info');
						}
						$.messager.progress('close');
					}, 'JSON');
				}
			});
		}
	}
	
	//搜索 
	function searchFun(){
	    $("#groupDataGrid").datagrid('load',$.serializeObject($('#groupSearchForm')));  
	}
	
	
	</script>
	</head>
	<body>
		<table id ="groupDataGrid" class="easyui-datagrid"  style="width:auto;height:auto;"
				data-options="
				fit:true,
				fitColumns: true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
				pageList: [5, 10, 20, 30, 40, 50 ],
				sortName:'groupid',
				sortOrder:'desc',
				rownumbers:true,
				singleSelect:true,
				toolbar:'#toolbar',
				url:'${ctx}/groupCtrl/groupDataGrid.do'">
			<thead>
				<tr>
					<th data-options="field:'groupid',width:110,sortable:true">小组id</th>
					<th data-options="field:'groupname',width:110">小组名称</th>
					<th data-options="field:'groupdesc',width:110">小组描述</th>
				</tr>
			</thead>
		</table>
		<div id="groupAddWin" title="新增" ></div>
		<div id="groupEditWin" title="更新"></div>
  		<div id="toolbar" style="display: none;">
			<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
			<a onclick="editFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">更新</a>
			<a onclick="deleteFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
		</div>
	</body>
</html>