package com.skilldistillery.mylibrary.data;

import java.util.List;

import com.skilldistillery.mylibrary.entities.Book.Book;

public interface MyLibraryDAO {

	Book findById(int id);
	List<Book> findByAuthor(String author);
	List<Book> findByGenre(String genre);
	List<Book> findAll();
	Book create(Book book);
	Book update(int id, Book book);
	boolean burn(int id);
	
}
