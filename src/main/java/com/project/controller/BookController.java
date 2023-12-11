package com.project.controller;



import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.BookVO;
import com.project.domain.CheckoutVO;
import com.project.domain.MemberVO;
import com.project.service.BookDAO;
import com.project.service.CheckoutDAO;
import com.project.service.MemberDAO;

import lombok.AllArgsConstructor;


/**
 * Handles requests for the application home page.
 */
@Controller
@AllArgsConstructor
@RequestMapping(value = "/book")
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	BookDAO bookDAO;
	CheckoutDAO checkoutDAO;
	MemberDAO memberDAO;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping("/list")
	public void list(Model model) {
		
		model.addAttribute("list", bookDAO.getList() );
			
	}
	
	@GetMapping("/bookform")
	public void bookform(Model model) {					
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(String isbn, Model model) {	
		System.out.println("/get---------------");
		System.out.println(isbn);
		System.out.println(bookDAO.get(isbn));
		model.addAttribute("book", bookDAO.get(isbn) );
	}
	
	@GetMapping("/getchk")
	public void getchk(String isbn, Model model) {	
		System.out.println("/getchk---------------");
		System.out.println(isbn);
		System.out.println(bookDAO.get(isbn));
		System.out.println(checkoutDAO.getbyisbn(isbn));
		model.addAttribute("book", bookDAO.get(isbn) );
		model.addAttribute("checkout", checkoutDAO.getbyisbn(isbn));
		
	}
	
	@GetMapping("/delete")
	public String delete(String isbn, Model model, RedirectAttributes rttr) {	
		System.out.println("/delete---------------");
		System.out.println(isbn);
		if (bookDAO.delete(isbn)) {
			rttr.addFlashAttribute("result", "삭제");
		}
		return "redirect:/book/list";
		
	}
	@GetMapping("/bookreturn")
	public void bookreturn(String userid, Model model) {
		List<String> title = new ArrayList<String>();
		List<CheckoutVO> checkout = checkoutDAO.getbyuserid(userid);
		System.out.println("/bookreturn---------------");
		System.out.println(userid);
		if (checkout.size() > 0) {
			for(CheckoutVO cko : checkout) {
				title.add(bookDAO.get(cko.getIsbn()).getTitle());
				
			}
			model.addAttribute("titles", title);
		} 
		model.addAttribute("checkout", checkout);
		
	}
	
	@PostMapping("/add")
	public String add(BookVO book, RedirectAttributes rttr) {
		System.out.println("add------------------");
		System.out.println(book);
		if (bookDAO.addBook(book)) {
			rttr.addFlashAttribute("result", "등록");
		}
		return "redirect:/book/list";
	}
	
	@PostMapping("/modify")
	public String modify(BookVO book, RedirectAttributes rttr) {
		System.out.println("modify------------------");
		System.out.println(book);
		if (bookDAO.modifyBook(book)) {
			rttr.addFlashAttribute("result", "수정");
		}
		return "redirect:/book/list";
	}
	
	@GetMapping("/delchk")
	public String delchk(String isbn, String userid, RedirectAttributes rttr) {
		MemberVO member = memberDAO.get(userid);
		BookVO book = bookDAO.get(isbn);
		memberDAO.setavail(userid, member.getChkavail()+1);
		book.setAvail(book.getAvail()+1);
		bookDAO.modifyBook(book);
		checkoutDAO.delete(isbn);
		rttr.addFlashAttribute("result", "반납 처리");
		return "redirect:/member/checkout";
	}
	
	@PostMapping("/checkout")
	public String checkout(BookVO book, String userid,  RedirectAttributes rttr) {
		CheckoutVO chkoutVO = new CheckoutVO();
		System.out.println("checkout------------------");
		System.out.println(book);
		System.out.println(userid);
		System.out.println(book.getAvail());
		MemberVO member = memberDAO.get(userid);
		System.out.println(member.getChkavail());
		if (member.getChkavail() > 0) {
			book.setAvail(book.getAvail()-1);
			bookDAO.modifyBook(book);
			memberDAO.setavail(userid, member.getChkavail()-1);
			chkoutVO.setIsbn(book.getIsbn());
			chkoutVO.setUserid(userid);
			checkoutDAO.addCheckout(chkoutVO);
			rttr.addFlashAttribute("result", "대출 처리");
	//		if (bookDAO.modifyBook(book)) {
	//			rttr.addFlashAttribute("result", "대출");
	//		}
			return "redirect:/member/checkout";
		} else {
			rttr.addFlashAttribute("result", "대출한도 초과");
			return "redirect:/member/checkout";
			
		}
	}
	
	
	
}
