package com.homeninja.service.impl;
/*
 * Copyright (c) 2008 - 2013 10gen, Inc. <http://10gen.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 

package com.homeninja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.homeninja.dao.SessionDAO;
import com.homeninja.service.SessionService;
import com.mongodb.DBObject;

public class SessionServiceImpl implements SessionService {
	
	@Autowired
	public SessionDAO sessionDAO;

	@Override
	public String findUserNameBySessionId(String sessionId) {
		// TODO Auto-generated method stub
		return sessionDAO.findUserNameBySessionId(sessionId);
	}

	@Override
	public String startSession(String username) {
		// TODO Auto-generated method stub
		return sessionDAO.startSession(username);
	}

	@Override
	public void endSession(String sessionID) {
		// TODO Auto-generated method stub
		sessionDAO.endSession(sessionID);
	}

	@Override
	public DBObject getSession(String sessionID) {
		// TODO Auto-generated method stub
		return sessionDAO.getSession(sessionID);
	}
   

   
}
*/