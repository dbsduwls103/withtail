package com.sp.withtail.admin.stuffManage;

import java.util.List;

public interface StuffManageService {
	public List<StuffManage> listCategory();
	public List<StuffManage> listSubCategory(String parentCt);
}
