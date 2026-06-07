package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.Book;
import com.app.entity.Member;
import com.app.service.BookService;
import com.app.service.MemberService;

@Controller
@RequestMapping("/issue")
public class IssueController {
	@Autowired
	MemberService memberService;
	@Autowired
	BookService bookService;
	
	@GetMapping("/issueDetails")
	public String issueDetails(Model theModel) {
		 theModel.addAttribute("members",memberService.getMembers());

		    theModel.addAttribute("books",bookService.getBooks());
		    return "issuing-details";
	}
	
	@GetMapping("/showIssueForm")
	public String showIssueForm(Model model) {

	    model.addAttribute("members",
	            memberService.getMembers());

	    model.addAttribute("books",
	            bookService.getBooks());

	    return "issue-book";
	}
	
	@PostMapping("/issueBook")
	public String issueBook(
	        @RequestParam("memberId") int memberId,
	        @RequestParam("bookId") int bookId,Model theModel) {

	    Member member = memberService.getMember(memberId);
	    Book book = bookService.getBook(bookId);

	    if(book.getCount()>0) {
	    	member.add(book);
	    	memberService.saveMember(member);
	    	book.setCount(book.getCount()-1);
	    }
	    theModel.addAttribute("members",
	            memberService.getMembers());

	    theModel.addAttribute("books",
	            bookService.getBooks());
	 
	    return "issuing-details";
	}
}
