package com.ct.modules.sys.entity;

import java.util.Date;
import java.util.List;

import com.ct.common.entity.BaseEntity;

public class Menu extends BaseEntity {
    private String menuid;

    private String menuname;

    private String pid;

    private String url;

    private String img;
    
    private String permission;

    private Short orderid;

    private Short ismenu;

    private Short menutype;

    private Date starttime;

    private Date endtime;
    
    private List<Menu> menuList;

    private String bak1;

    private String bak2;

    private String bak3;

    private String bak4;

    private String bak5;
    
    private String csrid;
    
    public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public List<Menu> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<Menu> menuList) {
		this.menuList = menuList;
	}

	public String getCsrid() {
		return csrid;
	}

	public void setCsrid(String csrid) {
		this.csrid = csrid;
	}

	public String getMenuid() {
        return menuid;
    }

    public void setMenuid(String menuid) {
        this.menuid = menuid == null ? null : menuid.trim();
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Short getOrderid() {
        return orderid;
    }

    public void setOrderid(Short orderid) {
        this.orderid = orderid;
    }

    public Short getIsmenu() {
        return ismenu;
    }

    public void setIsmenu(Short ismenu) {
        this.ismenu = ismenu;
    }

    public Short getMenutype() {
        return menutype;
    }

    public void setMenutype(Short menutype) {
        this.menutype = menutype;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getBak1() {
        return bak1;
    }

    public void setBak1(String bak1) {
        this.bak1 = bak1 == null ? null : bak1.trim();
    }

    public String getBak2() {
        return bak2;
    }

    public void setBak2(String bak2) {
        this.bak2 = bak2 == null ? null : bak2.trim();
    }

    public String getBak3() {
        return bak3;
    }

    public void setBak3(String bak3) {
        this.bak3 = bak3 == null ? null : bak3.trim();
    }

    public String getBak4() {
        return bak4;
    }

    public void setBak4(String bak4) {
        this.bak4 = bak4 == null ? null : bak4.trim();
    }

    public String getBak5() {
        return bak5;
    }

    public void setBak5(String bak5) {
        this.bak5 = bak5 == null ? null : bak5.trim();
    }
}