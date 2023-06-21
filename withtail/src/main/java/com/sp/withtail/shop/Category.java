package com.sp.withtail.shop;

public class Category {
	private String ctNum;
	private String ctName;
	private String parentCt;
	private int dept;
	private int level;
	
	public String getCtNum() {
		return ctNum;
	}
	public void setCtNum(String ctNum) {
		this.ctNum = ctNum;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getParentCt() {
		return parentCt;
	}
	public void setParentCt(String parentCt) {
		this.parentCt = parentCt;
	}
	public int getDept() {
		return dept;
	}
	public void setDept(int dept) {
		this.dept = dept;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
}
