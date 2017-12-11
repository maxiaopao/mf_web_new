package com.ct.common.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * EasyUI DataGrid模型
 * @param <O>
 */
@SuppressWarnings("rawtypes")
public class DataGrid {

	private long total = 0;
	
	private List rows = new ArrayList();


	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

}
