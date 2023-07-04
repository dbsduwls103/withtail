package com.sp.withtail.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("order.orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertCart(Order dto) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", dto.getUserId());
		
		try {
			for(int i = 0; i < dto.getItemNums().size(); i++) {
				// 장바구니 추가, 수정 구분
				map.put("itemNum", dto.getItemNums().get(i));
				if(dto.getSubNums() != null) {
					map.put("option2Num", dto.getSubNums().get(i));
				}
				if(dto.getSubNums2() != null) {
					map.put("option2Num2", dto.getSubNums2().get(i));
				}
				
				dto.setItemNum(dto.getItemNums().get(i));
				
				// List NULL값 체크
				if(dto.getSubNums() != null) {
					dto.setOption2Num(dto.getSubNums().get(i));
				}
				
				if(dto.getSubNums2() != null) {
					dto.setOption2Num2(dto.getSubNums2().get(i));
				}
				
				dto.setQuantity(dto.getQtys().get(i));
				
				if(dao.selectOne("order.readCart", map) == null) {
					dao.insertData("order.insertCart", dto);
				} else {
					dao.updateData("order.updateCart", dto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Order> listCart(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCart(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
