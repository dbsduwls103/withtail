package com.sp.withtail.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.dao.CommonDAO;

@Service("myPage.myPageService")
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public List<MyPage> listMyPages(MyPage dto) throws Exception {
		List<MyPage> list = null;
		
		try {
			list = dao.selectList("myPage.listMyPages", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public MyPage readPet(long num) {
		MyPage dto = null;
		
		try {
			dto = dao.selectOne("myPage.readPet", num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void deletePet(long num, String pathname) throws Exception {
		try {
			if(pathname != null) {
				fileManager.doFileDelete(pathname);
			}
			
			dao.deleteData("myPage.deletePet", num);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int dataCount(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("myPage.dataCount", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public void updatePet(MyPage dto, String pathname) throws Exception {
		try {
			String saveFilename = fileManager.doFileUpload(dto.getSelectFile(), pathname);
			
			if(saveFilename != null) {
				if(dto.getPetsImageFilename().length() != 0) {
					fileManager.doFileDelete(dto.getPetsImageFilename(), pathname);
				}
				
				dto.setPetsImageFilename(saveFilename);
			}
			
			dao.updateData("myPage.petEdit", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void insertAdd(MyPage dto) throws Exception {
		try {
			if(dto.getAddDef() == 1) {
				dao.updateData("myPage.basicAddressClear", dto.getUserId());
			}
			
			dao.insertData("myPage.insertAdd", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<MyPage> listDelivery(MyPage dto) throws Exception {
		List<MyPage> list = null;
		
		try {
			list = dao.selectList("myPage.listDelivery", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void updateAdd(MyPage dto) throws Exception {
		try {
			
			if(dto.getAddDef() == 1) {
				dao.updateData("myPage.basicAddressClear", dto.getUserId());
			}
			
			dao.updateData("myPage.updateAdd", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public MyPage readAdd(long num) {
		MyPage dto = null;
		
		try {
			dto = dao.selectOne("myPage.readAdd", num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void deleteAdd(long num) throws Exception {
		try {	
			dao.deleteData("myPage.deleteAdd", num);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int addDataCount(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("myPage.addDataCount", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public void updateProfileName(MyPage dto) throws Exception {
		try {
			dao.updateData("myPage.updateProfileName", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public MyPage readProfile(String userId) {
		MyPage dto = null;
		
		try {
			dto = dao.selectOne("myPage.readProfile", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updateEnabled(MyPage dto) throws Exception {
		try {
			dao.updateData("myPage.updateEnabled", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void insertMemberState(MyPage dto) throws Exception {
		try {		
			dao.insertData("myPage.insertMemberState", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<MyPage> listCoupon(MyPage dto) throws Exception {
		List<MyPage> list = null;
		
		try {
			list = dao.selectList("myPage.listCoupon", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int couponDataCount(String userId) {
		int result = 0;
		
		try {
			result = dao.selectOne("myPage.couponDataCount", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	


}
