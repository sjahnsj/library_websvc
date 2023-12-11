package com.project.service;

import com.project.domain.AuthVO;


public interface AuthDAO {
	
	void addAuth(AuthVO auth);
	void deleteAuth(String userid);
}
