package com.skilldistillery.mylibrary.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.mylibrary.entities.Book.Book;

@Service
@Transactional
public class MyLibraryDAOImpl implements MyLibraryDAO {

	@PersistenceContext
	private EntityManager em;
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPAMyLibrary");

	@Override
	public Book findById(int id) {
		return em.find(Book.class, id);
	}

	@Override
	public List<Book> findAll() {
		String jpql = "SELECT b from Book b";
		return em.createQuery(jpql, Book.class).getResultList();
	}

	@Override
	public Book create(Book book) {
		em.persist(book);
		em.flush();
		return book;
	}

	@Override
	public Book update(int id, Book book) {
		Book managedBook = em.find(Book.class, id);
		
		managedBook.setAuthor(book.getAuthor());
		managedBook.setDescription(book.getDescription());
		managedBook.setAuthor(book.getAuthor());
		managedBook.setCountry(book.getCountry());
		managedBook.setGenre(book.getGenre());
		managedBook.setPages(book.getPages());
		managedBook.setPublishedYear(book.getPublishedYear());
		managedBook.setPrice(book.getPrice());
		managedBook.setIsbn(book.getIsbn());
		
		return managedBook;
	}

	@Override
	public boolean burn(int id) {
		boolean success = false;
		Book book = em.find(Book.class, id);
		
		if(book != null) {
			em.remove(book);
			success = true;
		}
		return success;
	}

	@Override
	public List<Book> findByAuthor(String author) {
		author = "%" + author + "%";
		String jpql ="SELECT b from Book b where author like :author";
		return em.createQuery(jpql, Book.class).setParameter("author", author).getResultList();
	}

	@Override
	public List<Book> findByGenre(String genre) {
		genre = "%" + genre + "%";
		String jpql = "SELECT b from Book b where genre like :genre";
		return em.createQuery(jpql, Book.class).setParameter("genre", genre).getResultList();
	}

}
