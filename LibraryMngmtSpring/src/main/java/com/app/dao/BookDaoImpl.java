package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.entity.Book;
@Repository
public class BookDaoImpl implements BookDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Book> getBooks() {
		Session session=sessionFactory.getCurrentSession();
		Query<Book> query=session.createQuery("from Book",Book.class);
		List<Book> list=query.list();
		
		return list;
	}

	@Override
	public void saveBook(Book book) {
		Session session=sessionFactory.getCurrentSession();
		session.merge(book);		
	}

	@Override
	public Book getBook(int theId) {
		Session session=sessionFactory.getCurrentSession();
		Book theBook=session.get(Book.class, theId);
		return theBook;
	}

	@Override
	public void deleteBook(int theId) {
		Session session=sessionFactory.getCurrentSession();
		Book theBook=session.get(Book.class, theId);
		session.remove(theBook);
	}
	
}
