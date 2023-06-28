package com.sp.withtail.hotdeal;

public class HotDeal {
	private long ctNum;
	private long parentCt;
	private String ctName;

	private String itemNum;
	private String finalPrice;
	private String itemName;
	private String discount;
	private String photoName;
	private int price;
	private int showNotice;
	private int numCount;
	
	public long getCtNum() {
		return ctNum;
	}

	public void setCtNum(long ctNum) {
		this.ctNum = ctNum;
	}

	public long getParentCt() {
		return parentCt;
	}

	public void setParentCt(long parentCt) {
		this.parentCt = parentCt;
	}

	public String getCtName() {
		return ctName;
	}

	public void setCtName(String ctName) {
		this.ctName = ctName;
	}

	public String getItemNum() {
		return itemNum;
	}

	public void setItemNum(String itemNum) {
		this.itemNum = itemNum;
	}
	public String getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(String finalPrice) {
		this.finalPrice = finalPrice;
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

	public int getNumCount() {
		return numCount;
	}

	public void setNumCount(int numCount) {
		this.numCount = numCount;
	}

}