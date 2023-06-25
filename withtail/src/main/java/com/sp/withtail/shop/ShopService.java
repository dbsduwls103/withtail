package com.sp.withtail.shop;

import java.util.List;
import java.util.Map;

public interface ShopService {
	// 카테고리 리스트
	public List<Product> listCategory();
	
	// 현재 카테고리
	public Product readCategory(long ctNum);
	
	// 하위 카테고리 리스트(탭 표시)
	public List<Product> listSubCategory(long ctNum);
	
	public Product readSubCategory(long ctNum);
	
	// 상품 개수
	public int dataCount(Map<String, Object> map);
	
	// 상품 리스트
	public List<Product> listProd(Map<String, Object> map);
	
	// 상품 상세보기
	public Product readProd(long prodNum);
}
