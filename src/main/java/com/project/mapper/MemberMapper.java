package com.project.mapper;

import java.util.List;


import com.project.domain.MemberVO;

public interface MemberMapper {
	public void regiMember(MemberVO member);
	List<MemberVO> getList();
	MemberVO get(String userid);
	int delete(String userid);
	MemberVO read(String userid);
	void setavail(String userid, Long chkavail);
}
