package com.sp.withtail.admin.memberManage;

import java.util.List;
import java.util.Map;

public interface MemberManageService {
	public int dataCount(Map<String, Object> map);
	public int stopdataCount(Map<String, Object> map);
	public List<MemberManage> listMember(Map<String, Object> map);
	public List<MemberManage> stoplistMember(Map<String, Object> map);
	
	public MemberManage readMember(String userId);
	
	
	public void updateFailureCountReset(String userId) throws Exception;
	public void updateMemberEnabled(Map<String, Object> map) throws Exception;
	public void insertMemberState(MemberManage dto) throws Exception;
	public List<MemberManage> listMemberState(String userId);
	public MemberManage readMemberState(String userId);
}
