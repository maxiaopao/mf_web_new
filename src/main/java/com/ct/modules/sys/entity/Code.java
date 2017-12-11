package com.ct.modules.sys.entity;

import com.ct.common.entity.BaseEntity;

public class Code extends BaseEntity  {
	
	private String primary; //主键
	
	private String packagename;//包名
	
	private String objectname;//实体类名
	
	private String fieldlist;//字段列表
	
	private String tablename;
	
	private String databaseurl;
	

	public String getDatabaseurl() {
		return databaseurl;
	}

	public void setDatabaseurl(String databaseurl) {
		this.databaseurl = databaseurl;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public String getPrimary() {
		return primary;
	}

	public void setPrimary(String primary) {
		this.primary = primary;
	}

	public String getPackagename() {
		return packagename;
	}

	public void setPackagename(String packagename) {
		this.packagename = packagename;
	}

	public String getObjectname() {
		return objectname;
	}

	public void setObjectname(String objectname) {
		this.objectname = objectname;
	}

	public String getFieldlist() {
		return fieldlist;
	}

	public void setFieldlist(String fieldlist) {
		this.fieldlist = fieldlist;
	}
	
	

}
