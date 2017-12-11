<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${r"${"}pageContext.request.contextPath${r"}"}"/>
<#if (falg>1)>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</#if>


<script type="text/javascript">
	function edit(){
		$.messager.progress();	// 显示一个进度条 
		$('#${"${objectname}"?uncap_first}EditForm').form('submit', {   
		    url:'${r"${"}ctx${r"}"}/${"${objectname}"?uncap_first}Ctrl/${"${objectname}"?uncap_first}Edit.do',
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
		        	$('#${"${objectname}"?uncap_first}EditForm').form('clear');		//	清空FORM
		    		$('#${"${objectname}"?uncap_first}EditWin').window('close');		//关闭窗口
		             $('#${"${objectname}"?uncap_first}DataGrid').datagrid("reload");
		        }else{
		        	$.messager.alert('提示',data.msg,'info');
		        }
		    }   
		});  
	}
</script>

<div class="easyui-layout" data-options="fit:true">
	<div data-options="region:'center'" style="padding:2px">
		<form action="" id="${"${objectname}"?uncap_first}EditForm" method="post">
			<input type="hidden" name="${"${primary}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${primary}"?lower_case}${r"}"}" />
		  	<table class="tablenew table-hover table-condensed">
		  		<tr>
	  			<#list fieldList as var>
	  				<#switch var[1]> 
					<#case 'int'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-numberbox" data-options="required:true" style="width:135px" /> </td>
					<#break> 
					<#case 'varchar'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-validatebox" data-options="required:true,validType:'length[1,${var[3]}]'" style="width:135px" /> </td>
					<#break> 
					<#case 'char'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-validatebox" data-options="required:true,validType:'length[1,${var[3]}]'" style="width:135px" /> </td>
					<#break> 
					<#case 'text'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-validatebox" data-options="required:true,validType:'length[1,${var[3]}]'" style="width:135px" /> </td>
					<#break> 
					<#case 'float'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-numberbox" data-options="required:true" style="width:135px" /> </td>
					<#break> 
					<#case 'double'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-numberbox" data-options="required:true" style="width:135px" /> </td>
					<#break> 
					<#case 'decimal'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-numberbox" data-options="required:true" style="width:135px" /> </td>
					<#break> 
					<#case 'date'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="<fmt:formatDate value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" pattern="yyyy-MM-dd"/>" class="easyui-datebox" data-options="width:150,height:29,editable:false,required:true" /> </td>
					<#break> 
					<#case 'datetime'> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="<fmt:formatDate value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" pattern="yyyy-MM-dd HH:mm:ss"/>" class="easyui-datetimebox" data-options="width:150,height:29,editable:false,required:true"  /> </td>
					<#break> 
					<#case 'blob'> 
						
					<#break> 
					<#default> 
	  				<td>${var[2]}：</td>
	  				<td><input type="text" name="${"${var[0]}"?lower_case}" value="${r"${"}${"${objectname}"?uncap_first}.${"${var[0]}"?lower_case}${r"}"}" class="easyui-numberbox" data-options="required:true" style="width:135px" /> </td>
					</#switch>
		  				<#if ((var_index+1)%2)==0 >
				</tr>
							<#if (var_index<(fieldList?size-1)) >
				<tr>
							</#if>
						</#if>	
					<#if ((fieldList?size-1)==var_index) >	
						<#if ((fieldList?size)%2)!=0 >
				</tr>
						</#if>
					</#if>	
				</#list>
		  	</table>
		</form>
	</div>
	<div data-options="region:'south'" style="height:35px;text-align:center;padding:2px">
    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="edit()">保存</a>
	</div>
</div>