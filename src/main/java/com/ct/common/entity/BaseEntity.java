/**   
 * @Title: BaseEntity.java 
 * @Package ct.general.entity 
 * @功能描述: TODO(用一句话描述该文件做什么) 
 * @创建人： 王帅   
 * @创建时间： 2013-4-18 上午10:16:57 
 * @修改内容：（无）
 * @修改人：（无）
 * @最后修改时间：2013-4-18 上午10:16:57
 * @版本： V1.0   
 */
package com.ct.common.entity;

import java.util.Date;

/**
 *  
 * 
 * @类名: BaseEntity 
 * @功能描述: 分页 起始页参数 ，搜索时间起始参数 
 * @类创建人： 王帅 
 * @类创建时间： 2013-4-18 上午10:16:57  
 */
public class BaseEntity {

	private String sort;// 排序字段
	private String order;// asc/desc

	private int page;// 当前页
	private int rows;// 每页显示记录数

	// 开始结束时间
	private Date startTime;
	private Date endTime;
	// 开始结束时间 String
	private String startTimeStr;
	private String endTimeStr;
	// 标志位
	private String flag;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getStartTimeStr() {
		return startTimeStr;
	}

	public void setStartTimeStr(String startTimeStr) {
		this.startTimeStr = startTimeStr;
	}

	public String getEndTimeStr() {
		return endTimeStr;
	}

	public void setEndTimeStr(String endTimeStr) {
		this.endTimeStr = endTimeStr;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}
