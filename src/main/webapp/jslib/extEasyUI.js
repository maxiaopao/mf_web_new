/**
 * 使panel和datagrid在加载时提示
 * @requires jQuery,EasyUI
 */
$.fn.panel.defaults.loadingMessage = '加载中....';
$.fn.datagrid.defaults.loadMsg = '加载中....';


/**
 *
 * 针对panel window dialog三个组件拖动时会超出父级元素的修正
 * 如果父级元素的overflow属性为hidden，则修复上下左右个方向
 * 如果父级元素的overflow属性为非hidden，则只修复上左两个方向
 * BUG:要设置属性resizable为false，否则可以通过拖放窗体大小将其拖出父元素边界
 * @param left
 * @param top
 * @returns
 */
var easyuiPanelOnMove = function(left, top) {
	var parentObj = $(this).panel('panel').parent();
	if (left < 0) {
		$(this).window('move', {
			left : 1
		});
	}
	if (top < 0) {
		$(this).window('move', {
			top : 1
		});
	}
	var width = $(this).panel('options').width;
	var height = $(this).panel('options').height;
	var right = left + width;
	var buttom = top + height;
	var parentWidth = parentObj.width();
	var parentHeight = parentObj.height();
	if(parentObj.css("overflow")=="hidden"){
		if(left > parentWidth-width){
			$(this).window('move', {
				"left":parentWidth-width
			});
		}
		if(top > parentHeight-height){
			$(this).window('move', {
				"top":parentHeight-height
			});
		}
	}
};
$.fn.panel.defaults.onMove = easyuiPanelOnMove;
$.fn.window.defaults.onMove = easyuiPanelOnMove;
$.fn.dialog.defaults.onMove = easyuiPanelOnMove;


/**
 * @requires jQuery,EasyUI
 * panel关闭时回收内存，主要用于layout使用iframe嵌入网页时的内存泄漏问题
 */
$.fn.panel.defaults.onBeforeDestroy = function() {
	var frame = $('iframe', this);
	try {
		if (frame.length > 0) {
			for ( var i = 0; i < frame.length; i++) {
				frame[i].contentWindow.document.write('');
				frame[i].contentWindow.close();
			}
			frame.remove();
			try {
				CollectGarbage();
			} catch (e) {
			}
		}
	} catch (e) {
	}
};

/**
 * @author 孙宇
 * 
 * @requires jQuery,EasyUI
 * 
 * 创建一个模式化的dialog
 * 
 * @returns $.modalDialog.handler 这个handler代表弹出的dialog句柄
 * 
 * @returns $.modalDialog.xxx 这个xxx是可以自己定义名称，主要用在弹窗关闭时，刷新某些对象的操作，可以将xxx这个对象预定义好
 */
$.modalDialog = function(options) {
	var opts = $.extend({
		title : '',
		width : 640,
		height : 480,
		modal : true,
		onClose : function() {
			$(this).dialog('destroy');
		}
	}, options);
	opts.modal = true;// 强制此dialog为模式化，无视传递过来的modal参数
	return $.modalDialog.handler = $('<div/>').dialog(opts);
};

/**
 * @author 孙宇
 * 
 * @requires jQuery,EasyUI
 * 
 * 为datagrid、treegrid增加表头菜单，用于显示或隐藏列，注意：冻结列不在此菜单中
 */
