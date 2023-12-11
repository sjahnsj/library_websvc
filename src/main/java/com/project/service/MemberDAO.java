package com.project.service;

import java.util.List;


import com.project.domain.MemberVO;

public interface MemberDAO {
	
	void regiMember(MemberVO member);
	
	List<MemberVO>  getList();

	
	MemberVO get(String userid);
	boolean delete(String userid);
	void setavail(String userid, Long chkavail);
}
