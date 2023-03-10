package com.skilldistillery.mylibrary.entities.Book;

import javax.persistence.*;

@Entity
public class Book {
	
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	
	@Column(name="cover_url")
	private String coverUrl;
	
	@Column(name="title")
	private String title;
	
	@Column(name="description")
	private String description;
	
	@Column(name="author")
	private String author;
	
	@Column(name="country")
	private String country;
	
	@Column(name="genre")
	private String genre;
	
	@Column(name="pages")
	private int pages;
	
	@Column(name="published_year")
	private int publishedYear;
	
	@Column(name="price")
	private double price;
	
	@Column(name="isbn")
	private String isbn;
	
	public Book() {
		super();
	}
	
	public Book(int id, String coverUrl, String title, String description, String author, String country, String genre,
			int pages, int publishedYear, double price, String isbn) {
		super();
		this.id = id;
		this.coverUrl = coverUrl;
		this.title = title;
		this.description = description;
		this.author = author;
		this.country = country;
		this.genre = genre;
		this.pages = pages;
		this.publishedYear = publishedYear;
		this.price = price;
		this.isbn = isbn;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCoverUrl() {
		return coverUrl;
	}
	public void setCoverUrl(String coverUrl) {
		this.coverUrl = coverUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public int getPublishedYear() {
		return publishedYear;
	}
	public void setPublishedYear(int publishedYear) {
		this.publishedYear = publishedYear;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", coverUrl=" + coverUrl + ", title=" + title + ", description=" + description
				+ ", author=" + author + ", country=" + country + ", genre=" + genre + ", pages=" + pages
				+ ", publishedYear=" + publishedYear + ", price=" + price + ", isbn=" + isbn + "]";
	}
	
}
