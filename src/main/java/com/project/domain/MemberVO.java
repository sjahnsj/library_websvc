package com.project.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;


@Data
public class MemberVO {
	String userid;
	String userpw;
	String username;
	Long chkavail;
	Date regdate;
	boolean enabled;
	
	List<AuthVO> authList;
}
