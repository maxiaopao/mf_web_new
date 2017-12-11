<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
	function add(){
		$.messager.progress();	// 显示一个进度条 
		$('#groupAddForm').form('submit', {   
		    url:'${ctx}/groupCtrl/groupAdd.do',
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
		        	$('#groupAddForm').form('clear');		//	清空FORM
		    		$('#groupAddWin').window('close');		//关闭窗口
		            $('#groupDataGrid').datagrid("reload");		//从新加载Grid
		        }else{
		       		$.messager.alert('提示',data.msg,'info');
		        }
		    }   
		});  
	
	}
</script>

<div class="easyui-layout" data-options="fit:true">
	<div data-options="region:'center'" style="padding:2px">
		<form id="groupAddForm" action=""  method="post"> 
		  	<table class="tablenew table-hover table-condensed">
		  		<tr>
	  				<td>小组名称：</td>
	  				<td><input type="text" name="groupname" class="easyui-validatebox" data-options="required:true,validType:'length[1,100]'" style="width:135px" /> </td>
	  				<td>描述：</td>
	  				<td><input type="text" name="groupdesc" class="easyui-validatebox" data-options="required:true,validType:'length[1,20]'" style="width:135px" /> </td>
	  			</tr>
		  	</table>
		</form>
	</div>
	<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="add()">保存</a>
	</div>
</div>