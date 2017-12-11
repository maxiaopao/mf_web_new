<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <title>mmDepart</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
	   function addFun(){
			$('#addWin').window({  
				width: 730,  
			    height: 350, 
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    resizable:false, 
			    closed: false,  
			    cache: false,  
			    href: 'gotoPage.do?targetUrl=/ht/roleAdd',  
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
					width: 730,  
				    height: 350,  
				    top:0,
				    minimizable:false,
				    maximizable:false,
				    closed: false,  
				    cache: false,  
				    href: '${ctx}/roleCtrl/editPage.do?roleid='+node.roleid,  
				    modal: true ,
				    onLoad:function(){
				    	$('#roleTypeEdit').val(node.roletype);
				    	$('#edit_menu_tree').tree({
				    		url:'${pageContext.request.contextPath}/menuCtrl/menuTreeAdd.do',
				    		fit:true,
				    		lines:true,//定义是否显示树线.
				    		checkbox:true,
				    		onLoadSuccess:function(){
									$.getJSON("roleCtrl/getMenuIdByRoleId.do?roleid="+node.roleid, function(data){
										var stjson = eval(data);
										$.each(stjson, function(i,item){
											//通过查询这个用户的角色进行选择
					            			 var checknode = $('#edit_menu_tree').tree('find',item.menuid); 
					            			 if($('#edit_menu_tree').tree('isLeaf',checknode.target)){
					            				 $('#edit_menu_tree').tree('check',checknode.target); 
											 }
					            		  });
					            	});
					    		 }
				    	});

				    }
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
						$.post('${ctx}/roleCtrl/delete.do', {
							roleid : node.roleid
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
			fitColumns:true,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			pageList: [5, 10, 20, 30, 40, 50 ],
			sortName:'roleid',
			sortOrder:'desc',
			rownumbers:true,
			singleSelect:true,
			striped:true,
			toolbar:'#toolbar',
			url:'${ctx}/roleCtrl/dataGrid.do'">
		<thead data-options="frozen:true">
			<tr>
				<th data-options="field:'roleid',width:199,sortable:true">角色编号</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'rolename',width:100">角色名称</th>
				<th data-options="field:'rolecode',width:100">角色描述</th>
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
