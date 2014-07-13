package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.AdvanceSettingUserMap;
import com.homeninja.entities.SiteUsers;

public interface AdvanceSettingService {

	public Set<AdvanceSettingUserMap> findAdvanceSettingById(Long userId);
	
	public boolean saveOrUpdateAdvanceSettingUserMap(AdvanceSettingUserMap advanceSettingUserMap );
}
