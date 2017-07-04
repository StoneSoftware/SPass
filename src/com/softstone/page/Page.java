package com.softstone.page;

import java.util.List;

public class Page<T> {
	private int pageNo;
	private int pageSize;
	private int rowSum;
	private List<T> resultList;
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRowSum() {
		return rowSum;
	}
	public void setRowSum(int rowSum) {
		this.rowSum = rowSum;
	}
	public List<T> getResultList() {
		return resultList;
	}
	public void setResultList(List<T> resultList) {
		this.resultList = resultList;
	}
	
	

}
