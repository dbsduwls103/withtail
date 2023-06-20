package com.sp.withtail.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("login.loginServiceImpl")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private CommonDAO dao;
	
	@Override
	public Member loginMember(String userId) {
		Member dto = null;

		try {
			dto = dao.selectOne("login.loginMember", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}
}
