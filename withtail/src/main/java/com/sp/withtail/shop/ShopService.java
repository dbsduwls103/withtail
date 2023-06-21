package com.sp.withtail.shop;

import java.util.List;
import java.util.Map;

public interface ShopService {
	// 카테고리
	public List<Category> listCategory();
	public Category readCategory(String ctNum);
	
	public List<Category> listSubCategory(String ctNum);
	public Category readSubCategory(String ctNum);
	
	public int dataCount(Map<String, Object> map);
	public List<Product> listProd(Map<String, Object> map);
	public Product readProd(long prodNum);
}
