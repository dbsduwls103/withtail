package com.sp.withtail.admin.stuffManage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("stuffManager.stuffManagerservice")
public class StuffManageServiceImpl implements StuffManageService{
	@Autowired
	private CommonDAO dao;
	
	
	@Override
	public List<StuffManage> listCategory() {
		List<StuffManage> list = null;
		
		try {
			list = dao.selectList("stuffManage.listCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<StuffManage> listSubCategory(String parentCt) {
		List<StuffManage> sublist = null;

		try {
			sublist = dao.selectList("stuffManage.listSubCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sublist;

	}
	
	

}
