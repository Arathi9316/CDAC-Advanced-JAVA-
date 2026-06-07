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

import com.app.entity.Book;
import com.app.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	BookService bookService;
	
	@GetMapping("/list")
	public String listBooks(Model theModel) {
		List<Book> list=bookService.getBooks();
		System.out.println(list);
		theModel.addAttribute("bookList",list);
		return "books-list";
	}
	
	@GetMapping("/showForm")
	public String showBookForm(Model theModel) {
		Book book=new Book();
		theModel.addAttribute("book",book);
		return "book-form";
	}
	 @PostMapping("/saveBook")
	 public String saveBook(@ModelAttribute("book")Book book) {
		 bookService.saveBook(book);
		 return "redirect:/book/list";
	 }
	 @GetMapping("/showFormForUpdate")
	 public String updateDetails(@RequestParam("bookId")int id,Model theModel) {
		 Book theBook=bookService.getBook(id);
		 theModel.addAttribute("book",theBook);
		 return "book-form";
	 }
	 @GetMapping("/delete")
	 public String deleteBook(@RequestParam("bookId")int id) {
		 bookService.deleteBook(id);
		 return "redirect:/book/list";
	 }
}

