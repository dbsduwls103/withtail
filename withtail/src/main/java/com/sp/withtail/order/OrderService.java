package com.sp.withtail.order;

import java.util.List;
import java.util.Map;

public interface OrderService {
	public void insertCart(Order dto) throws Exception;
	public List<Order> listCart(String userId);
	public void deleteCart(Map<String, Object> map) throws Exception;
}
