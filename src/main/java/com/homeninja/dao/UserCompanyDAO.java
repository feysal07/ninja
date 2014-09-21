package com.homeninja.dao;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserCompanyMap;

public interface UserCompanyDAO {
	boolean saveOrUpdateUserCompanyMap(UserCompanyMap userCompanyMap);
	public UserCompanyMap getUserCompanyByUserId(SiteUsers siteUsers);

}
