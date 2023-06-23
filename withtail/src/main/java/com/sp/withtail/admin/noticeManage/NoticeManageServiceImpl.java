package com.sp.withtail.admin.noticeManage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.withtail.common.FileManager;
import com.sp.withtail.common.dao.CommonDAO;

@Service("admin.noticeManageService")
public class NoticeManageServiceImpl implements NoticeManageService {
	
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;

	@Override
	public void insertNotice(NoticeManage dto, String pathname) throws Exception {
		
		try {
			long seq = dao.selectOne("noticeManage.seq");
			dto.setNum(seq);

			dao.insertData("noticeManage.insertNotice", dto);

			// 파일 업로드
			if (! dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String saveFilename = fileManager.doFileUpload(mf, pathname);
					if (saveFilename == null) {
						continue;
					}

					String originalFilename = mf.getOriginalFilename();
					long fileSize = mf.getSize();

					dto.setOriginalName(originalFilename);
					dto.setSaveName(originalFilename);
					dto.setFileSize(fileSize);

					// insertFile(dto);
					dao.insertData("noticeManage.insertFile", dto);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	
}
