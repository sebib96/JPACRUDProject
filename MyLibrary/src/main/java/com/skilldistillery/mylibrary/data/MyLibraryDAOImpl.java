package com.skilldistillery.mylibrary.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.mylibrary.entities.Book.Book;

@Service
@Transactional
public class MyLibraryDAOImpl implements MyLibraryDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Book update(int id, Book book) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean burn(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
