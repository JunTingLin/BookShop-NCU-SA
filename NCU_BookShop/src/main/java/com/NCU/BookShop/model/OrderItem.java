package com.NCU.BookShop.model;

public class OrderItem {
    private int id;
    private int price;
    private int amount;
    private String booksName;
    private Books books;
    private Order order;// order_id

    public void setName(String name) {
        this.booksName=name;
    }

    public String getBooksName() {
        return booksName;
    }

    public void setBooksName(String booksName) {
        this.booksName = booksName;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public int getAmount() {
        return amount;
    }
    public void setAmount(int amount) {
        this.amount = amount;
    }
    public Books getBooks() {
        return books;
    }
    public void setBooks(Books books) {
        this.books = books;
    }
    public Order getOrder() {
        return order;
    }
    public void setOrder(Order order) {
        this.order = order;
    }
    public OrderItem() {
        super();
    }
    public OrderItem(int price, int amount, Books books, Order order) {
        super();
        this.price = price;
        this.amount = amount;
        this.books = books;
        this.order = order;
    }
}
