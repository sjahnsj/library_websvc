package com.project.mapper;

import java.util.List;

import com.project.domain.CheckoutVO;

public interface CheckoutMapper {
	
	void addCheckout(CheckoutVO checkout);
	void delete(String isbn);
	CheckoutVO getbyisbn(String isbn);
	List<CheckoutVO> getbyuserid(String userid);

}
