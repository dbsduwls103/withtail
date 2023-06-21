package com.sp.withtail.shop;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("shop.shopService")
public class ShopServiceImpl implements ShopService {
	@Autowired
	private CommonDAO dao;

	@Override
	public List<Category> listCategory() {
		List<Category> list = null;
		
		try {
			list = dao.selectList("shop.listCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public Category readCategory(String ctNum) {
		Category dto = null;
		
		try {
			dto = dao.selectOne("shop.readCategory", ctNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public List<Category> listSubCategory(String ctNum) {
		List<Category> list = null;
		
		try {
			list = dao.selectList("shop.listSubCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Category readSubCategory(String ctNum) {
		Category dto = null;
		
		try {
			dto = dao.selectOne("shop.readSubCategory", ctNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product> listProd(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product readProd(long prodNum) {
		// TODO Auto-generated method stub
		return null;
	}

}