var createGridHeaderContextMenu = function(e, field) {
	e.preventDefault();
	var grid = $(this);/* grid本身 */
	var headerContextMenu = this.headerContextMenu;/* grid上的列头菜单对象 */
	if (!headerContextMenu) {
		var tmenu = $('<div style="width:100px;"></div>').appendTo('body');
		var fields = grid.datagrid('getColumnFields');
		for ( var i = 0; i < fields.length; i++) {
			var fildOption = grid.datagrid('getColumnOption', fields[i]);
			if (!fildOption.hidden) {
				$('<div iconCls="icon-ok" field="' + fields[i] + '"/>').html(fildOption.title).appendTo(tmenu);
			} else {
				$('<div iconCls="bullet_blue" field="' + fields[i] + '"/>').html(fildOption.title).appendTo(tmenu);
			}
		}
		headerContextMenu = this.headerContextMenu = tmenu.menu({
			onClick : function(item) {
				var field = $(item.target).attr('field');
				if (item.iconCls == 'icon-ok') {
					grid.datagrid('hideColumn', field);
					$(this).menu('setIcon', {
						target : item.target,
						iconCls : 'bullet_blue'
					});
				} else {
					grid.datagrid('showColumn', field);
					$(this).menu('setIcon', {
						target : item.target,
						iconCls : 'icon-ok'
					});
				}
			}
		});
	}
	headerContextMenu.menu('show', {
		left : e.pageX,
		top : e.pageY
	});
};
$.fn.datagrid.defaults.onHeaderContextMenu = createGridHeaderContextMenu;
$.fn.treegrid.defaults.onHeaderContextMenu = createGridHeaderContextMenu;


/**
 * @author 夏悸
 * 
 * @requires jQuery,EasyUI
 * 
 * 扩展tree，使其可以获取实心节点
 */
$.extend($.fn.tree.methods, {
	getCheckedExt : function(jq) {// 获取checked节点(包括实心)
	
		var checked = $(jq).tree("getChecked");
//		var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
//		$.each(checkbox2, function() {
//			var node = $.extend({}, $.data(this, "tree-node"), {
//				target : this
//			});
//			checked.push(node);
//		});
		
		var checkbox2 = $(jq).tree("getChecked","indeterminate");
		$.each(checkbox2, function(i,item) {
			checked.push(item);
		});
		
		return checked;
	},
	getSolidExt : function(jq) {// 获取实心节点
		var checked = [];
		var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
		$.each(checkbox2, function() {
			var node = $.extend({}, $.data(this, "tree-node"), {
				target : this
			});
			checked.push(node);
		});
		return checked;
	}
});


/** 
 * **************************************************************************************************
 *  $('#tabs').tabs('addIframeTab',{      
 *   	tab:{title:'iframe'+count++,closable:true},      
 *  	iframe:{src:'http://www.loststop.com'}      
 *	}); 
 *	**************************************************************************************************
 *
 *	名称					参数类型			描述以及默认值
 *	tab					object		该参数是对象，其属性列表同于tabs自带add方法的入参属性列表。
 *	iframe.src			string		目标框架页面的地址，必填项。
 *	iframe.height		string		框架标签iframe的高度，默认值为'100%'。
 *	iframe.width		string		框架标签iframe的宽度，默认值为'100%'。
 *	iframe.frameBorder	number		框架标签iframe的边框宽度，默认值为0。
 *	iframe.message		string		加载中效果显示的消息，默认值为'Processing, please wait ...'
 *
 *****************************************************************************************************
 *
 */  
