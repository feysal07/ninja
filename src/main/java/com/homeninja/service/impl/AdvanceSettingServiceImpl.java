package com.homeninja.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.AdvanceSettingDAO;
import com.homeninja.entities.AdvanceSettingUserMap;
import com.homeninja.service.AdvanceSettingService;

@Service
public class AdvanceSettingServiceImpl implements AdvanceSettingService{
	
	@Resource
	private AdvanceSettingDAO advanceSettingDAO;

	@Override
	public Set<AdvanceSettingUserMap> findAdvanceSettingById(Long userId) {
		// TODO Auto-generated method stub
		return advanceSettingDAO.findAdvanceSettingById(userId);
	}

	@Override
	public boolean saveOrUpdateAdvanceSettingUserMap(
			AdvanceSettingUserMap advanceSettingUserMap) {
		return advanceSettingDAO.saveOrUpdateAdvanceSettingUserMap(advanceSettingUserMap);
	}

}
