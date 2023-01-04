package com.NCU.BookShop.model;

public class Books {
	private int id;
	private String name;
	private String cover;
	private int price;
	private String author;
	private String intro;
	private int stock;
	private Department department;
	private boolean isScroll;
	private boolean isNew;
	
	
	public boolean getIsScroll() {
		return isScroll;
	}
	public void setScroll(boolean isScroll) {
		this.isScroll = isScroll;
	}
	public boolean getIsNew() {
		return isNew;
	}
	public void setNew(boolean isNew) {
		this.isNew = isNew;
	}
	public void setDepartmentid(int departmentid) {
		if(department ==null) {
			department = new Department();
		}
		department.setId(departmentid);
	}
	public void setDepartmentname(String departmentname) {
		if(department ==null) {
			department = new Department();
		}
		department.setName(departmentname);
	}
	@Override
	public String toString() {
		return "Books [id=" + id + ", name=" + name + ", cover=" + cover + ", price=" + price + ", author=" + author + ", intro=" + intro + ", stock=" + stock + ", department=" + department + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Books() {
		super();
	}
	public Books(int id, String name, String cover, int price, String author, String intro, int stock,
				 Department department) {
		super();
		this.id = id;
		this.name = name;
		this.cover = cover;
		this.price = price;
		this.author = author;
		this.intro = intro;
		this.stock = stock;
		this.department = department;
	}
	
	
}
