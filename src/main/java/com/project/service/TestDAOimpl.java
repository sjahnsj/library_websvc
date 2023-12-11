package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.domain.TestVO;
import com.project.mapper.TestMapper;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class TestDAOimpl implements TestDAO {
	TestMapper mapper;
	
	@Override
	public List<TestVO> getList(){
		// TODO Auto-generated method stub
		return mapper.getList();
	}

}
