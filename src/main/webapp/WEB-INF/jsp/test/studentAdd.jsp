<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
	function add(){
		$.messager.progress();	// 显示一个进度条 
		$('#studentAddForm').form('submit', {   
		    url:'${ctx}/studentCtrl/studentAdd.do',
		    onSubmit: function(){   
				var isValid = $(this).form('validate');
				if (!isValid){
					$.messager.progress('close');	// 当form不合法的时候隐藏工具条
				}
				return isValid;	// 返回false将停止form提交 
		    },   
		    success:function(data){
		    	$.messager.progress('close'); 
		    	var data = jQuery.parseJSON(data);  // change the JSON string to javascript object
		        if (data.success){  
		        	$.messager.alert('提示',data.msg,'info');//title: 标题文本,显示在panel的头部的.msg: 显示的消息文本.icon:显示icon图片,可用值有: error,question,info,warning
		        	$('#studentAddForm').form('clear');		//	清空FORM
		    		$('#studentAddWin').window('close');		//关闭窗口
		            $('#studentDataGrid').datagrid("reload");		//从新加载Grid
		        }else{
		       		$.messager.alert('提示',data.msg,'info');
		        }
		    }   
		});  
	
	}
</script>

<div class="easyui-layout" data-options="fit:true">
	<div data-options="region:'center'" style="padding:2px">
		<form id="studentAddForm" action=""  method="post"> 
		  	<table class="tablenew table-hover table-condensed">
		  		<tr>
	  				<td>姓名：</td>
	  				<td><input type="text" name="name" class="easyui-validatebox" data-options="required:true,validType:'length[1,33]'" style="width:135px" /> </td>
	  				<td>电话号码：</td>
	  				<td><input type="text" name="phonenum" class="easyui-validatebox" data-options="required:true,validType:'length[1,11]'" style="width:135px" /> </td>
				</tr>
				<tr>
	  				<td>生日：</td>
	  				<td><input type="text" name="birthday" class="easyui-datetimebox" data-options="width:150,height:29,editable:false,required:true" /> </td>
				</tr>
		  	</table>
		</form>
	</div>
	<div data-options="region:'south'" style="height:35px;text-align:center;padding:2px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="add()">保存</a>
	</div>
</div>