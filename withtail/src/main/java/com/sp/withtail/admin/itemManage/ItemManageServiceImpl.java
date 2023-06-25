package com.sp.withtail.admin.itemManage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.dao.CommonDAO;

@Service("admin.itemManage.ItemManageService")
public class ItemManageServiceImpl implements ItemManageService {
	@Autowired
	private CommonDAO dao;

	@Autowired
	private FileManager fileManager;


	@Override
	public void insertItem(ItemManage dto, String pathname) throws Exception {
		try {
			String fileName = fileManager.doFileUpload(dto.getMainImageFile(), pathname);
			dto.setMainImage(fileName);

			long itemNum = dao.selectOne("itemManage.itemSeq");
			dto.setItemNum(itemNum);
			dao.insertData("itemManage.insertItem", dto);

			if(! dto.getAddFiles().isEmpty()) {
				for(MultipartFile mf : dto.getAddFiles()) {
					fileName = fileManager.doFileUpload(mf, pathname);
					if(fileName == null) {
						continue;
					}
					dto.setFilename(fileName);
					dao.insertData("itemManage.insertItemPhoto", dto);
				}
			}


			long option1Num = dao.selectOne("itemManage.optionSeq");
			dto.setOption1Num(option1Num);;
			dto.setParent(null);
			dao.insertData("itemManage.insertItemOption", dto);

			long option2Num;
			dto.setOption2Nums(new ArrayList<Long>());
			for(String option2Name : dto.getOption2Names()) {
				option2Num = dao.selectOne("itemManage.option2Num");
				dto.setOption2Num(option2Num);
				dto.setOption2Name(option2Name);
				dao.insertData("itemManage.insertOption2",dto);

				dto.getOption2Nums().add(option2Num);
			}

			long option1Num2 = dao.selectOne("itemManage.optionSeq");
			dto.setOption1Num(option1Num2);
			dto.setOption1Name(dto.getOption1Name2());
			dto.setParent(option1Num);
			dao.insertData("itemManage.insertItemOption", dto);

			dto.setOption2Nums2(new ArrayList<Long>());
			for(String option2Name2 : dto.getOption2Names2()) {
				option2Num = dao.selectOne("itemManage.option2Seq");
				dto.setOption2Num(option2Num);
				dto.setOption2Name(option2Name2);
				dao.insertData("itemManage.insertOption2", dto);

				dto.getOption2Nums2().add(option2Num);
			}

			ItemStock stock = new ItemStock();
			stock.setItemNum(itemNum);
			for(long op2Num : dto.getOption2Nums()) {
				for(long op2Num2 : dto.getOption2Nums2()) {
					stock.setOption2Num(op2Num);
					stock.setOption2Num2(op2Num2);

					dao.insertData("itemManage.insertItemStock", stock);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateItem(ItemManage dto, String pathname) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteItem(long itemNum, String pathname) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteItemFile(long fileNum, String pathname) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteOption2(long option2Num) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;

		try {
			result = dao.selectOne("itemManage.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<ItemManage> listItem(Map<String, Object> map) {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listItem", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	@Override
	public ItemManage readItem(long itemNum) {
		ItemManage dto = null;

		try {
			dto = dao.selectOne("itemManage.readItem", itemNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public List<ItemManage> listItemFile(long itemNum) {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listItemPhoto", itemNum);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ItemManage> listItemOption1(long itemNum) {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listOption1", itemNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<ItemManage> listItemOption2(long option1Num) {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listOption2", option1Num);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	@Override
	public ItemManage readCategory(long ctNum) {
		ItemManage dto = null;

		try {
			dto = dao.selectOne("itemManage.readCategory", ctNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	@Override
	public List<ItemManage> listCategory() {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ItemManage> listSubCategory(long parentCt) {
		List<ItemManage> list = null;

		try {
			list = dao.selectList("itemManage.listSubCategory", parentCt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ItemManage> listLastCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemStock> listItemStock(long itemNum) {
		List<ItemStock> list = null;

		try {
			list = dao.selectList("itemManage.listItemStock", itemNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void updateItemStock(ItemStock dto) throws Exception {
		try {
			dao.updateData("itemManage.updateItemStock", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

}
