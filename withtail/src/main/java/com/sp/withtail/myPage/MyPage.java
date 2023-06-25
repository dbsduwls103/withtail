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
