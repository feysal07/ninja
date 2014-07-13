package com.homeninja.dao;

import java.util.Set;

import com.homeninja.entities.AdvanceSettingUserMap;

public interface AdvanceSettingDAO {
	public Set<AdvanceSettingUserMap> findAdvanceSettingById(Long userId);
	boolean saveOrUpdateAdvanceSettingUserMap(AdvanceSettingUserMap advanceSettingUserMap);

}
