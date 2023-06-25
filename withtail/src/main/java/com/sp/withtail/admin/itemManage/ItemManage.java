package com.sp.withtail.admin.itemManage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ItemManage {

	private long itemNum;
	private String itemName;
	private int price;
	private int discount;
	private int point;
	private int salePrice;
	private int deliveryFee;
	private int showNotice;
	private String itemContent;
	private String mainImage;
	private String regDate;
	private String upddate;
	private MultipartFile mainImageFile;
	
	private long ctNum;
	private Long parentCt;
	private long dept;
	private String ctName;
	
	private long option1Num;
	private String option1Name;
	private Long parent;
	
	private long option1Num2;
	private String option1Name2;
	
	
	private long option2Num;
	private String option2Name;
	private List<Long> option2Nums;
	private List<String> option2Names;
	
	private long option2Num2;
	private String option2Name2;
	private List<Long> option2Nums2;
	private List<String> option2Names2;
	
	private int totalStock;
	
	private long extraPrice;
	private int couponEnable;

	private long fileNum;
	private String filename;
	private List<MultipartFile> addFiles;
	
	private String madeDate;
	private String expriy;
	private String country;
	
	
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public int getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public int getShowNotice() {
		return showNotice;
	}
	public void setShowNotice(int showNotice) {
		this.showNotice = showNotice;
	}
	public String getItemContent() {
		return itemContent;
	}
	public void setItemContent(String itemContent) {
		this.itemContent = itemContent;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getUpddate() {
		return upddate;
	}
	public void setUpddate(String upddate) {
		this.upddate = upddate;
	}
	public MultipartFile getMainImageFile() {
		return mainImageFile;
	}
	public void setMainImageFile(MultipartFile mainImageFile) {
		this.mainImageFile = mainImageFile;
	}
	public long getCtNum() {
		return ctNum;
	}
	public void setCtNum(long ctNum) {
		this.ctNum = ctNum;
	}
	public Long getParentCt() {
		return parentCt;
	}
	public void setParentCt(Long parentCt) {
		this.parentCt = parentCt;
	}
	public long getDept() {
		return dept;
	}
	public void setDept(long dept) {
		this.dept = dept;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
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
	public long getOption1Num2() {
		return option1Num2;
	}
	public void setOption1Num2(long option1Num2) {
		this.option1Num2 = option1Num2;
	}
	public String getOption1Name2() {
		return option1Name2;
	}
	public void setOption1Name2(String option1Name2) {
		this.option1Name2 = option1Name2;
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
	public List<Long> getOption2Nums() {
		return option2Nums;
	}
	public void setOption2Nums(List<Long> option2Nums) {
		this.option2Nums = option2Nums;
	}
	public List<String> getOption2Names() {
		return option2Names;
	}
	public void setOption2Names(List<String> option2Names) {
		this.option2Names = option2Names;
	}
	public long getOption2Num2() {
		return option2Num2;
	}
	public void setOption2Num2(long option2Num2) {
		this.option2Num2 = option2Num2;
	}
	public String getOption2Name2() {
		return option2Name2;
	}
	public void setOption2Name2(String option2Name2) {
		this.option2Name2 = option2Name2;
	}
	public List<Long> getOption2Nums2() {
		return option2Nums2;
	}
	public void setOption2Nums2(List<Long> option2Nums2) {
		this.option2Nums2 = option2Nums2;
	}
	public List<String> getOption2Names2() {
		return option2Names2;
	}
	public void setOption2Names2(List<String> option2Names2) {
		this.option2Names2 = option2Names2;
	}
	public int getTotalStock() {
		return totalStock;
	}
	public void setTotalStock(int totalStock) {
		this.totalStock = totalStock;
	}
	public long getExtraPrice() {
		return extraPrice;
	}
	public void setExtraPrice(long extraPrice) {
		this.extraPrice = extraPrice;
	}
	public int getCouponEnable() {
		return couponEnable;
	}
	public void setCouponEnable(int couponEnable) {
		this.couponEnable = couponEnable;
	}
	public long getFileNum() {
		return fileNum;
	}
	public void setFileNum(long fileNum) {
		this.fileNum = fileNum;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public List<MultipartFile> getAddFiles() {
		return addFiles;
	}
	public void setAddFiles(List<MultipartFile> addFiles) {
		this.addFiles = addFiles;
	}
	public String getMadeDate() {
		return madeDate;
	}
	public void setMadeDate(String madeDate) {
		this.madeDate = madeDate;
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
	
	
	

	
}
