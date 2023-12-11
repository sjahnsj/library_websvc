package com.project.service;

import java.util.List;



import com.project.domain.BookVO;


public interface BookDAO {
	
	List<BookVO>  getList();
	boolean addBook(BookVO book);
	boolean modifyBook(BookVO book);
	BookVO get(String isbn);
	boolean delete(String isbn);
}
