package com.sp.withtail.myPage;

import java.util.List;

public interface MyPageService {
	public List<MyPage> listMyPages(MyPage dto) throws Exception;
	public MyPage readPet(long num);
	public void deletePet(long num, String pathname) throws Exception;
	public int dataCount(String userId);
	public void updatePet(MyPage dto, String pathname) throws Exception;
	public void insertAdd(MyPage dto) throws Exception;
	public List<MyPage> listDelivery(MyPage dto) throws Exception;
	public void updateAdd(MyPage dto) throws Exception;
	public MyPage readAdd(long num);
	public void deleteAdd(long num) throws Exception;
}
