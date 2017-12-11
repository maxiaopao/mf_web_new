<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>mmDepart</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
	   function addFun(){
			$('#addWin').window({  
			    width: 490,  
			    height: 300,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    resizable:false, 
			    closed: false,  
			    cache: false,  
			    href: 'gotoPage.do?targetUrl=/ht/departAdd',  
			    modal: true  
			}); 
		}
	   function editFun(){
		   var node = $('#datagrid').datagrid('getSelected');//选中事件
			if (node == null) {
				$.messager.alert('警告','请选中一条数据!','warning');
			}
			if (node) {
				$('#editWin').window({  
				    width: 490,  
				    height: 300,  
				    top:0,
				    minimizable:false,
				    maximizable:false,
				    closed: false,  
				    resizable:false,
				    cache: false,  
				    href: '${ctx}/departCtrl/editPage.do?departid='+node.departid,  
				    modal: true  
				}); 
			}
		}
	   function deleteFun(){

		   var node = $('#datagrid').datagrid('getSelected');//选中事件
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
						$.post('${ctx}/departCtrl/delete.do', {
							departid : node.departid
						}, function(result) {
							if (result.success) {
								$.messager.alert('提示', result.msg, 'info');
								$('#datagrid').datagrid("reload");	//从新加载Grid
							}
							$.messager.progress('close');
						}, 'JSON');
					}
				});
			}
		}
    </script>
    
  </head>
  <body>
  	<table id ="datagrid" class="easyui-datagrid"  style="width:auto;height:auto;"
			data-options="
			fit:true,
			fitColumns: true,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			pageList: [5, 10, 20, 30, 40, 50 ],
			sortName:'departid',
			sortOrder:'desc',
			rownumbers:true,
			singleSelect:true,
			toolbar:'#toolbar',
			striped:true,
			url:'${ctx}/departCtrl/dataGrid.do'">
		<thead data-options="frozen:true">
			<tr>
				<th data-options="field:'departid',width:199,sortable:true">部门编号</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'departname',width:160">部门名称</th>
				<th data-options="field:'departdesc',width:150">部门描述</th>
			</tr>
		</thead>
	</table>
	<div id="addWin" title="新增" ></div>
	<div id="editWin" title="更新"></div>
  	<div id="toolbar" >
		<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
		<a onclick="editFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">更新</a>
		<a onclick="deleteFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
	</div>
  </body>
</html>
