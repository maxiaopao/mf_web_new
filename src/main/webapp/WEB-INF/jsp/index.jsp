<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>多媒体后台管理系统</title>
    <%@include file="/include.jsp" %>

    <script type="text/javascript">

    function linshidenglu() {
		var id = document.getElementById("loginName");
		var psd = document.getElementById("loginPwd");

		if (id.value == null || id.value == ""
				|| id.value.replace(/\s/g, "") == "") {
			document.getElementById("msg").innerHTML = "请输入用户名!";
			return false;
		} else if (psd.value == null || psd.value == ""
				|| psd.value.replace(/\s/g, "") == "") {
			document.getElementById("msg").innerHTML = "请输入密码！";
			return false;
		}
		
		$.ajax( {
			type : "post",//请求方式
			url : '${pageContext.request.contextPath}/csrCtrl/login.do',
			dataType : "json",
			data : $.serializeObject($('#linshiform')),//传给PHP的数据，多个参数用&连接
			success : function(result) {
				if (result.success) {
					 $('#linshidenglu').window('close');
					 $("#loginPwd").val("");
				} else {
					$('#msg').html(result.msg);
				}
			}
		});

	}
    
	function sessionLogin(){
		$('#linshidenglu').window('open');
	}

    var tabs;
    $(function() {
    	//全局的ajax访问，处理ajax清求时sesion超时  
		$.ajaxSetup({ 
		    error: function (XMLHttpRequest, textStatus, errorThrown){
		            if(XMLHttpRequest.status==403){
		                alert('您没有权限访问此资源或进行此操作');
		                return false;
		            }
		        },  
		     complete:function(XMLHttpRequest,textStatus){   
		        var sessionstatus=XMLHttpRequest.getResponseHeader("sessionstatus"); //通过XMLHttpRequest取得响应头,sessionstatus， 
		            if(sessionstatus=='timeout'){   
		                  //如果超时就处理 ，指定要跳转的页面  
		                 alert('登录超时, 请重新登录.'); 
		             }   
		     }   
		});
    	

		//监听右键事件，创建右键菜单
		$('#tabs').tabs({
			onContextMenu:function(e, title,index){
				e.preventDefault();
				if(index>0){
					$('#mm').menu('show', {
                        left: e.pageX,
                        top: e.pageY
                    }).data("tabTitle", title);
               }
           }
       });
    
    	//右键菜单click
        $("#mm").menu({
            onClick : function (item) {
                closeTab(this, item.name);
            }
        });
    	
        tabs = $('#tabs').tabs({
    		fit : true,
    		border : false,
    		tools : [ 
    		{
    			text : '刷新',
    			iconCls : 'ext-icon-arrow_refresh',
    			handler : function() {
    				var panel = tabs.tabs('getSelected').panel('panel');
    				var frame = panel.find('iframe');
    				try {
    					if (frame.length > 0) {
    						for (var i = 0; i < frame.length; i++) {
    							frame[i].contentWindow.document.write('');
    							frame[i].contentWindow.close();
    							frame[i].src = frame[i].src;
    						}
    						if (navigator.userAgent.indexOf("MSIE") > 0) {// IE特有回收内存方法
    							try {
    								CollectGarbage();
    							} catch (e) {
    							}
    						}
    					}
    				} catch (e) {
    				}
    			}
    		}, {
    			text : '关闭',
    			iconCls : 'ext-icon-cross',
    			handler : function() {
    				var index = tabs.tabs('getTabIndex', tabs.tabs('getSelected'));
    				var tab = tabs.tabs('getTab', index);
    				if (tab.panel('options').closable) {
    					tabs.tabs('close', index);
    				} else {
    					$.messager.alert('提示', '[' + tab.panel('options').title + ']不可以被关闭！', 'error');
    				}
    			}
    		} ]
    	});
    });
    
    //删除Tabs
        function closeTab(menu, type) {
            var allTabs = $("#tabs").tabs('tabs');
            var allTabtitle = [];
            $.each(allTabs, function (i, n) {
                var opt = $(n).panel('options');
                if (opt.closable)
                    allTabtitle.push(opt.title);
            });
            var curTabTitle = $(menu).data("tabTitle");
            var curTabIndex = $("#tabs").tabs("getTabIndex", $("#tabs").tabs("getTab", curTabTitle));
            switch (type) {
                case 1:
                    $("#tabs").tabs("close", curTabIndex);
                    return false;
                    break;
                case 2:
                    for (var i = 0; i < allTabtitle.length; i++) {
                        $('#tabs').tabs('close', allTabtitle[i]);
                    }
                    break;
                case 3:
                    for (var i = 0; i < allTabtitle.length; i++) {
                        if (curTabTitle != allTabtitle[i])
                            $('#tabs').tabs('close', allTabtitle[i]);
                    }
                    $('#tabs').tabs('select', curTabTitle);
                    break;
                case 4:
                    for (var i = curTabIndex; i < allTabtitle.length; i++) {
                        $('#tabs').tabs('close', allTabtitle[i]);
                    }
                    $('#tabs').tabs('select', curTabTitle);
                    break;
                case 5:
                    for (var i = 0; i < curTabIndex-1; i++) {
                        $('#tabs').tabs('close', allTabtitle[i]);
                    }
                    $('#tabs').tabs('select', curTabTitle);
                    break;
                case 6: //刷新
                    var panel = $("#tabs").tabs("getTab", curTabTitle).panel("refresh");
                    break;
            }

        }
    

	//创建新的TAB
	function CreateTabExt(title,href,icon){
		var tabs = $('#tabs');
		var opts = {
				title : title,
				closable : true,
				iconCls : icon,
				content : $.formatString('<iframe src="{0}" allowTransparency="true" style="border:0;width:100%;height:100%;" frameBorder="0"></iframe>', href),
				border : false,
				fit : true
			};
		if (tabs.tabs('exists', opts.title)) {
			tabs.tabs('select', opts.title);
		} else {
			tabs.tabs('add', opts);
		}
		
	}
	

	//创建新的TAB
	function CreateCloseTabExt(title,href,icon){
		//判断是否已经打开
		if($('#tabs').tabs('exists', title)) {
			$('#tabs').tabs('close', title);
		}
		var tabs = $('#tabs');
		var opts = {
				title : title,
				closable : true,
				iconCls : icon,
				content : $.formatString('<iframe src="{0}" allowTransparency="true" style="border:0;width:100%;height:100%;" frameBorder="0"></iframe>', href),
				border : false,
				fit : true
			};
		tabs.tabs('add', opts);
	}
	//关闭 的TAB
	function CloseTab(title,href,icon){
		//判断是否已经打开
		if($('#tabs').tabs('exists', title)) {
			$('#tabs').tabs('close', title);
		}
	}



	</script>
  </head>
  
  <body id="layout" class="easyui-layout" data-options="fit:true">
 
		<div  data-options="region:'north',href:'${ctx}/gotoPage.do?targetUrl=/layout/north'" style="height:60px;  overflow: hidden;">
		</div>
	
		<div id="" data-options="region:'west',href:'${ctx}/gotoPage.do?targetUrl=/layout/west'"  style="width: 240px; height:100%;  overflow: hidden;"></div>
		
		
		<div data-options="region:'center'" title="" style="padding:0px; overflow: hidden;">
			<div id="tabs" class="easyui-tabs" data-options="border:false" style="width:100%;height:100%;padding:0px; overflow:hidden;">
			<div title="首页" data-options="border:false,iconCls:'ext-icon-house'" style="overflow: hidden;">
					<iframe src="${ctx}/gotoPage.do?targetUrl=/homePage" name="mainw" frameborder="0" style="border: 0; width: 100%; height: 100%;"></iframe>
				</div>
			</div>
		</div>
