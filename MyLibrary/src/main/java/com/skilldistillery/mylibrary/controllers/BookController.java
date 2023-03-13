package com.skilldistillery.mylibrary.controllers;

import javax.persistence.Embeddable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.skilldistillery.mylibrary.data.MyLibraryDAO;
import com.skilldistillery.mylibrary.entities.Book.Book;

@Controller
public class BookController {

	@Autowired
	private MyLibraryDAO libraryDao;

	@GetMapping(path = { "/", "home.do" })
	public String home(Model model) {
		return "home";
	}
	
	@GetMapping(path= {"allbooks", "allbooks.do"})
	public String allBooks(Model model) {
		model.addAttribute("books", libraryDao.findAll());
		return "allbooks";
	}
	
	@GetMapping(path= {"addbook","addbook.do"})
	public String addBookForm(Model model) {
		return "addbook";
	}

	@PostMapping(path = {"bookadded", "bookadded.do" })
	public String bookAdded(Model model, Book book) {
		System.out.println(book);
		try {
			book = libraryDao.create(book);
		} catch (RuntimeException e) {
			System.err.println(e);
		}
		if (book != null) {
			model.addAttribute("book", book);
			return "viewbook";
		} else {
			return "adderror";
		}
		
	}

	@GetMapping(path = {"viewbook", "viewbook.do" })
	public String viewBook(Model model, int id) {
		model.addAttribute("book",libraryDao.findById(id));
		return "viewbook";
	}
	
	@GetMapping(path= {"updatebook.do"})
	public String updateBookForm(Model model, Book book) {
		model.addAttribute("book", libraryDao.findById(book.getId()));
		return "updatebook";
	}
	
	@PostMapping(path= {"bookupdated.do"})
	public String bookUpdated(Model model, Book book, int id) {
		Book updatedBook = libraryDao.update(id, book);
		if(updatedBook != null) {
			model.addAttribute("book",book);
			return "home";
		} else return "adderror";
	}
	
	@GetMapping(path= {"burnbook.do"})
	public String burnBookForm(Model model, Book book) {
		return "burnbook";
	}
	@PostMapping(path= {"bookburned.do"})
	public String bookBurned(Model model, int id) {
		boolean successful = false;
		if(libraryDao.findById(id)!= null) {
			libraryDao.burn(id);
			successful = true;
			return "home";
		}
		return "adderror";
	}
	
	@GetMapping(path= {"booklistauthor"})
	public String bookSearchAuthor(Model model, String author) {
		model.addAttribute("books", libraryDao.findByAuthor(author));
		return "booklistauthor";
	}
	
	@GetMapping(path= {"booklistgenre"})
	public String bookSearchGenre(Model model, String genre) {
		model.addAttribute("books", libraryDao.findByGenre(genre));
		return "booklistgenre";
	}
}
