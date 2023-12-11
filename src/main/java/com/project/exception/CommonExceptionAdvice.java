package com.project.exception;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class CommonExceptionAdvice {
	
	@ExceptionHandler(Exception.class)
	public String except(Exception ex, Model model) {
		System.out.println(ex.getMessage());
		
			
		model.addAttribute("exception", ex);
		if (ex.getMessage().contains("constraint")) {
			return "errordb_page";
		} else {
			
			return "error_page";
		}
	}
	
//	@ExceptionHandler(NoHandlerFoundException.class)
//	@ExceptionHandler(value = { org.springframework.security.access.AccessDeniedException.class })
//	@ResponseStatus(HttpStatus.FORBIDDEN)
//	public String handle403(NoHandlerFoundException ex) {
//		System.out.println("----403----");
//		return "custom403";
//	}

}
