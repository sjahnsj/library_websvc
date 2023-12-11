package com.project.mapper;

import com.project.domain.AuthVO;


public interface AuthMapper {
	public void addAuth(AuthVO auth);
	public void deleteAuth(String userid);
}
