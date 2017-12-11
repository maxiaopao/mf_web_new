<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
	function create(){
		$('#form').form('submit', {   
		    url:'${ctx}/codeCtrl/proCode.do',//${ctx}
		    onSubmit: function(){   
				var isValid = $(this).form('validate');
				if (!isValid){
					$.messager.progress('close');	// 当form不合法的时候隐藏工具条
				}
				return isValid;	// 返回false将停止form提交 
		    },   
		    success:function(data){
		    	 
		    }   
		});  
	}
	
</script>
	<div class="easyui-layout" data-options="fit:true">
		<div data-options="region:'center'" style="padding:2px">
			<form id="form" action=""  method="post"> <!-- 注意指定POST否则表单提交乱码 -->
			  	<table class="tablenew table-hover table-condensed">
					<tr>
			  			<td>主键：</td>
			  			<td><input type="text" id="primary" name="primary" readonly="readonly" class="easyui-validatebox" data-options="required:true" style="width:135px" /> </td>
			  			<td>包名：</td>
			  			<td><input type="text" name="packagename" class="easyui-validatebox" data-options="required:true" style="width:135px" /> </td>
			  		</tr>
			  		<tr>
			  			<td>表名：</td>
			  			<td><input type="text" id="tablename" name="tablename" readonly="readonly" class="easyui-validatebox" data-options="required:true" style="width:135px" /> </td>
			  			<td>实体类名：</td>
			  			<td><input type="text"  id="objectname"  name="objectname" class="easyui-validatebox" data-options="required:true" style="width:135px" /> </td>
			  		</tr>
			  		<tr>
			  			<td>字段：</td>
			  			<td colspan="3">
				  			<textarea id="fieldlist" name="fieldlist"  readonly="readonly"  class="easyui-validatebox" data-options="required:true"    style="width: 380px;height: 77px;"></textarea>
						</td>
			  		</tr>
			  	</table>
  			</form>
		</div>
		<div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'fa fa-save fa-lg'" onclick="create()">保存</a>
		</div>
	</div>

