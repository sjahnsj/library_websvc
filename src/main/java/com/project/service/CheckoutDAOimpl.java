package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.domain.CheckoutVO;
import com.project.mapper.CheckoutMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CheckoutDAOimpl  implements CheckoutDAO {

	CheckoutMapper checkoutMapper;
	@Override
	public void addCheckout(CheckoutVO checkout) {
		checkoutMapper.addCheckout(checkout);
		
	}
	@Override
	public void delete(String isbn) {
		checkoutMapper.delete(isbn);
		
	}
	@Override
	public CheckoutVO getbyisbn(String isbn) {
		// TODO Auto-generated method stub
		return checkoutMapper.getbyisbn(isbn);
	}
	@Override
	public List<CheckoutVO> getbyuserid(String userid) {
		// TODO Auto-generated method stub
		return checkoutMapper.getbyuserid(userid);
	}

}
