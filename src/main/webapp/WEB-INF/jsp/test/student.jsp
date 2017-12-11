<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>Student</title>
	<%@include file="/include.jsp" %>
	<script type="text/javascript">
	
	//新增窗口
	function addFun(){
		$('#studentAddWin').window({  
		    width: 490,  
		    height: 500,  
		    top:0,
		    minimizable:false,
		    maximizable:false,
		    resizable:false, 
		    closed: false,  
		    cache: false,  
		    href: '${ctx}/gotoPage.do?targetUrl=/test/studentAdd',  
		    modal: true  
		}); 
	}
	
	//更新窗口
	function editFun(){
	   	var node = $('#studentDataGrid').datagrid('getSelected');//选中事件
		if (node == null) {
			$.messager.alert('警告','请选中一条数据!','warning');
		}
		if (node) {
			$('#studentEditWin').window({  
			    width: 490,  
			    height: 500,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    closed: false,  
			    resizable:false,
			    cache: false,  
			    href: '${ctx}/studentCtrl/studentEditPage.do?id='+node.id,  
			    modal: true  
			}); 
		}
	}
	
	//删除
	function deleteFun(){
	   	var node = $('#studentDataGrid').datagrid('getSelected');//选中事件
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
					$.post('${ctx}/studentCtrl/studentDelete.do', {
						id : node.id
					}, function(result) {
						if (result.success) {
							$.messager.alert('提示', result.msg, 'info');
							$('#studentDataGrid').datagrid("reload");	//从新加载Grid
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
	    $("#studentDataGrid").datagrid('load',$.serializeObject($('#studentSearchForm')));  
	}
	
	//格式化日期
	function formatDatebox(value) {
	    if (value == null || value == '') {  
	        return '';  
	    }  
		var dt;  
	    if (value instanceof Date) {  
	        dt = value;  
	    } else {  
	        dt = new Date(value);  
	    }  
    	return dt.Format("yyyy-MM-dd"); //扩展的Date的format方法(上述插件实现)  
	} 
	
	</script>
	</head>
	<body>
		<table id ="studentDataGrid" class="easyui-datagrid"  style="width:auto;height:auto;"
				data-options="
				fit:true,
				fitColumns: true,
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
				url:'${ctx}/studentCtrl/studentDataGrid.do'">
			<thead>
				<tr>
					<th data-options="field:'id',width:190,sortable:true">主键</th>
					<th data-options="field:'name',width:110">姓名</th>
					<th data-options="field:'phonenum',width:110">电话号码</th>
					<th data-options="field:'birthday',width:140">生日</th>
				</tr>
			</thead>
		</table>
		<div id="studentAddWin" title="新增" ></div>
		<div id="studentEditWin" title="更新"></div>
  		<div id="toolbar" style="display: none;">
  			<form id="studentSearchForm" action="" method="post">
				<table class="tablenew table-hover table-condensed">
				<tr>
					<td style="text-align:left">
					姓名：<input type="text" name="name" style="width:150px;"/>
					电话号码：<input type="text" name="phonenum" style="width:150px;"/>
					<a href="javascript:void(0);" class="easyui-linkbutton" onclick="searchFun();" data-options="plain:true,iconCls:'icon-search'">搜索</a>
					</td>
				</tr>
				</table>
			</form>
			<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
			<a onclick="editFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">更新</a>
			<a onclick="deleteFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
		</div>
	</body>
</html>