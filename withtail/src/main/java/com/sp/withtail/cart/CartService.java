package com.sp.withtail.cart;

import java.util.List;
import java.util.Map;


public interface CartService {
	public List<Cart> listCart(String userId);
	public void deleteCart(Map<String, Object> map) throws Exception;
}
