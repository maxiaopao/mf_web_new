<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>mmDepart</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
	   function dbFucntion(row,data){
		  window.parent.CreateCloseTabExt("属性列表","${ctx}/codeCtrl/codePage.do?tablename="+data.table_name,"");
	   }
    </script>
    
  </head>
  <body>
  	<table id ="datagrid" class="easyui-datagrid"  style="width:auto;height:auto;"
			data-options="
			singleSelect:true,
			fit:true,
			fitColumns:true,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			pageList: [5, 10, 20, 30, 40, 50 ],
			sortName:'create_time',
			sortOrder:'desc',
			rownumbers:true,
			striped:true,
			onDblClickRow:dbFucntion,
			url:'${ctx}/codeCtrl/codeDataGrid.do'">
		<thead data-options="frozen:true">
			<tr>
				<th data-options="field:'table_name',width:180,sortable:true">表名</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'table_comment',width:160">表注解</th>
				<th data-options="field:'create_time',width:150">创建时间</th>
				<th data-options="field:'table_collation',width:150">编码</th>
			</tr>
		</thead>
	</table>
  </body>
</html>
