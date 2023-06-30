package com.sp.withtail.review;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.dao.CommonDAO;

@Service("review.reviewService")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;

	@Override
	public void insertReview(Review dto, String pathname) throws Exception {
		try {
				
			dao.insertData("review.insertReview", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Override
	public List<Review> listReview(Map<String, Object> map) {
		List<Review> list = null;
		
		try {
			list = dao.selectList("review.listReview", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("review.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public Review readReview(long rvNum) {
		Review dto = null;
		
		try {
			dto = dao.selectOne("review.readReview", rvNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public List<Review> listReviewImage(long rvNum) {
		List<Review> list = null;
		
		try {
			list = dao.selectList("review.listReviewImage", rvNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void insertReviewLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("review.insertReviewLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteReviewLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("review.deleteReviewLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int reviewLikeCount(long rvNum) {
		int result = 0;
		
		try {
			result = dao.selectOne("review.reviewLikeCount", rvNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public boolean userRvLiked(Map<String, Object> map) {
		boolean result = false;
		
		try {
			Review dto = dao.selectOne("review.userRvLiked", map);
			if(dto != null) {
				result = true; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<Reply> listReply(Map<String, Object> map) {
		List<Reply> list = null;
		
		try {
			list = dao.selectList("review.listReply", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int replyCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("review.replyCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	

}
