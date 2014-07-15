package com.homeninja.service;

import org.springframework.stereotype.Service;

import com.homeninja.entities.AdvanceSettingUserMap;
import com.homeninja.entities.UserCompanyMap;

@Service
public interface UserCompanyService {
	public boolean saveOrUpdateUserCompanyMap(UserCompanyMap userCompanyMap );


}
