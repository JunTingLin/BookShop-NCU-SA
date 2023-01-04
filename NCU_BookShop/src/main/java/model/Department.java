package com.NCU.BookShop.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Department {
	private int id;
	private String name;
	
	private String encodeName;
	
	public String getEncodeName() {
		return encodeName;
	}
	public void setEncodeName(String encodeName) {
		this.encodeName = encodeName;
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
		try {
			this.encodeName = URLEncoder.encode(name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Department(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Department() {
		super();
	}
	public Department(String name) {
		super();
		this.name = name;
	}
	
}