<!-- 
#########################################################################################################################################
###############################################        右侧可收缩模块                     #############################################################
 -->		  
			
<!-- 密码修改  -->
<div id="Password" class="easyui-window" closed="true" modal="true" title="修改密码"
       			 style="width: 320px; height: 200;" collapsible="false" minimizable="false"
       		 maximizable="false">
       	<div class="easyui-layout" data-options="fit:true">  
       		<div align="center" data-options="region:'center'" style="padding:2px">
            <form id="winPassword_s" name="winPassword_s">
            	<table >
            		<tr>
            			<td>
            				旧密码：
            			</td>
            			<td>
            				<input type="password"  value="" name="passwd" id="passwd" class="easyui-validatebox" data-options="" style="width:135px" />
            			</td>
            		</tr>
            		<tr>
            			<td>
            				新密码：
            			</td>
            			<td>
            				 <input type="password" id="passwdnew" name="passwdnew" class="easyui-validatebox" data-options="validType:'length[2,22]'" style="width:135px" />
            			</td>
            		</tr>
            		<tr>
            			<td>
            				确认密码：
            			</td>
            			<td>
            				<input type="password" id="passwd2" name="passwd2" class="easyui-validatebox" data-options="" style="width:135px" />
            			</td>
            		</tr>
            		
            	</table>
            
                </form>
              </div>
              <div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)"  onclick="javascript:changePassword()" class="easyui-linkbutton" iconCls="icon-save">提交</a>
		</div>
          </div>
    </div>
    <div id="linshidenglu" class="easyui-window" closed="true" modal="true" title="用户登录"
       			 style="width: 320px; height: 200;" collapsible="false" minimizable="false"
       		 maximizable="false">
       		 	<div class="easyui-layout" data-options="fit:true">  
       		<div align="center" data-options="region:'center'" style="padding:2px">
       		<font style="" id="msg" color="red" size="2px;">${msg}</font>
       		 <form id="linshiform" action="">
       		 <table>
       		  	<tr>
       		 		<td style="color: red" colspan="2"> session失效，需要重新输入密码登录</td>
       		 		
       		 	</tr>
       		 	<tr><td height="25px;" style="color: red" colspan="2"></td></tr>
       		 	<tr>
       		 		<td>用户名：</td>
       		 		<td><input id="loginName"  name="csrid" type="text" readonly="readonly" value="${csrSession.csrid}"
									 /></td>
       		 	</tr>
       		 	<tr>
       		 		<td>密码：</td>
       		 		<td><input id="loginPwd" name="passwd" type="password"
									/></td>
       		 	</tr>
       		 </table>
       		 
       		 </form>
       		 </div>
              <div data-options="region:'south'" style="height:38px;text-align:center;padding:2px">
	    	<a href="javascript:void(0)"  onclick="linshidenglu();" class="easyui-linkbutton" iconCls="icon-save">登录</a>
		</div>
          </div>
    </div>
    
    
    <div id="mm" class="easyui-menu" style="width: 170px;">
 		<div id="" data-options="name:6,iconCls:'icon-remove'">刷新</div>
        <div id="mm-tabclose" data-options="name:1">关闭</div>
        <div id="mm-tabcloseall" data-options="name:2,iconCls:'icon-remove'">全部关闭</div>
        <div id="mm-tabcloseother" data-options="name:3">除此之外全部关闭</div>
        <div class="menu-sep"></div>
        <div id="mm-tabcloseright" data-options="name:4">当前页右侧全部关闭</div>
        <div id="mm-tabcloseleft" data-options="name:5">当前页左侧全部关闭</div>

    </div>
    
  </body>
</html>
