package com.homeninja.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.AdvanceSettingDAO;
import com.homeninja.entities.AdvanceSetting;
import com.homeninja.entities.AdvanceSettingUserMap;

@Service
@Transactional
public class AdvanceSettingDAOImpl implements AdvanceSettingDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public Set<AdvanceSettingUserMap> findAdvanceSettingById(Long userId) {
		Set<AdvanceSettingUserMap> advanceSettingUserMapSet = new HashSet<AdvanceSettingUserMap>();
		Query getAdvanceSetting = sessionFactory.getCurrentSession()
				.createQuery("from  AdvanceSetting");
		List<AdvanceSetting> advanceSettingList = getAdvanceSetting.list();
		Query getAdvanceMapForUser = sessionFactory
				.getCurrentSession()
				.createQuery(
						"from AdvanceSettingUserMap as advUserMap  where advUserMap.userId = :userId");
		getAdvanceMapForUser.setParameter("userId", userId);
		List<AdvanceSettingUserMap> advanceSettingUserMapList = getAdvanceMapForUser
				.list();

		for (AdvanceSetting advanceSetting : advanceSettingList) {
			boolean advSettingPresent = false;
			for (AdvanceSettingUserMap advanceSettingUserMap : advanceSettingUserMapList) {
				if (advanceSettingUserMap.getAdvanceSetting() != null
						&& advanceSettingUserMap.getAdvanceSetting().getId() == advanceSetting
								.getId()) {
					advSettingPresent = true;
					break;
				}

			}
			if (!advSettingPresent) {
				AdvanceSettingUserMap advanceSettingUserMapTemp = new AdvanceSettingUserMap();
				advanceSettingUserMapTemp.setId(0);
				advanceSettingUserMapTemp.setUserId(userId);
				advanceSettingUserMapTemp.setAdvanceSetting(advanceSetting);
				advanceSettingUserMapTemp.setAdvanceSettingValue(0);
				advanceSettingUserMapList.add(advanceSettingUserMapTemp);
			}

		}
		for (AdvanceSettingUserMap advanceSettingUserMap : advanceSettingUserMapList) {
			advanceSettingUserMapSet.add(advanceSettingUserMap);
		}
		return advanceSettingUserMapSet;
	}
	@Override
	public boolean saveOrUpdateAdvanceSettingUserMap(AdvanceSettingUserMap advanceSettingUserMap){
		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(advanceSettingUserMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
