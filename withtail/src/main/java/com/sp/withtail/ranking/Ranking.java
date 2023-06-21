package com.sp.withtail.ranking;

public class Ranking {
	private long num;
	private long parent;
	private String categoryName;
	
	private String itemName;
	private String discount;
	private String regDate;
	private String updDate;
	private String filter;
	private String photoName;
	private int price;
	private int showNotice;
	
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public long getParent() {
		return parent;
	}
	public void setParent(long parent) {
		this.parent = parent;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getUpdDate() {
		return updDate;
	}
	public void setUpdDate(String updDate) {
		this.updDate = updDate;
	}
	public String getFilter() {
		return filter;
	}
	public void setFilter(String filter) {
		this.filter = filter;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getShowNotice() {
		return showNotice;
	}
	public void setShowNotice(int showNotice) {
		this.showNotice = showNotice;
	}
}
