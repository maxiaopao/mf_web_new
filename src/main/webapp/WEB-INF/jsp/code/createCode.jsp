<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>mmDepart</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
	   function createCode(){
			var rows = $("#datagrid").datagrid("getRows");
			for(var i=0;i<rows.length;i++){
				alert(rows[i].column_name);
			}
		}
	   
	   function goPage(){
		   $('#goPageWin').window({  
			    width: 490,  
			    height: 300,  
			    top:0,
			    minimizable:false,
			    maximizable:false,
			    resizable:false, 
			    closed: false,  
			    cache: false,  
			    href: '${ctx}/gotoPage.do?targetUrl=/code/codeGoPage',  
			    modal: true,
			    onLoad:function(){
			    	
			    	var rows = $("#datagrid").datagrid("getRows");
			    	var str = "";
					for(var i=0;i<rows.length;i++){
						if(rows[i].column_key){
							$('#primary').val(rows[i].column_name);
						}else{
							str+=rows[i].column_name+","+rows[i].data_type+","+rows[i].column_comment+","+rows[i].character_maximum_length+"|"; 
						}
					}
					$('#fieldlist').html(str);
					$('#tablename').val(rows[0].table_name);
					
					var objectname = ucfirst(rows[0].table_name);
					$('#objectname').val(objectname.substr(0,objectname.length-1));
			    }
			}); 
	   }
	   function ucfirst(str){
			var str = str.toLowerCase();
			var strarr = str.split('_');
			var result = '';
			for(var i in strarr){
				result += strarr[i].substring(0,1).toUpperCase()+strarr[i].substring(1)+'_';
			}
			return result;
		}
	  
    </script>
    
  </head>
  <body>
  	<table id ="datagrid" class="easyui-datagrid"  style="width:auto;height:auto;"
			data-options="singleSelect:true,
			fit:true,
			autoRowHeight:false,
			pagination:true,
			pageSize:100,
			pageList: [ 100 ],
			sortName:'id',
			sortOrder:'desc',
			rownumbers:true,
			toolbar:'#toolbar',
			url:'${ctx}/codeCtrl/propertyDataGrid.do?tablename=${tablename}'">
		<thead data-options="frozen:true">
			<tr>
				<th data-options="field:'table_name',width:180,hidden:true">表名</th>
				<th data-options="field:'column_name',width:100">列名</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'column_comment',width:110">列注解</th>
				<th data-options="field:'data_type',width:100">类型</th>
				<th data-options="field:'column_type',width:100">类型</th>
				<th data-options="field:'column_key',width:70">主键</th>
				<th data-options="field:'character_maximum_length',width:80">长度</th>
				<th data-options="field:'is_nullable',width:80">默认为空</th>
				<th data-options="field:'aa',width:80,formatter:function(){
					return '<input type=checkbox />';
				}">是否搜索</th>
			</tr>
		</thead>
	</table>
	<div id="goPageWin" title="跳转页面" ></div>
  	<div id="toolbar" style="display: none;">
		<a onclick="goPage();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'ext-icon-add'">代码生成</a>
	</div>
  </body>
</html>
