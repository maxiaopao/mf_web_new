<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>${objectname}</title>
	<%@include file="/include.jsp" %>
	<script type="text/javascript">
	
	//新增窗口
	function addFun(){
		$('#${"${objectname}"?uncap_first}AddWin').window({  
		    width: 490,  
		    height: 500,  
		    top:0,
		    minimizable:false,
		    maximizable:false,
		    resizable:false, 
		    closed: false,  
		    cache: false,  
		    href: '${r"${"}ctx${r"}"}/gotoPage.do?targetUrl=/${packagename}/${"${objectname}"?uncap_first}Add',  
		    modal: true  
		}); 
	}
	
	//更新窗口
	function editFun(){
	   	var node = $('#${"${objectname}"?uncap_first}DataGrid').datagrid('getSelected');//选中事件
		if (node == null) {
			$.messager.alert('警告','请选中一条数据!','warning');
		}
		if (node) {
			$('#${"${objectname}"?uncap_first}EditWin').window({  
			    width: 490,  
			    height: 500,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    closed: false,  
			    resizable:false,
			    cache: false,  
			    href: '${r"${"}ctx${r"}"}/${"${objectname}"?uncap_first}Ctrl/${"${objectname}"?uncap_first}EditPage.do?${"${primary}"?lower_case}='+node.${"${primary}"?lower_case},  
			    modal: true  
			}); 
		}
	}
	
	//删除
	function deleteFun(){
	   	var node = $('#${"${objectname}"?uncap_first}DataGrid').datagrid('getSelected');//选中事件
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
					$.post('${r"${"}ctx${r"}"}/${"${objectname}"?uncap_first}Ctrl/${"${objectname}"?uncap_first}Delete.do', {
						${"${primary}"?lower_case} : node.${"${primary}"?lower_case}
					}, function(result) {
						if (result.success) {
							$.messager.alert('提示', result.msg, 'info');
							$('#${"${objectname}"?uncap_first}DataGrid').datagrid("reload");	//从新加载Grid
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
	    $("#${"${objectname}"?uncap_first}DataGrid").datagrid('load',$.serializeObject($('#${"${objectname}"?uncap_first}SearchForm')));  
	}
	
	<#if (falg>1)>
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
	</#if>
	
	</script>
	</head>
	<body>
		<table id ="${"${objectname}"?uncap_first}DataGrid" class="easyui-datagrid"  style="width:auto;height:auto;"
				data-options="
				fit:true,
				fitColumns: true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10,
				pageList: [5, 10, 20, 30, 40, 50 ],
				sortName:'${"${primary}"?lower_case}',
				sortOrder:'desc',
				rownumbers:true,
				singleSelect:true,
				toolbar:'#toolbar',
				striped:true,
				url:'${r"${"}ctx${r"}"}/${"${objectname}"?uncap_first}Ctrl/${"${objectname}"?uncap_first}DataGrid.do'">
			<thead>
				<tr>
					<th data-options="field:'${"${primary}"?lower_case}',width:190,sortable:true">主键</th>
					<#list fieldList as var>
					<#switch var[1]> 
					<#case 'date'> 
					<th data-options="field:'${"${var[0]}"?lower_case}',width:110,formatter:formatDatebox">${var[2]}</th>
					<#break> 
					<#case 'datetime'> 
					<th data-options="field:'${"${var[0]}"?lower_case}',width:140">${var[2]}</th>
					<#break> 
					<#default> 
					<th data-options="field:'${"${var[0]}"?lower_case}',width:110">${var[2]}</th>
					</#switch>
					</#list>
				</tr>
			</thead>
		</table>
		<div id="${"${objectname}"?uncap_first}AddWin" title="新增" ></div>
		<div id="${"${objectname}"?uncap_first}EditWin" title="更新"></div>
  		<div id="toolbar" style="display: none;">
  			<form id="${"${objectname}"?uncap_first}SearchForm" action="" method="post">
				<table class="tablenew table-hover table-condensed">
				<tr>
					<td style="text-align:left">
					<#list fieldList as var>
					<#switch var[1]> 
					<#case 'varchar'> 
					${var[2]}：<input type="text" name="${"${var[0]}"?lower_case}" style="width:150px;"/>
					<#break> 
					<#case 'char'> 
					${var[2]}：<input type="text" name="${"${var[0]}"?lower_case}" style="width:150px;"/>
					<#break> 
					<#case 'text'> 
					${var[2]}：<input type="text" name="${"${var[0]}"?lower_case}" style="width:150px;"/>
					<#break> 
					<#default> 
					</#switch>
					</#list>
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