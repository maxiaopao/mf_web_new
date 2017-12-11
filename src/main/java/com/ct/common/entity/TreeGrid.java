package com.ct.common.entity;

public class TreeGrid {
	
	private String menuid;
	
	private String menuname;
	
	private String _parentId;
	
	private Integer ismenu;
	
	private String url;
	
	private String img;
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Integer getIsmenu() {
		return ismenu;
	}

	public void setIsmenu(Integer ismenu) {
		this.ismenu = ismenu;
	}

	public String getMenuid() {
		return menuid;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String get_parentId() {
		return _parentId;
	}

	public void set_parentId(String parentId) {
		_parentId = parentId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
}
