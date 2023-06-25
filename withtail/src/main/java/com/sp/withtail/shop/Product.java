package com.sp.withtail.shop;

public class Product {
	/* 카테고리 */
	private long ctNum;
	private String ctName;
	private Long parentCt;
	private int dept;
	private int level;
	
	/* 상품 */
	private long itemNum;
	private String itemName;
	private int discount;
	private String itemContent;
	private String regDate;
	private String updDate;
	private String madeby;
	private int deliveryFee;
	private int price;
	private int showNotice;
	private int point;
	private String mainImage;
	private int dcPrice;
	
	/*카운트*/
	
	private String manufactDate;
	private String expriy;
	private String country;
	
	private long optionNum1;
	private String option1Name;
	private long optionNum2;
	private String option2Content;
	private int stock;
	private int extraPrice;
	private int coupon;
	
	private long photoNum;
	private long photoName;
	
	public long getItemNum() {
		return itemNum;
	}
	public void setItemNum(long itemNum) {
		this.itemNum = itemNum;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getItemContent() {
		return itemContent;
	}
	public void setItemContent(String itemContent) {
		this.itemContent = itemContent;
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
	public String getMadeby() {
		return madeby;
	}
	public void setMadeby(String madeby) {
		this.madeby = madeby;
	}
	public int getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
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
	public String getManufactDate() {
		return manufactDate;
	}
	public void setManufactDate(String manufactDate) {
		this.manufactDate = manufactDate;
	}
	public String getExpriy() {
		return expriy;
	}
	public void setExpriy(String expriy) {
		this.expriy = expriy;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public long getOptionNum1() {
		return optionNum1;
	}
	public void setOptionNum1(long optionNum1) {
		this.optionNum1 = optionNum1;
	}
	public String getOption1Name() {
		return option1Name;
	}
	public void setOption1Name(String option1Name) {
		this.option1Name = option1Name;
	}
	public long getOptionNum2() {
		return optionNum2;
	}
	public void setOptionNum2(long optionNum2) {
		this.optionNum2 = optionNum2;
	}
	public String getOption2Content() {
		return option2Content;
	}
	public void setOption2Content(String option2Content) {
		this.option2Content = option2Content;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getExtraPrice() {
		return extraPrice;
	}
	public void setExtraPrice(int extraPrice) {
		this.extraPrice = extraPrice;
	}
	public int getCoupon() {
		return coupon;
	}
	public void setCoupon(int coupon) {
		this.coupon = coupon;
	}
	public long getPhotoNum() {
		return photoNum;
	}
	public void setPhotoNum(long photoNum) {
		this.photoNum = photoNum;
	}
	public long getPhotoName() {
		return photoName;
	}
	public void setPhotoName(long photoName) {
		this.photoName = photoName;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public int getDcPrice() {
		return dcPrice;
	}
	public void setDcPrice(int dcPrice) {
		this.dcPrice = dcPrice;
	}
	public long getCtNum() {
		return ctNum;
	}
	public void setCtNum(long ctNum) {
		this.ctNum = ctNum;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public Long getParentCt() {
		return parentCt;
	}
	public void setParentCt(Long parentCt) {
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
