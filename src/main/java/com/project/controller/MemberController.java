package com.project.controller;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.AuthVO;

import com.project.domain.MemberVO;
import com.project.service.AuthDAO;
import com.project.service.BookDAO;
import com.project.service.MemberDAO;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping(value = "/member")
public class MemberController {
	MemberDAO memberDAO;
	BookDAO bookDAO;
	AuthDAO authDAO;
	PasswordEncoder pwencoder;
	

	
	@GetMapping("/regi")
	public void memberform(Model model) {					
	}
	
	@PostMapping("/regi")
	public String add(MemberVO member, String role,  RedirectAttributes rttr) {
		AuthVO auth = new AuthVO();
		System.out.println("regi------------------");
		System.out.println(member);
//		if (memberDAO.regiMember(member)) {
//			rttr.addFlashAttribute("result", "등록");
//		}
		System.out.println(role);
		
		member.setUserpw(pwencoder.encode(member.getUserpw()));
		memberDAO.regiMember(member);
		
		if(role.equals("ROLE_ADMIN")) {
			System.out.println("admin match");
			auth.setUserid(member.getUserid());
			auth.setAuth("ROLE_ADMIN");
			authDAO.addAuth(auth);
			auth.setUserid(member.getUserid());
			auth.setAuth("ROLE_MEMBER");
			authDAO.addAuth(auth);
		} else {
			System.out.println("member match");
			auth.setUserid(member.getUserid());
			auth.setAuth("ROLE_MEMBER");
			authDAO.addAuth(auth);
		}
	
		
		return "redirect:/";
	}
	
	@GetMapping("/list")
	public void list(Model model) {
		
		model.addAttribute("list", memberDAO.getList() );
			
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(String userid, Model model) {	
		System.out.println("/get---------------");
		System.out.println(userid);
//		System.out.println(memberDAO.get(userid));
		model.addAttribute("member", memberDAO.get(userid) );
	}
	
	@GetMapping("/delete")
	public String delete(String userid, Model model, RedirectAttributes rttr) {	
		System.out.println("/delete---------------");
		System.out.println(userid);
		authDAO.deleteAuth(userid);
		if (memberDAO.delete(userid)) {
			rttr.addFlashAttribute("result", "삭제");
		}
		return "redirect:/member/list";
		
	}
	
	@GetMapping("/checkout")
	public void checkout(Model model) {
		
		model.addAttribute("list", bookDAO.getList() );
			
	}

}