$.extend($.fn.tabs.methods, {   
    /**
     * 增加iframe模式的标签页  
     * @param {[type]} jq     [description]  
     * @param {[type]} params [description]  
     */  
    addIframeTab:function(jq,params){   
        return jq.each(function(){   
            if(params.tab.href){   
                delete params.tab.href;   
            }   
            $(this).tabs('add',params.tab);   
            var opts = $(this).tabs('options');   
            var $tabBody = $(this).tabs('getTab',params.tab.title).panel('body');   
            $tabBody.css({'overflow':'hidden','position':'relative'});   
            var $mask = $('<div style="position:absolute;z-index:2;width:100%;height:100%;background:#ccc;z-index:1000;opacity:0.3;filter:alpha(opacity=30);"><div>').appendTo($tabBody);   
            var $maskMessage = $('<div class="mask-message" style="z-index:3;width:auto;height:16px;line-height:16px;position:absolute;top:50%;left:50%;margin-top:-20px;margin-left:-92px;border:2px solid #d4d4d4;padding: 12px 5px 10px 30px;background: #ffffff url(\'../../themes/default/images/loading.gif\') no-repeat scroll 5px center;">' + (params.iframe.message || 'Processing, please wait ...') + '</div>').appendTo($tabBody);   
            var $containterMask = $('<div style="position:absolute;width:100%;height:100%;z-index:1;background:#fff;"></div>').appendTo($tabBody);   
            var $containter = $('<div style="position:absolute;width:100%;height:100%;z-index:0;"></div>').appendTo($tabBody);   
  
            var iframe = document.createElement("iframe");   
            iframe.src = params.iframe.src;   
            iframe.frameBorder = params.iframe.frameBorder || 0;   
            iframe.height = params.iframe.height || '100%';   
            iframe.width = params.iframe.width || '100%';   
            if (iframe.attachEvent){   
                iframe.attachEvent("onload", function(){   
                    $([$mask[0],$maskMessage[0]]).fadeOut(params.iframe.delay || 'slow',function(){   
                        $(this).remove();   
                        if($(this).hasClass('mask-message')){   
                            $containterMask.fadeOut(params.iframe.delay || 'slow',function(){   
                                $(this).remove();   
                            });   
                        }   
                    });   
                });   
            } else {   
                iframe.onload = function(){   
                    $([$mask[0],$maskMessage[0]]).fadeOut(params.iframe.delay || 'slow',function(){   
                        $(this).remove();   
                        if($(this).hasClass('mask-message')){   
                            $containterMask.fadeOut(params.iframe.delay || 'slow',function(){   
                                $(this).remove();   
                            });   
                        }   
                    });   
                };   
            }   
            $containter[0].appendChild(iframe);   
        });   
    }   
});  

/**
 * @author 孙宇
 * 
 * @requires jQuery
 * 
 * 将form表单元素的值序列化成对象
 * 
 * @returns object
 */
$.serializeObject = function(form) {
	var o = {};
	$.each(form.serializeArray(), function(index) {
		if (o[this['name']]) {
			o[this['name']] = o[this['name']] + "," + this['value'];
		} else {
			o[this['name']] = this['value'];
		}
	});
	return o;
};

$.extend($.fn.tree.methods, {
	    getLevel:function(jq,target){
	        var l = $(target).parentsUntil("ul.tree","ul");
	        return l.length+1;
	    }
	});

