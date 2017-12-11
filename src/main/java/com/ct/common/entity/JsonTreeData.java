package com.ct.common.entity;

import java.util.List;

public class JsonTreeData {
 
    public String id;       //json id
    public String pid;      //
    public String text;     //json 显示文本
    public String state;    //json 'open','closed'
    public String iconCls;
    public String url;
    public Short orderid;
    public Attributes attributes;
    
    public List<JsonTreeData> children;       //
    
    public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	
	public Attributes getAttributes() {
		return attributes;
	}
	public void setAttributes(Attributes attributes) {
		this.attributes = attributes;
	}
	public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getText() {
        return text;
    }
    public void setText(String text) {
        this.text = text;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
    public List<JsonTreeData> getChildren() {
        return children;
    }
    public void setChildren(List<JsonTreeData> children) {
        this.children = children;
    }
    public String getPid() {
        return pid;
    }
    public void setPid(String pid) {
        this.pid = pid;
    }
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Short getOrderid() {
		return orderid;
	}
	public void setOrderid(Short orderid) {
		this.orderid = orderid;
	}
    
}

