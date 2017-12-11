<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">

	$(function(){
		$('#left_menu_tree').tree({
			url:'roleCtrl/getRoleTree.do',
			fit:true,
    		lines:true,
    		onlyLeafCheck:true,
			checkbox:true
		});


		$('#departid').combobox({
		    url:'departCtrl/getDepartList.do',   
		    valueField:'departid',
		    textField:'departname'
		});
		
		$('#groupid').combobox({   
		    url:'groupCtrl/getGroupList.do',   
		    valueField:'groupid',   
		    textField:'groupname'  
		}); 
		$('#departid').combobox({   
		    url:'departCtrl/getDepartList.do',   
		    valueField:'departid',   
		    textField:'departname'  
		}); 
		$('#provence').combobox({
			url:'provenceCtrl/getProvenceList.do', 
		    valueField:'provincename',   
		    textField:'provincename', 
		    onLoadSuccess: function (data) {
		    if (data) {
		    }},onSelect: function(rec){  
				 var val=rec.provinceid;
			      var url = 'provenceCtrl/getCityList.do?provinceid='+val ;
			      $('#city').combobox({
				        url:url,
				        valueField:'cityname',
				        textField:'cityname'
				    });
				}
		}); 
	});

	function addCsr(s){
		$.messager.progress();	// 显示一个进度条 
		$('#form').form('submit', {   
		    url:'csrCtrl/add.do?checkList='+s,//${ctx}
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
		        	$('#form').form('clear');		//	清空FORM
		    		$('#addWin').window('close');		//关闭窗口
		            $('#datagrid').datagrid("reload");		//从新加载Grid
		        }   
		    }   
		}); 
		}
	
	function add(){
		var csrid = $('#csridAdd').val();
		$.getJSON("${pageContext.request.contextPath}/csrCtrl/checkCsrid.do?csrid="+csrid, function(data){
			var strjson = eval(data);
			if(data == true){
				var nodes = $('#left_menu_tree').tree('getChecked');
				var s = '';
				for(var i=0; i<nodes.length; i++){
					if (s != '') s += ',';
					s += nodes[i].id;
				}
				var isValid = $('#form').form('validate');
				
				if(s==""){
						$.messager.confirm('角色确认', '您确认不给用户选择角色吗？', function(r){
							if (r){
								if(isValid){
									addCsr(s);
								}
							}
						});
					}else{
						if(isValid){
							addCsr(s);
						}
						}
				}else{
					$.messager.alert("提示","登录号码已经存在，请更换",'info');
					}
			})

	}

</script>

<style>


</style>
	
	<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'east'"  style="width:170px">
				<ul id="left_menu_tree"></ul>
			</div>
			<div data-options="region:'center'"  style="padding:2px">
				<form id="form" action=""  method="post"> <!-- 注意指定POST否则表单提交乱码 -->
				  	<table  class="tablenew table-hover table-condensed">
				  		<tr>
				  			<td>登录号码：</td>
				  			<td><input type="text" id="csridAdd" name="csrid" class="easyui-validatebox" style="width:135px"
				  			data-options="
				  			required:true,
				  			validType:'length[2,22]'
				  			"  /> </td>
				  			<td>姓名：</td>
				  			<td><input type="text" name="csrname" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
				  		</tr>
				  		
				  		<tr>
				  			<td>密码：</td>
				  			<td><input type="password" name="passwd" class="easyui-validatebox" data-options="required:true,validType:'length[2,22]'" style="width:135px" /> </td>
				  			<td>性别：</td>
								<td>
				  			<select id="sex" name="sex"  style="width:147px" class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" >
					  			<option value="男">男</option>
					  			<option value="女">女</option>
				  			</select>
				  			</td>
				  			</tr>
				  			<tr>
				  			<td>部门：</td>
				  			<td>
				  				<select id="departid" name="departid"  style="width:147px"  class="" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" ></select>
				  			</td>
				  			
				  			<td>小组名称：</td>
				  			<td>
				  				<select id="groupid" name="groupid"  style="width:147px"  class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" ></select>
				  			</td>
				  			
				  				</tr>
				  		<tr>
				  			<td>省：</td>
				  			<td>
							<select id="provence"  name="provense" data-options="width:147,height:29,editable:false"></select> 
						
							</td>
				  			<td>市：</td>
				  			<td>
				  			<select  id="city" name="city" class="easyui-combobox"  data-options="valueField:'cityid',textField:'cityname',width:147,height:29,editable:false"></select>  
				  			</td>
				  		</tr>
				  		<tr>
				  		
				  		<td>职位：</td>
				  			<td>
				  				<select id="postion" name="postion"  style="width:147px" class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true" >
				  					<option value="1" >管理员</option>
				  					<option value="2" >值班长</option>
				  					<option value="3" >IB坐席</option>
				  					<option value="4" >OB坐席</option>
				  				</select>
				  			</td>
				  			<td>话务工号：</td>
				  			<td><input type="text" name="agentid" class="easyui-validatebox" style="width:135px" /> </td>
				  		</tr>
				  		<tr>
				  		<td>联系电话：</td>
				  			<td><input type="text" name="phone" class="easyui-validatebox"  style="width:135px" /> </td>
				  		<td></td><td></td>
				  		
				  		</tr>
				  	</table>
	  			</form>
			</div>
			<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    		<a href="javascript:void(0)" class="easyui-linkbutton"  data-options="iconCls:'fa fa-save fa-lg'"  onclick="add()">保存</a>
			</div>
		</div>

