package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.BookDao;
import com.app.entity.Book;


@Service
@Transactional
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;
	
	@Override
	@Transactional
	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		return bookDao.getBooks();
	}

	@Override
	@Transactional
	public void saveBook(Book book) {
		bookDao.saveBook(book);
		
	}

	@Override
	public Book getBook(int theId) {
		Book book=bookDao.getBook(theId);
		return book;
	}

	@Override
	@Transactional
	public void deleteBook(int theId) {
		bookDao.deleteBook(theId);
		
	}

}
