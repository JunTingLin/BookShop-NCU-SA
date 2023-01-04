package com.NCU.BookShop.model;

public class Recommend {
	private int id;
	private int type;//1橫幅 2新品
	private Books books;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	} 
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Books getBooks() {
		return books;
	}
	public void setBooks(Books books) {
		this.books = books;
	}
	public Recommend(int id, int type, Books books) {
		super();
		this.id = id;
		this.type = type;
		this.books = books;
	}
	public Recommend() {
		super();
	}
	
	
}
