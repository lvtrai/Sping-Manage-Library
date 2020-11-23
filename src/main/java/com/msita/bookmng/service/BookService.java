package com.msita.bookmng.service;

import java.util.List;

import com.msita.bookmng.model.Book;

public interface BookService {
	public List<Book> getBooks();
	public Book getBook(int id);
	public void createBook(Book book);
	public void deleteBook(int id);
	public void updateBook(Book book);
	public List<Book> getBookByName(String name);
}