$.extend($.fn.validatebox.defaults.rules, {
	  idcard : {// 验证身份证 
	        validator : function(value) { 
	            return /^\d{15}(\d{2}[A-Za-z0-9])?$/i.test(value); 
	        }, 
	        message : '身份证号码格式不正确' 
	    },
	      minLength: {
	        validator: function(value, param){
	            return value.length >= param[0];
	        },
	        message: '请输入至少（2）个字符.'
	    },
	    length:{validator:function(value,param){ 
	        var len=$.trim(value).length; 
	            return len>=param[0]&&len<=param[1]; 
	        }, 
	            message:"输入内容长度必须介于{0}和{1}之间." 
	        }, 
	    phone : {// 验证电话号码 
	        validator : function(value) { 
	            return /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/i.test(value); 
	        }, 
	        message : '格式不正确,请使用下面格式:020-88888888' 
	    }, 
	    mobile : {// 验证手机号码 
	        validator : function(value) { 
	            return /^(13|15|18)\d{9}$/i.test(value); 
	        }, 
	        message : '手机号码格式不正确' 
	    }, 
	    mobilephone : {// 验证电话号码 
	        validator : function(value) { 
	            return /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(value)||/^(([0\+]\d{2,3}-)?(0\d{2,3}))?(\d{7,8})(-(\d{3,}))?$/.test(value)||/^1[3,5,8,7]\d{9}$/.test(value); 
	        }, 
	        message : '您输入有效电话号码！' 
	    }, 
	    intOrFloat : {// 验证整数或小数 
	        validator : function(value) { 
	            return /^\d+(\.\d+)?$/i.test(value); 
	        }, 
	        message : '请输入数字，并确保格式正确' 
	    }, 
	    currency : {// 验证货币 
	        validator : function(value) { 
	            return /^\d+(\.\d+)?$/i.test(value); 
	        }, 
	        message : '货币格式不正确' 
	    }, 
	    qq : {// 验证QQ,从10000开始 
	        validator : function(value) { 
	            return /^[1-9]\d{4,9}$/i.test(value); 
	        }, 
	        message : 'QQ号码格式不正确' 
	    }, 
	    integer : {// 验证整数 
	        validator : function(value) { 
	            return /^[+]?[1-9]+\d*$/i.test(value); 
	        }, 
	        message : '请输入整数' 
	    }, 
	    age : {// 验证年龄
	        validator : function(value) { 
	            return /^(?:[1-9][0-9]?|1[01][0-9]|120)$/i.test(value); 
	        }, 
	        message : '年龄必须是0到120之间的整数' 
	    }, 
	    shuzi : {// 验证1-100的数字
	        validator : function(value) { 
	            return /^([1-9][0-9]|[1-9]|100)$/g.test(value); 
	        }, 
	        message : '必须是0到100之间的整数' 
	    }, 
	    zf_shuzi : {// 验证数字，可以是负数，含有小数点
	        validator : function(value) { 
	            return /^[-+]?[0-9]+(\.[0-9]+)?$/.test(value); 
	        }, 
	        message : '只能是正负数,可带小数点' 
	    }, 
	    chinese : {// 验证中文 
	        validator : function(value) { 
	            return /^[\Α-\￥]+$/i.test(value); 
	        }, 
	        message : '请输入中文' 
	    }, 
	    english : {// 验证英语 
	        validator : function(value) { 
	            return /^[A-Za-z]+$/i.test(value); 
	        }, 
	        message : '请输入英文' 
	    }, 
	    unnormal : {// 验证是否包含空格和非法字符 
	        validator : function(value) { 
	            return /.+/i.test(value); 
	        }, 
	        message : '输入值不能为空和包含其他非法字符' 
	    }, 
	    username : {// 验证用户名 
	        validator : function(value) { 
	            return /^[a-zA-Z][a-zA-Z0-9_]{5,15}$/i.test(value); 
	        }, 
	        message : '用户名不合法（字母开头，允许6-16字节，允许字母数字下划线）' 
	    }, 
	    faxno : {// 验证传真 
	        validator : function(value) { 
//	            return /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/i.test(value); 
	            return /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/i.test(value); 
	        }, 
	        message : '传真号码不正确' 
	    }, 
	    zip : {// 验证邮政编码 
	        validator : function(value) { 
	            return /^[1-9]\d{5}$/i.test(value); 
	        }, 
	        message : '邮政编码格式不正确' 
	    }, 
	    ip : {// 验证IP地址 
	        validator : function(value) { 
	            return /d+.d+.d+.d+/i.test(value); 
	        }, 
	        message : 'IP地址格式不正确' 
	    }, 
	    name : {// 验证姓名，可以是中文或英文 
	            validator : function(value) { 
	                return /^[\Α-\￥]+$/i.test(value)|/^\w+[\w\s]+\w+$/i.test(value); 
	            }, 
	            message : '请输入姓名' 
	    },
	    date : {// 验证姓名，可以是中文或英文 
	        validator : function(value) { 
	         //格式yyyy-MM-dd或yyyy-M-d
	            return /^(?:(?!0000)[0-9]{4}([-]?)(?:(?:0?[1-9]|1[0-2])\1(?:0?[1-9]|1[0-9]|2[0-8])|(?:0?[13-9]|1[0-2])\1(?:29|30)|(?:0?[13578]|1[02])\1(?:31))|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)([-]?)0?2\2(?:29))$/i.test(value); 
	        },
	        message : '清输入合适的日期格式'
	    },
	    msn:{ 
	        validator : function(value){ 
	        return /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(value); 
	    }, 
	    message : '请输入有效的msn账号(例：abc@hotnail(msn/live).com)' 
	    },
	    same:{ 
	        validator : function(value, param){ 
	            if($("#"+param[0]).val() != "" && value != ""){ 
	                return $("#"+param[0]).val() == value; 
	            }else{ 
	                return true; 
	            } 
	        }, 
	        message : '两次输入的密码不一致！'    
	    } 
	});

