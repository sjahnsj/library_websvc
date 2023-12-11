package com.project.mapper;

import java.util.List;

import com.project.domain.BookVO;

public interface BookMapper {
	List<BookVO> getList();
	int addBook(BookVO book);
	BookVO get(String isbn);
	int delete(String isbn);
	int modifyBook(BookVO book);
}
