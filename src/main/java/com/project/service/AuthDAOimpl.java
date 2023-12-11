package com.project.service;

import org.springframework.stereotype.Service;

import com.project.domain.AuthVO;

import com.project.mapper.AuthMapper;


import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class AuthDAOimpl implements AuthDAO {

	AuthMapper authMapper;
	@Override
	public void addAuth(AuthVO auth) {
		authMapper.addAuth(auth);
		
	}
	@Override
	public void deleteAuth(String userid) {
		authMapper.deleteAuth(userid);
		
	}

}
