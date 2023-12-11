package com.project.service;

import java.util.List;

import com.project.domain.CheckoutVO;

public interface CheckoutDAO {
	void addCheckout(CheckoutVO checkout);
	void delete(String isbn);
	CheckoutVO getbyisbn(String isbn);
	List<CheckoutVO> getbyuserid(String userid);

}
