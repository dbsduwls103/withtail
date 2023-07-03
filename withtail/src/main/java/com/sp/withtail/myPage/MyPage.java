package com.sp.withtail.myPage;

import org.springframework.web.multipart.MultipartFile;

public class MyPage {
	private String gender;
	private String breed;
	private String petName;
	private String whichPet;
	private String userId;
	private String petsImageFilename;
	private String weight;
	private String birth;
	private long num;
	private String birth2;
	private MultipartFile selectFile;
	
	// 배송지 저장
	private long addNum;
	private String addr1;
	private String addr2;
	private String zip;
	private String tel;
	private String memo;
	private int addDef;
	private String addName; // 받으실분 이름
	
	//회원정보
	private long userNum;
	private int membership;
	private String userName;
	private String userPwd;
	private String nickName;
	private String regDate;
	private String modifyDate;
	private String lastLogin;
	private String email;
	private int failureCnt;
	private long point;
	private int enabled;
	
	//회원정보상태
	private long stateNum;
	private int stateCode;
	private String stateMemo;
	private String stRegDate;
	
	//쿠폰
	private long couponNum;
	private String startDate;
	private String endDate;
	private String couponName;
	private long couponPrice;
	private int couponCategory;
	private long couponMinPrice;
	private String endDate2;
	private int used;
	
	// 주문내역
	private long orderNum;
	private long purchaseMoney;
	private int count;
	private String itemName;
	private String madeBy;
	private String mainImage;
	private String option2Name;
	private String option2Name2;
	private String purchaseDate;
	private int orderState;
	private long totalPurchasePrice;
	private long total_discount;
	private long totalOriPrice;
	private long deliveryCharge;
	private long usedPoint;
	private long usedCoupon;
	private long itemPrice;
	private long price;
	private long salePrice;
	private String orderName;
	
	private long pointNum;
	private int pointChk;
	private long amount;
	private long balance;
	private String pointRegDate;
	private long salePrice1;
	private int star;
	private long itemNum;
	
	public long getItemNum() {
		return itemNum;
	}
	public void setItemNum(long itemNum) {
		this.itemNum = itemNum;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public long getSalePrice1() {
		return salePrice1;
	}
	public void setSalePrice1(long salePrice1) {
		this.salePrice1 = salePrice1;
	}
	public long getPointNum() {
		return pointNum;
	}
	public void setPointNum(long pointNum) {
		this.pointNum = pointNum;
	}
	public int getPointChk() {
		return pointChk;
	}
	public void setPointChk(int pointChk) {
		this.pointChk = pointChk;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public String getPointRegDate() {
		return pointRegDate;
	}
	public void setPointRegDate(String pointRegDate) {
		this.pointRegDate = pointRegDate;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public long getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(long salePrice) {
		this.salePrice = salePrice;
	}
	public long getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(long itemPrice) {
		this.itemPrice = itemPrice;
	}
	public long getUsedCoupon() {
		return usedCoupon;
	}
	public void setUsedCoupon(long usedCoupon) {
		this.usedCoupon = usedCoupon;
	}
	public long getUsedPoint() {
		return usedPoint;
	}
	public void setUsedPoint(long usedPoint) {
		this.usedPoint = usedPoint;
	}
	
	public long getDeliveryCharge() {
		return deliveryCharge;
	}
	public void setDeliveryCharge(long deliveryCharge) {
		this.deliveryCharge = deliveryCharge;
	}
	public long getTotalOriPrice() {
		return totalOriPrice;
	}
	public void setTotalOriPrice(long totalOriPrice) {
		this.totalOriPrice = totalOriPrice;
	}
	public long getTotal_discount() {
		return total_discount;
	}
	public void setTotal_discount(long total_discount) {
		this.total_discount = total_discount;
	}
	public long getTotalPurchasePrice() {
		return totalPurchasePrice;
	}
	public void setTotalPurchasePrice(long totalPurchasePrice) {
		this.totalPurchasePrice = totalPurchasePrice;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public String getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public long getPurchaseMoney() {
		return purchaseMoney;
	}
	public void setPurchaseMoney(long purchaseMoney) {
		this.purchaseMoney = purchaseMoney;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getMadeBy() {
		return madeBy;
	}
	public void setMadeBy(String madeBy) {
		this.madeBy = madeBy;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public String getOption2Name() {
		return option2Name;
	}
	public void setOption2Name(String option2Name) {
		this.option2Name = option2Name;
	}
	public String getOption2Name2() {
		return option2Name2;
	}
	public void setOption2Name2(String option2Name2) {
		this.option2Name2 = option2Name2;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	public String getEndDate2() {
		return endDate2;
	}
	public void setEndDate2(String endDate2) {
		this.endDate2 = endDate2;
	}
	public long getCouponMinPrice() {
		return couponMinPrice;
	}
	public void setCouponMinPrice(long couponMinPrice) {
		this.couponMinPrice = couponMinPrice;
	}
	public long getCouponNum() {
		return couponNum;
	}
	public void setCouponNum(long couponNum) {
		this.couponNum = couponNum;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public long getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(long couponPrice) {
		this.couponPrice = couponPrice;
	}
	public int getCouponCategory() {
		return couponCategory;
	}
	public void setCouponCategory(int couponCategory) {
		this.couponCategory = couponCategory;
	}
	public long getStateNum() {
		return stateNum;
	}
	public void setStateNum(long stateNum) {
		this.stateNum = stateNum;
	}
	public int getStateCode() {
		return stateCode;
	}
	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}
	public String getStateMemo() {
		return stateMemo;
	}
	public void setStateMemo(String stateMemo) {
		this.stateMemo = stateMemo;
	}
	public String getStRegDate() {
		return stRegDate;
	}
	public void setStRegDate(String stRegDate) {
		this.stRegDate = stRegDate;
	}
	public long getUserNum() {
		return userNum;
	}
	public void setUserNum(long userNum) {
		this.userNum = userNum;
	}
	public int getMembership() {
		return membership;
	}
	public void setMembership(int membership) {
		this.membership = membership;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(String lastLogin) {
		this.lastLogin = lastLogin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getFailureCnt() {
		return failureCnt;
	}
	public void setFailureCnt(int failureCnt) {
		this.failureCnt = failureCnt;
	}
	public long getPoint() {
		return point;
	}
	public void setPoint(long point) {
		this.point = point;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public String getAddName() {
		return addName;
	}
	public void setAddName(String addName) {
		this.addName = addName;
	}
	public long getAddNum() {
		return addNum;
	}
	public void setAddNum(long addNum) {
		this.addNum = addNum;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getAddDef() {
		return addDef;
	}
	public void setAddDef(int addDef) {
		this.addDef = addDef;
	}
	public MultipartFile getSelectFile() {
		return selectFile;
	}
	public void setSelectFile(MultipartFile selectFile) {
		this.selectFile = selectFile;
	}
	public String getBirth2() {
		return birth2;
	}
	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPetsImageFilename() {
		return petsImageFilename;
	}
	public void setPetsImageFilename(String petsImageFilename) {
		this.petsImageFilename = petsImageFilename;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getWhichPet() {
		return whichPet;
	}
	public void setWhichPet(String whichPet) {
		this.whichPet = whichPet;
	}
}
