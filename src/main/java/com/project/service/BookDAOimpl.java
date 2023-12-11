package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.domain.BookVO;
import com.project.mapper.BookMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BookDAOimpl implements BookDAO {
	BookMapper bookMapper;
	@Override
	public List<BookVO> getList() {
		// TODO Auto-generated method stub
		return bookMapper.getList();
	}
	@Override
	public boolean addBook(BookVO book) {
		boolean result;
		result = bookMapper.addBook(book) == 1;
		return result;
		
	}
	@Override
	public BookVO get(String isbn) {
		return bookMapper.get(isbn);
		
	}
	@Override
	public boolean delete(String isbn) {
		boolean result;
		result = bookMapper.delete(isbn) == 1;
		return result;
		
	}
	@Override
	public boolean modifyBook(BookVO book) {
		boolean result;
		result = bookMapper.modifyBook(book) == 1;
		return result;
		
	}
	
}
