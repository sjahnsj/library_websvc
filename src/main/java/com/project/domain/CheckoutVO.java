package com.project.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CheckoutVO {
	String isbn;
	String userid;
	Date retdate;
	Date chkdate;
}
