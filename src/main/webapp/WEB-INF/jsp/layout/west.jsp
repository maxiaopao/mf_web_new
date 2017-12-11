<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

$(function(){
	$('#left_menu_tree').tree({
		url:'${pageContext.request.contextPath}/menuCtrl/menuTree.do',
		//animate:true,//定义当展开/折叠节点的时候是否显示效果.
		fit:true,
		lines:false,//定义是否显示树线.
		onClick:function(node){
			//判断是否有子节点
			if(node.children != ""){
				$(this).tree('toggle', node.target);//切换expanded/collapsed 节点的状态,target 参数指明节点DOM对象.
			}else{
				var href = '${pageContext.request.contextPath}/gotoPage.do?targetUrl='+node.attributes.url;
				
				CreateTabExt(node.text,href,node.iconCls);//自定义函数：创建TAB页
			}
		}
	});
});
	
</script>

<div class="easyui-accordion" data-options="fit:true,border:false">
	<div title="  " style="padding: 5px;" data-options="border:false,isonCls:'cog',tools : [ {
				iconCls : 'ext-icon-database_refresh',
				handler : function() {
					$('#left_menu_tree').tree('reload');
				}
			}, {
				iconCls : 'ext-icon-resultset_next',
				handler : function() {
					var node = $('#left_menu_tree').tree('getSelected');
					if (node) {
						$('#left_menu_tree').tree('expandAll', node.target);
					} else {
						$('#left_menu_tree').tree('expandAll');
					}
				}
			}, {
				iconCls : 'ext-icon-resultset_previous',
				handler : function() {
					var node = $('#left_menu_tree').tree('getSelected');
					if (node) {
						$('#left_menu_tree').tree('collapseAll', node.target);
					} else {
						$('#left_menu_tree').tree('collapseAll');
					}
				}
			} ]">
		<div class="well well-small">
			<ul id="left_menu_tree"></ul>
		</div>
	</div>
</div>
