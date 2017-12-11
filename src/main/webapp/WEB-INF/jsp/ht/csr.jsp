<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <title>mmDepart</title>
    <%@include file="/include.jsp" %>
    <script type="text/javascript">
    
	$(function(){
		$('#departidSearch').combobox({
		    url:'departCtrl/getDepartList.do',   
		    valueField:'departid',
		    textField:'departname'
		});
    })
    
    
	   function addFun(){
			$('#addWin').window({  
			    width: 700,  
			    height: 380,  
				top:0,
			    resizable:false,
			    closed: false,  
			    minimizable:false,
			    maximizable:false,
			    cache: false,  
			    href: 'gotoPage.do?targetUrl=/ht/csrAdd',  
			    modal: true  
			}); 
		}
	   function editFun(){
	  
		   var csrObj = $('#datagrid').datagrid('getSelected');//选中事件
		   
			if (csrObj == null) {
				$.messager.alert('警告','请选中一条数据!','warning');
			}
			
			if (csrObj) {
				var url='${ctx}/csrCtrl/editPage.do?user_id='+csrObj.user_id;
				$('#editWin').window({  
					width: 700,  
				    height: 380,   
				    closed: false,  
				    top:0,
				    resizable:false,
				    minimizable:false,
				    maximizable:false,
				    cache: false,  
				    href: url,  
				    modal: true,
				    onLoad:function(){
				    	$('#editMenuTree').tree({
				    		url:'roleCtrl/getRoleTree.do',
				    		fit:true,
				    		lines:true,//定义是否显示树线.
				    		checkbox:true,
				    		onlyLeafCheck:true,
				    		onLoadSuccess:function(){
									$.getJSON("csrCtrl/getRoleIdByCsrId.do?csrid="+csrObj.user_id, function(data){
										var stjson = eval(data);
										$.each(stjson, function(i,item){
											//通过查询这个用户的角色进行选择
					            			 var node = $('#editMenuTree').tree('find',item.roleid);  
				                             $('#editMenuTree').tree('check',node.target);  
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
						$.post('${ctx}/csrCtrl/delete.do', {
							user_id : node.user_id
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
	   

	//搜索 
	function searchFun(){
	    $("#datagrid").datagrid('load',$.serializeObject($('#csrSearchForm')));  
	}
    </script>
    
  </head>
  <body>
  	<table id ="datagrid" class="easyui-datagrid" style="width:auto;height:auto;padding:3px;"
			data-options="
			fit:true,
			fitColumns:true,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			pageList: [5, 10, 20, 30, 40, 50 ],
			sortName:'user_id',
			sortOrder:'desc',
			rownumbers:true,
			singleSelect:true,
			toolbar:'#toolbar',
			striped:true,
			url:'${ctx}/csrCtrl/dataGrid.do'">
		<thead data-options="frozen:true">
			<tr>
			<th data-options="field:'user_id',width:199,sortable:true">用户id</th>
				<th data-options="field:'csrid',width:90,sortable:true">坐席工号</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th data-options="field:'csrname',width:100">名称</th>
				<th data-options="field:'sex',width:100">性别</th>
				<th data-options="field:'provense',width:100">省</th>
				<th data-options="field:'city',width:100">市</th>
				
				<th data-options="field:'postion',width:80,
						formatter: function(val,rec){
										if(val==1)
											return '管理员';
										else if(val==2)
											return  '值班长';
										else if(val==3)
											return 'IB坐席';
										else if(val==4)
											return 'OB坐席';
									}
				">职位</th>
				
				<th data-options="field:'departname',width:150">部门名称</th>
				<th data-options="field:'groupname',width:150">小组名称</th>
			</tr>
		</thead>
	</table>
	<div id="addWin" title="新增" ></div>
	<div id="editWin" title="更新"></div>
  	<div id="toolbar" style="display: none;">
  	
  		<form id="csrSearchForm" action="" method="post">
			<table class="tablenew table-hover table-condensed">
			<tr>
				<td style="text-align:left">
				部门：<select id="departidSearch" name="departid"  style="width:147px"  class="" data-options="width:150,height:29,editable:false," ></select>
				工号：<input type="text" name="csrid" style="width:150px;"/>
				姓名：<input type="text" name="csrname" style="width:150px;"/>
				<a href="javascript:void(0);" class="easyui-linkbutton" onclick="searchFun();" data-options="plain:true,iconCls:'icon-search'">搜索</a>
				</td>
			</tr>
			</table>
		</form>
  	
		<a onclick="addFun();" href="javascript:void(0);"   class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
		<a onclick="editFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">更新</a>
		<a onclick="deleteFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'">删除</a>
	</div>
  </body>
</html>
