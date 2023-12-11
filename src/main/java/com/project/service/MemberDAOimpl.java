package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.domain.MemberVO;
import com.project.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberDAOimpl implements MemberDAO {

	MemberMapper memberMapper;
	@Override
	public void regiMember(MemberVO member) {
		memberMapper.regiMember(member);
		
	}
	@Override
	public List<MemberVO> getList() {
		return memberMapper.getList();
		
	}
	@Override
	public MemberVO get(String userid) {
		return memberMapper.get(userid);
	}
	@Override
	public boolean delete(String userid) {
		boolean result;
		result = memberMapper.delete(userid) == 1;
		return result;
	}
	@Override
	public void setavail(String userid, Long chkavail) {
		memberMapper.setavail(userid, chkavail);
		
	}

}
