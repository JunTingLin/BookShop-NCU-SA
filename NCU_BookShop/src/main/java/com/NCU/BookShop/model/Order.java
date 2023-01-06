package com.NCU.BookShop.model;

import java.util.*;

public class Order {
    private int id;
    private int total;//總價
    private int amount;// 商品總數
    private int status;//1=未付款/2已付款/3已發貨/4已完成
    private int paytype;//1 LinePay/2 ApplePay/3超商付款
    private String name;
    private String phone;
    private String address;
    private Date datetime;
    private User user;
    private Map<Integer,OrderItem> itemMap = new HashMap<Integer,OrderItem>();
    private List<OrderItem> itemList = new ArrayList<OrderItem>();

    public void setUsername(String username) {
        user = new User();
        user.setUsername(username);
    }
    public void addBooks(Books b) {
        if(itemMap.containsKey(b.getId())) {
            OrderItem item = itemMap.get(b.getId());
            item.setAmount(item.getAmount()+1);
        }else {
            OrderItem item = new OrderItem(b.getPrice(),1,b,this);
            itemMap.put(b.getId(), item);
        }
        amount++;
        total = total +  b.getPrice();
    }

    public List<OrderItem> getItemList() {
        return itemList;
    }

    public void setItemList(List<OrderItem> itemList) {
        this.itemList = itemList;
    }

    public void lessen(int booksid) {
        if(itemMap.containsKey(booksid)) {
            OrderItem item = itemMap.get(booksid);
            item.setAmount(item.getAmount()-1);
            amount--;
            total = total - item.getPrice();
            if(item.getAmount()<=0) {
                itemMap.remove(booksid);
            }
        }
    }
    public void delete(int booksid)
    {
        if(itemMap.containsKey(booksid)) {
            OrderItem item = itemMap.get(booksid);
            total = total -  item.getAmount()*item.getPrice();
            amount-=item.getAmount();
            itemMap.remove(booksid);
        }
    }

    public Map<Integer, OrderItem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<Integer, OrderItem> itemMap) {
        this.itemMap = itemMap;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getTotal() {
        return total;
    }
    public void setTotal(int total) {
        this.total = total;
    }
    public int getAmount() {
        return amount;
    }
    public void setAmount(int amount) {
        this.amount = amount;
    }
    public int getStatus() {
        return status;
    }
    public void setStatus(int status) {
        this.status = status;
    }
    public int getPaytype() {
        return paytype;
    }
    public void setPaytype(int paytype) {
        this.paytype = paytype;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Date getDatetime() {
        return datetime;
    }
    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public Order() {
        super();
    }
}
