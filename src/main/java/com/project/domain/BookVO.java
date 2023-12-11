package com.project.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	String isbn;
	String title;
	String author;
	Long issueyear;
	String category;
	Date regdate;
	Long avail;
	
}
