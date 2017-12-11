<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function addMenu(){
		$.messager.progress();	// 显示一个进度条
		$('#addFormMenu').form('submit', {   
		    url:'menuCtrl/addMenu.do',//${ctx}
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
		        	$.messager.alert('提示','添加菜单成功,请到角色管理配置权限！','info');//title: 标题文本,显示在panel的头部的.msg: 显示的消息文本.icon:显示icon图片,可用值有: error,question,info,warning
		        	$('#addFormMenu').form('clear');		//	清空FORM
		    		$('#addWin').window('close');		//关闭窗口
		            $('#datagridMenu').treegrid("reload");		//从新加载Grid
		        }else{
		        	$.messager.alert('提示','添加菜单失败','info')
		        }
		    }   
		});  
	
	}

	function modalDialog(options) {
		var opts = $.extend({
			title : '&nbsp;',
			width : 640,
			height : 480,
			modal : true,
			onClose : function() {
				$(this).dialog('destroy');
			}
		}, options);
		opts.modal = true;// 强制此dialog为模式化，无视传递过来的modal参数
		if (options.url) {
			opts.content = '<iframe id="" src="' + options.url + '" allowTransparency="true" scrolling="auto" width="100%" height="98%" frameBorder="0" name=""></iframe>';
		}
		return $('<div/>').dialog(opts);
	};
	
	//显示所有小图片add by 马飞
	function showIcons(){
		var dialog = modalDialog({
			title : '浏览小图标',
			url : '${pageContext.request.contextPath}/style/icons.jsp',
			buttons : [ {
				text : '确定',
				handler : function() {
					dialog.find('iframe').get(0).contentWindow.selectIcon(dialog, $('#imgEdit'));
				}
			} ]
		}); 
	}
	
	function isMenuSelect(data){
		if(data.value == 1){
			$('#urlEdit').val("");
			$('#urlEdit').attr("readonly",true)
		}else{
			$('#urlEdit').attr("readonly",false)
		}
	}
</script>
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" style="padding:2px">
			<form action="" id="addFormMenu" method="post">
			  	<table class="tablenew table-hover table-condensed">
			  		<tr>
			  			<td>菜单名字：</td>
			  			<td><input type="text" name="menuname"  class="easyui-validatebox" data-options="required:true,validType:'length[0,10]'" style="width:135px" /></td>
			  			<td>排序：</td>
			  			<td><input type="text" name="orderid"  class="easyui-numberbox" data-options="required:true,validType:'integer'" style="width:147px" /> </td>
			  		</tr>
			  		<tr>
						<td>父节点</td>
						<td>
							<input class="easyui-combotree"  name="pid"  data-options="url:'${pageContext.request.contextPath}/menuCtrl/getTreeMenuAdd.do',method:'get'" style="width:150px;height: 29px;">
						</td>
						<td>是否菜单</td>
						<td>
							<select  name="ismenu"  style="width:147px;" class="easyui-combobox" data-options="width:150,height:29,editable:false,panelHeight:'auto',required:true,onSelect:isMenuSelect" >
					  			<option value="0">是</option>
					  			<option value="1">否</option>
				  			</select>
						</td>
					</tr>
			  		<tr>
			  			<td>图标：</td>
			  			<td>
			  				<input type="text" id="imgEdit" name="img" readonly="readonly" value=""  data-options="" style="width:120px" />
							<img class="iconImg ext-icon-zoom" onclick="showIcons();" title="浏览图标" src="${pageContext.request.contextPath}/style/icons/pixel_0.gif">
			  			</td>
			  			<td>URL：</td>
			  			<td><input type="text" id="urlEdit" name="url"  data-options="" style="width:135px" /> </td>
			  		</tr>
								  		
			  	</table>
  			</form>
		</div>
		<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="addMenu()">保存</a>
		</div>
	</div>

