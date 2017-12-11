<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">	

	$(function(){

	   
	   

	});



	function editCsr(s){
		var provense=$("#provense2").val();
		var city=$("#city2").val();
		$.messager.progress();	// 显示一个进度条 
		$('#editform').form('submit', {   
		  //  url:'csrCtrl/edit.do?provense='+provense+'&city='+city+'&checkList='+s,//${ctx}
		   url:'csrCtrl/edit.do?checkList='+s,//${ctx}
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
		        	//$.messager.alert('提示',data.msg,'info');//title: 标题文本,显示在panel的头部的.msg: 显示的消息文本.icon:显示icon图片,可用值有: error,question,info,warning
		        	$.messager.show({
						title:'<font color=red>提示</font>',
						msg:'<font color=blue>'+data.msg+'</font>',
						width:380,
						height:170,
						timeout:2500,
						showType:'fade',
						style:{
							right:'',
							top:document.body.scrollTop+document.documentElement.scrollTop+130,
							bottom:''
						}
					});
		        	$('#editform').form('clear');		//	清空FORM
		    		$('#editWin').window('close');		//关闭窗口
		            $('#datagrid').datagrid("reload");		//从新加载Grid
		        }   
		    }   
		});  
	
	}

</script>
	
	<div id="pwd" class="easyui-window" title="设置" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:300px;height:300px;padding:10px;">
			<div data-options="region:'center'"  style="padding:2px">
				<form action="" id="editform" method="post">
				<input type="hidden" id="provenceEditHidden"  value="${csr.provense }"/>
				<input type="hidden" id="cityEditHidden"  value="${csr.city }"/>
				<input type="hidden" id="departidEditHidden"  value="${csr.departid }"/>
				<input type="hidden" id="postionEditHidden"  value="${csr.postion }"/>
				<input type="hidden" name="user_id" id="postionEditHidden"  value="${csr.user_id }"/>
				  	<table class="table table-hover table-condensed">
				  		<tr>
				  			<td>登录密码：</td>
				  			<td><input type="text" readonly="readonly" name="csrid" value="${csr.csrid}" class="easyui-validatebox" data-options="required:true,validType:'length[2,22]'" style="width:135px" /> </td>
				  			<td>新密码：</td>
				  			<td><input type="text" name="csrname" value="${csr.csrname}" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
				  			<td>确认密码：</td>
				  			<td><input type="text" name="csrname" value="${csr.csrname}" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
				  		</tr>
				  		
				  	</table>
	  			</form>
			</div>
			<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="edit()">保存</a>
			</div>
		</div>
		
    