//对Date的扩展，将 Date 转化为指定格式的String
//月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
//年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
//例子： 
//(new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
//(new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
Date.prototype.Format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "h+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

/**
 * 增加formatString功能
 * 
 * @author 孙宇
 * 
 * @example sy.formatString('字符串{0}字符串{1}字符串','第一个变量','第二个变量');
 * 
 * @returns 格式化后的字符串
 */
$.formatString = function (str) {
	for (var i = 0; i < arguments.length - 1; i++) {
		str = str.replace("{" + i + "}", arguments[i + 1]);
	}
	return str;
};



$.extend($.fn.datagrid.methods, {  
    columnMoving: function (jq) {  
        return jq.each(function () {  
            var target = this;  
            var cells = $(this).datagrid('getPanel').find('div.datagrid-header td[field]');  
            cells.draggable({  
                revert: true,  
                cursor: 'pointer',  
                edge: 5,  
                proxy: function (source) {  
                    var p = $('<div class="tree-node-proxy tree-dnd-no" style="position:absolute;border:1px solid #ff0000"/>').appendTo('body');  
                    p.html($(source).text());  
                    p.hide();  
                    return p;  
                },  
                onBeforeDrag: function (e) {  
                    e.data.startLeft = $(this).offset().left;  
                    e.data.startTop = $(this).offset().top;  
                },  
                onStartDrag: function () {  
                    $(this).draggable('proxy').css({  
                        left: -10000,  
                        top: -10000  
                    });  
                },  
                onDrag: function (e) {  
                    $(this).draggable('proxy').show().css({  
                        left: e.pageX + 15,  
                        top: e.pageY + 15  
                    });  
                    return false;  
                }  
            }).droppable({  
                accept: 'td[field]',  
                onDragOver: function (e, source) {  
                    $(source).draggable('proxy').removeClass('tree-dnd-no').addClass('tree-dnd-yes');  
                    $(this).css('border-left', '1px solid #ff0000');  
                },  
                onDragLeave: function (e, source) {  
                    $(source).draggable('proxy').removeClass('tree-dnd-yes').addClass('tree-dnd-no');  
                    $(this).css('border-left', 0);  
                },  
                onDrop: function (e, source) {  
                    $(this).css('border-left', 0);  
                    var fromField = $(source).attr('field');  
                    var toField = $(this).attr('field');  
                    setTimeout(function () {  
                        moveField(fromField, toField);  
                        $(target).datagrid();  
                        $(target).datagrid('columnMoving');  
                    }, 0);  
                }  
            });  
  
            // move field to another location  
            function moveField(from, to) {  
                var columns = $(target).datagrid('options').columns;  
                var cc = columns[0];  
                var c = _remove(from);  
                if (c) {  
                    _insert(to, c);  
                }  
  
                function _remove(field) {  
                    for (var i = 0; i < cc.length; i++) {  
                        if (cc[i].field == field) {  
                            var c = cc[i];  
                            cc.splice(i, 1);  
                            return c;  
                        }  
                    }  
                    return null;  
                }  
                function _insert(field, c) {  
                    var newcc = [];  
                    for (var i = 0; i < cc.length; i++) {  
                        if (cc[i].field == field) {  
                            newcc.push(c);  
                        }  
                        newcc.push(cc[i]);  
                    }  
                    columns[0] = newcc;  
                }  
            }  
        });  
    }  
});  



