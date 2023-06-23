package com.sp.withtail.admin.eventManage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.withtail.common.dao.CommonDAO;

@Service("eventManage.eventService")
public class EventManageServiceImpl implements EventManageService{

	@Autowired
	private CommonDAO dao;

	@Override
	public void insertEvent(EventManage dto) throws Exception {
		try {
			dto.setStartDate(dto.getStartDay() + " " + dto.getStartTime() + ":00");
			dto.setEndDate(dto.getEndDay() + " " + dto.getEndTime() + ":00");
			if(dto.getMaxCount() !=0 && dto.getWinningDay().length() != 0 && dto.getWinningTime().length() != 0) {
				dto.setWinningDate(dto.getWinningDay() + " " + dto.getWinningTime() + ":00");
			}
			dao.insertData("eventManage.insertEvent", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateEvent(EventManage dto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteEvent(long num) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;

		try {
			result = dao.selectOne("eventManage.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<EventManage> listEvent(Map<String, Object> map) {
		List<EventManage> list = null;

		try {
			list = dao.selectList("eventManage.listEvent", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public void updateHitCount(long num) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public EventManage readEvent(long num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventManage preReadEvent(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventManage nextReadEvent(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertEventWinner(EventManage dto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<EventManage> listEventWinner(long num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventManage readEventWinner(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventManage> listEventApply(long num) {
		// TODO Auto-generated method stub
		return null;
	}



}
