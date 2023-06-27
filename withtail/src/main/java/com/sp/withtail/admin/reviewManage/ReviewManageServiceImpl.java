package com.sp.withtail.admin.reviewManage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("admin.reviewManageService")
public class ReviewManageServiceImpl implements ReviewManageService{
	@Autowired
	private CommonDAO dao;
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("reviewManage.dataCount",map);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;//
	}

	@Override
	public List<ReviewManage> listReview(Map<String, Object> map) {
		List<ReviewManage> list = null;
		
		try {
			list = dao.selectList("reviewManage.listReviewManage", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public ReviewManage readReview(long rvNum) {
		ReviewManage dto = null;
		try {
			dto = dao.selectOne("reviewManage.readReview", rvNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return dto;
	}
	
	@Override
	public List<ReviewManage> photolist(long rvNum) {
		List<ReviewManage> list = null;
		
		try {
			list = dao.selectList("reviewManage.photolist", rvNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public void answerReview(ReviewManage dto) throws Exception {
		try {
			dao.updateData("reviewManage.answerReview", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteAnswer(long num) throws Exception {
		
	}

	@Override
	public void deleteReview(long num) throws Exception {
		
	}


}
