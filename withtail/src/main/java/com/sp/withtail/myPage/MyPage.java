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
