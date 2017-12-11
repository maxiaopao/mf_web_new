<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	function edit(){
		$.messager.progress();	// 显示一个进度条 
		$('#editFormMenu').form('submit', {   
		    url:'menuCtrl/updateMenu.do',//${ctx}
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
		        	$('#datagridMenu').treegrid('reload');		//从新加载Grid
		        	$.messager.alert('提示',data.msg,'info');//title: 标题文本,显示在panel的头部的.msg: 显示的消息文本.icon:显示icon图片,可用值有: error,question,info,warning
		        	$('#editFormMenu').form('clear');		//	清空FORM
		    		$('#editWin').window('close');		//关闭窗口
		            
		        }else{
		        	$.messager.alert('提示',data.msg,'info');
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
	
	function showFontIcons(){
		$('#showFontIcons').window({  
			    width: 1050,  
			    height: 380,  
				top:0,
			    resizable:false,
			    closed: false,  
			    minimizable:false,
			    maximizable:false,
			    cache: false,  
			    href: 'gotoPage.do?targetUrl=/font/font',  
			    modal: true,
			    onLoad:function(){
			    	$(function(){
						$(".fa-hover").each(function(){
							$(this).click(function(){
								
								var a = $("i",$(this));
								arrVal(a[0].className);
								$("#showFontIcons").window('close');
							});
						});
					});
			    }
			}); 
	}
	function arrVal(v){
		$("#imgEdit").val(v);
	}
	
</script>
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" style="padding:2px">
			<form action="" id="editFormMenu" method="post">
			<input type="hidden" name="menuid" value="${menu.menuid}" />
			  	<table class="tablenew table-hover table-condensed">
			  		<tr>
			  			<td>菜单名称：</td>
			  			<td><input type="text" name="menuname" value="${menu.menuname}" class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'" style="width:135px" /> </td>
			  		</tr>
			  		
			  		<c:if test="${menu.ismenu == 0 }">
			  		<tr>
			  			<td>url：</td>
			  			<td><input type="text" name="url" value="${menu.url}" class="easyui-validatebox" data-options="" style="width:135px" /> </td>
			  		</tr>
					</c:if>
			  		<tr>
			  			<td>图标：</td>
			  			<td >
			  				<input type="text"  id="imgEdit" name="img" readonly="readonly" value="${menu.img}" class="easyui-validatebox" data-options="" style="width:135px" />
							<img class="iconImg ext-icon-zoom" onclick="showFontIcons();" title="浏览图标" src="${pageContext.request.contextPath}/style/icons/pixel_0.gif">
			  			</td>
			  		</tr>
			  		<tr>
			  			<td>排序：</td>
			  			<td><input type="text" name="orderid" value="${menu.orderid}" class="easyui-numberbox" data-options="required:true" style="width:147px" /> </td>
			  		</tr>
			  	</table>
  			</form>
		</div>
		<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="edit()">保存</a>
		</div>
		
	</div>

