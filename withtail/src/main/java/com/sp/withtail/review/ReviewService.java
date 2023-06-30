package com.sp.withtail.review;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	public void insertReview(Review dto, String pathname) throws Exception;
	public List<Review> listReview(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public Review readReview(long rvNum);
	public List<Review> listReviewImage(long rvNum);
	
	public void insertReviewLike(Map<String, Object> map) throws Exception;
	public void deleteReviewLike(Map<String, Object> map) throws Exception;
	public int reviewLikeCount(long rvNum);
	public boolean userRvLiked(Map<String, Object> map);
	
	public List<Reply> listReply(Map<String, Object> map);
	public int replyCount(Map<String, Object> map);
}
