<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function edit(){
		$.messager.progress();	// 显示一个进度条 
		$('#editform').form('submit', {   
		    url:'departCtrl/edit.do',//${ctx}
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
		        	$('#editform').form('clear');		//	清空FORM
		    		$('#editWin').window('close');		//关闭窗口
		            $('#datagrid').datagrid("reload");		//从新加载Grid
		        }   
		    }   
		});  
	
	}
</script>
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" style="padding:2px">
			<form action="" id="editform" method="post">
			<input type="hidden" name="departid" value="${depart.departid}" />
			  	<table class="tablenew table-hover table-condensed">
			  		<tr>
			  			<td>部门名称：  </td>
			  			<td><input type="text" name="departname" value="${depart.departname}" class="easyui-validatebox" data-options="required:true,validType:'length[2,22]'" style="width:135px" /> </td>
			  			<td>部门描述：</td>
			  			<td><input type="text" name="departdesc" value="${depart.departdesc}" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
			  		</tr>
			  	</table>
  			</form>
		</div>
		<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="edit()">保存</a>
		</div>
	</div>

