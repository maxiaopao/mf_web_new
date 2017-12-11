<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>菜单</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
	   function addFun(){
			$('#addWin').window({  
			    width: 490,  
			    height:350,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    resizable:false, 
			    closed: false,  
			    cache: false,  
			    href: 'gotoPage.do?targetUrl=/ht/menuAdd',  
			    modal: true  
			}); 
		}
	   function editFun(){

		   var node = $('#datagridMenu').treegrid('getSelected');//选中事件
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
				    href: '${ctx}/menuCtrl/editPageMenu.do?menuid='+node.id,  
				    modal: true  
				}); 
			}
			
		}
	   function deleteFun(){

		   var node = $('#datagridMenu').treegrid('getSelected');//选中事件
			if (node == null) {
				$.messager.alert('警告','请选中一条数据!','warning');
			}
		   
			if (node) {
				$.messager.confirm('询问', '您是否要删除当前数据？', function(b) {
					if (b) {
						if (node.children != "") { 
							$.messager.alert('提示', '菜单还有子节点，不可删除', 'info');
							return;
						} 
						$.messager.progress({
							title : '提示',
							text : '数据处理中，请稍后....'
						});
						$.post('${ctx}/menuCtrl/menuDelete.do', {
							menuid : node.id
						}, function(result) {
							if (result.success) {
								$.messager.alert('提示', result.msg, 'info');
								$('#datagridMenu').treegrid("reload");	//从新加载Grid
							}else{
								$.messager.alert('提示', result.msg, 'info');
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
  	<table id ="datagridMenu" class="easyui-treegrid"  style="width:auto;height:auto;"
			data-options="
				url: '${ctx}/menuCtrl/menuTreeAdd.do',
				method: 'post',
				lines: true,
				fit:true,
				fitColumns: true,
				rownumbers: true,
				idField: 'id',
				treeField: 'text',
				striped:true,
				toolbar:'#toolbar'
				">
		<thead>
			<tr>
				
				<th data-options="field:'text',width:160">菜单名称</th>
				<th data-options="field:'url',width:150">路径</th>
				<th data-options="field:'orderid',width:150">排序</th>
			</tr>
		</thead>
	</table>
	<div id="addWin" title="新增" ></div>
	<div id="editWin" title="更新"></div>
	<div id="editWinIcons" title="更新"></div>
	<div id="showFontIcons" title="更新"></div>
  	<div id="toolbar" style="display: none;">
		
		<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
		<a onclick="editFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">更新</a>
		<a onclick="deleteFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
	</div>
  </body>
</html>
