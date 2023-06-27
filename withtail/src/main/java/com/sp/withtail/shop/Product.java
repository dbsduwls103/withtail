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
	private int orderCount;
	private int rvCount;
	
	/*식품*/
	private String manufactDate;
	private String expriy;
	private String country;
	
	/*옵션*/
	private long option1Num;
	private String option1Name;
	private Long parent;
	
	private long option2Num;
	private String option2Name;
	private int extraPrice;
	private int coupon;
	
	/*재고*/
	private long stockNum;
	private int totalStock;
	
	private long photoNum;
	private String photoName;
	
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
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	public int getRvCount() {
		return rvCount;
	}
	public void setRvCount(int rvCount) {
		this.rvCount = rvCount;
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
	public long getOption1Num() {
		return option1Num;
	}
	public void setOption1Num(long option1Num) {
		this.option1Num = option1Num;
	}
	public String getOption1Name() {
		return option1Name;
	}
	public void setOption1Name(String option1Name) {
		this.option1Name = option1Name;
	}
	public Long getParent() {
		return parent;
	}
	public void setParent(Long parent) {
		this.parent = parent;
	}
	public long getOption2Num() {
		return option2Num;
	}
	public void setOption2Num(long option2Num) {
		this.option2Num = option2Num;
	}
	public String getOption2Name() {
		return option2Name;
	}
	public void setOption2Name(String option2Name) {
		this.option2Name = option2Name;
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
	public long getStockNum() {
		return stockNum;
	}
	public void setStockNum(long stockNum) {
		this.stockNum = stockNum;
	}
	public int getTotalStock() {
		return totalStock;
	}
	public void setTotalStock(int totalStock) {
		this.totalStock = totalStock;
	}
	public long getPhotoNum() {
		return photoNum;
	}
	public void setPhotoNum(long photoNum) {
		this.photoNum = photoNum;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	
	

}
