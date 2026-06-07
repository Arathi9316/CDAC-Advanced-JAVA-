package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.Member;
import com.app.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/list")
	public String listMembers(Model theModel) {
		List<Member> list=memberService.getMembers();
		System.out.println(list);
		theModel.addAttribute("member",list);
		return "members-list";
	}
	
	@GetMapping("/showForm")
	public String showMemberForm(Model theModel) {
		Member member=new Member();
		theModel.addAttribute("member",member);
		return "member-form";
	}
	 @PostMapping("/saveMember")
	 public String saveMember(@ModelAttribute("member")Member member) {
		 memberService.saveMember(member);
		 return "redirect:/member/list";
	 }
	 @GetMapping("/showFormForUpdate")
	 public String updateDetails(@RequestParam("memberId")int id,Model theModel) {
		 Member theMember=memberService.getMember(id);
		 theModel.addAttribute("member",theMember);
		 return "member-form";
	 }
	 @GetMapping("/delete")
	 public String deleteMember(@RequestParam("memberId")int id) {
		 memberService.deleteMember(id);
		 return "redirect:/member/list";
	 }
}
