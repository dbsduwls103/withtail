package com.sp.withtail.order;

import java.util.List;

public class Order {
	/* 상품 */
	private long itemNum;
	private String itemName;
	private int discount;
	private String itemContent;
	private String regDate;
	private String updDate;
	private String madeby;
	private int deliveryFee;
	private int itemPrice;
	private int showNotice;
	private int itemPoint;
	private String mainImage;
	private int dcPrice;
	
	/*옵션*/
	private Long option1Num;
	private String option1Name;
	private Long parent;
	
	private Long option2Num;
	private String option2Name;
	private int extraPrice;
	private int coupon;
	
	/*장바구니*/
	private long cartNum;
	private String userId;
	private int quantity;
	private String cartRegDate;
	
	private Long option2Num2;
	private String option2Name2;
	
	private List<String> option1Names;
	private List<String> option2Names;
	
	/*장바구니 추가 리스트*/
	private List<Long> itemNums;
	private List<Long> subNums;
	private List<Long> subNums2;
	private List<Integer> qtys;
	
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
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getShowNotice() {
		return showNotice;
	}
	public void setShowNotice(int showNotice) {
		this.showNotice = showNotice;
	}
	public int getItemPoint() {
		return itemPoint;
	}
	public void setItemPoint(int itemPoint) {
		this.itemPoint = itemPoint;
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
	public Long getOption1Num() {
		return option1Num;
	}
	public void setOption1Num(Long option1Num) {
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
	public Long getOption2Num() {
		return option2Num;
	}
	public void setOption2Num(Long option2Num) {
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
	public long getCartNum() {
		return cartNum;
	}
	public void setCartNum(long cartNum) {
		this.cartNum = cartNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getCartRegDate() {
		return cartRegDate;
	}
	public void setCartRegDate(String cartRegDate) {
		this.cartRegDate = cartRegDate;
	}
	public Long getOption2Num2() {
		return option2Num2;
	}
	public void setOption2Num2(Long option2Num2) {
		this.option2Num2 = option2Num2;
	}
	public String getOption2Name2() {
		return option2Name2;
	}
	public void setOption2Name2(String option2Name2) {
		this.option2Name2 = option2Name2;
	}
	public List<String> getOption1Names() {
		return option1Names;
	}
	public void setOption1Names(List<String> option1Names) {
		this.option1Names = option1Names;
	}
	public List<String> getOption2Names() {
		return option2Names;
	}
	public void setOption2Names(List<String> option2Names) {
		this.option2Names = option2Names;
	}
	public List<Long> getItemNums() {
		return itemNums;
	}
	public void setItemNums(List<Long> itemNums) {
		this.itemNums = itemNums;
	}
	public List<Long> getSubNums() {
		return subNums;
	}
	public void setSubNums(List<Long> subNums) {
		this.subNums = subNums;
	}
	public List<Long> getSubNums2() {
		return subNums2;
	}
	public void setSubNums2(List<Long> subNums2) {
		this.subNums2 = subNums2;
	}
	public List<Integer> getQtys() {
		return qtys;
	}
	public void setQtys(List<Integer> qtys) {
		this.qtys = qtys;
	}
	
	
}
