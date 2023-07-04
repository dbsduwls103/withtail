package com.sp.withtail.state;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;



@Service
public class TaskServiceImpl implements TaskService {
	@Autowired
	private CommonDAO dao;
	
	@Scheduled(cron="0 0 1 * * *")  // 매일 밤 1시
	@Override
	public void automaticRepeatOperation() {
		try {
			// 15일이 지난 장바구니 지우기
			dao.deleteData("cart.deleteCartExpiration");

		} catch (Exception e) {
		}
	}
}
