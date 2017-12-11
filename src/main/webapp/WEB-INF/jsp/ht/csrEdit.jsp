<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">	

	$(function(){

		$("#postionEdit").attr("value",$('#postionEditHidden').val());
		//$("#departidEdit").attr("value",$('#departidEditHidden').val());
		//显示部门下拉框
		$('#departidEdit').combobox({   
		    url:'departCtrl/getDepartList.do',   
		    valueField:'departid',   
		    textField:'departname',
		    onLoadSuccess:function(){
    			$('#departidEdit').combobox('select', $('#departidEditHidden').val());
			} 
		}); 
		
		$('#groupidEdit').combobox({   
		    url:'groupCtrl/getGroupList.do',   
		    valueField:'groupid',   
		    textField:'groupname',
		    onLoadSuccess:function(){
	    		$('#groupidEdit').combobox('select', $('#groupidEditHidden').val());
		    } 
		}); 
		
		var falg = 0;
		var pro=$("#provenceEditHidden").val();
		var cit=$("#cityEditHidden").val();
		$('#provenceEdit').combobox({ 
			url:'provenceCtrl/getProvenceList.do', 
	    	valueField:'provincename',   
	    	textField:'provincename', 
			onLoadSuccess: function (data) {
					if (data) {
	        			$('#provenceEdit').combobox('select',pro);
					}
	  			  },
	  		onSelect: function(rec){
				var val=rec.provinceid;
		      	var url = 'provenceCtrl/getCityList.do?provinceid='+val ;
		      	$('#cityEdit').combobox({
			        url:url,
			        valueField:'cityname',
			        textField:'cityname',
			        onLoadSuccess: function () {
			    	    if (cit!=null||cit!='') {
				    	    if(falg==0){
				    	    	  $('#cityEdit').combobox('setValue',cit);
					    	    }
				    	    falg++;
			    	      
			    	    }
				 	}
			    });
			}
	   
	   
	}); 


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
		        	$.messager.alert('提示',data.msg,'info');
		        	$('#editform').form('clear');		//	清空FORM
		    		$('#editWin').window('close');		//关闭窗口
		            $('#datagrid').datagrid("reload");		//从新加载Grid
		        }   
		    }   
		});  
	
	}

	function edit(){

		var nodes = $('#editMenuTree').tree('getChecked');
		var s = '';
		for(var i=0; i<nodes.length; i++){
			if (s != '') s += ',';
			s += nodes[i].id;
		}
		if(s==""){
				$.messager.confirm('角色确认', '您确认不给用户选择角色吗？', function(r){
					if (r){
						editCsr(s);
					}
				});
			}else{
					editCsr(s);
				}
	}
</script>
	
	<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'east'"  style="width:160px">
				<ul id="editMenuTree"></ul>
			</div>
			<div data-options="region:'center'"  style="padding:2px">
				<form action="" id="editform" method="post">
				<input type="hidden" id="provenceEditHidden"  value="${csr.provense }"/>
				<input type="hidden" id="cityEditHidden"  value="${csr.city }"/>
				<input type="hidden" id="departidEditHidden"  value="${csr.departid }"/>
				
				<input type="hidden" id="groupidEditHidden"  value="${csr.groupid }"/>
				
				<input type="hidden" id="postionEditHidden"  value="${csr.postion }"/>
				<input type="hidden" name="user_id" id="postionEditHidden"  value="${csr.user_id }"/>
				  	<table class="tablenew table-hover table-condensed">
				  		<tr>
				  			<td>登录号码：</td>
				  			<td><input type="text" readonly="readonly" name="csrid" value="${csr.csrid}" class="easyui-validatebox" data-options="required:true,validType:'length[2,22]'" style="width:135px" /> </td>
				  			<td>姓名：</td>
				  			<td><input type="text" name="csrname" value="${csr.csrname}" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
				  		</tr>
				  		
				  		<tr>
				  			<td>密码：</td>
				  			<td><input type="password" readonly="readonly" name="passwd" value="${csr.passwd}" class="easyui-validatebox" data-options="required:true,validType:'length[2,22]'" style="width:135px" /> </td>
				  		
				  			<td>性别：</td>
				  			
								<td>
				  		<select id="sex" name="sex"  style=width:147px class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" >
				  			<option value="男">男</option>
				  			<option value="女">女</option>
				  			</select>
				  			</td>
				  		</tr>
				  		<tr>
				  			<td>部门：</td>
				  			<td>
				  		<select id="departidEdit" name="departid"  style="width:147px"  class="" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" ></select>
				  			</td>
				  				  <td>小组名称：</td>
				  			<td>
				  				<select id="groupidEdit" name="groupid"  style="width:147px"  class="" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" ></select>
				  			</td>	
				  				  	
				  				  		</tr>
				  		<tr>
				  			<td>省：</td>
				  			<td>
							<select id="provenceEdit" name="provense"  data-options="width:147,height:29,editable:false"></select> 
						
							</td>
				  			<td>市：</td>
				  			<td>
				  			<select id="cityEdit" class="easyui-combobox" name="city"  data-options="valueField:'cityid',textField:'cityname',width:147,height:29,editable:false"></select>  
				  			</td>
				  		</tr>
				  		<tr>
				  		
				  		<td>查看权限：</td>
				  			<td>
				  				<select id="postionEdit" name="postion"  style="width:147px" class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" >
				  					<option value="1" >管理员</option>
				  					<option value="2" >值班长</option>
				  					<option value="3" >IB坐席</option>
				  					<option value="4" >OB坐席</option>
				  				</select>
				  			</td>
				  			<td>话务工号：</td>
				  			<td><input type="text" name="agentid" value="${csr.agentid}"class="easyui-validatebox"  style="width:135px" /> </td>
				  		</tr>
				  		
				  		<tr>
				  		<td>联系电话：</td>
				  			<td><input type="text" name="phone" value="${csr.phone}" class="easyui-validatebox"  style="width:135px" /> </td>
			
				  		<td></td><td></td>
				  		
				  		</tr>
				  	</table>
	  			</form>
			</div>
			<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="edit()">保存</a>
			</div>
		</div>
		
    
