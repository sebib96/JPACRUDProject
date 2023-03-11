package com.skilldistillery.mylibrary.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.skilldistillery.mylibrary.data.MyLibraryDAO;

@Controller
public class BookController {

	@Autowired
	private MyLibraryDAO libraryDao;
	
	@GetMapping(path={"/","home.do"})
	public String home(Model model) {
		model.addAttribute("books", libraryDao.findAll());
		return "home";
	}
}
