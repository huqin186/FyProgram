package com.fuyuan.entity;

public class Page {
	
	private int page = 1; //当前页 
	private int rows = 10; //limit条数
	private int startRow; //limit起始行
	private int total; //总页数
	private int records; //总条数
	private String sidx;
	private String sord;
	
	public int getRecords() {
		return records;
	}
	public void setRecords(int records) {
		this.records = records;
	}
	public String getSidx() {
		return sidx;
	}
	public void setSidx(String sidx) {
		this.sidx = sidx;
	}
	public String getSord() {
		return sord;
	}
	public void setSord(String sord) {
		this.sord = sord;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getStartRow() {
		return rows * (page - 1);
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getTotal() {
		return records / rows + 1;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
}
