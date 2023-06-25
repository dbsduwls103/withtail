package com.sp.withtail.admin.reviewManage;

import java.util.List;
import java.util.Map;

public interface ReviewManageService {
	//총개수
	public int dataCount(Map<String, Object> map);
	//리스트(상품명,상품썸네일 가져와야함)
	public List<ReviewManage> listReview(Map<String, Object> map);
	
	//글보기(상품명,상품썸네일,별점 가져와야함)
	public ReviewManage readReview(long num);
	
	//답변등록
	public void answerReview(ReviewManage dto)throws Exception;
	//답변삭제
	public void deleteAnswer(long num)throws Exception;
	//리뷰삭제
	public void deleteReview(long num)throws Exception;
}
