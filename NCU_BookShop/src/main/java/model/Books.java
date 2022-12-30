package model;

public class Books {
	private int id;
	private String name;
	private String cover;
	private int price;
	private String intro;
	private int stock;
	private Type type;
	private boolean isScroll;
	private boolean isHot;
	private boolean isNew;
	
	
	public boolean getIsScroll() {
		return isScroll;
	}
	public void setScroll(boolean isScroll) {
		this.isScroll = isScroll;
	}
	public boolean getIsHot() {
		return isHot;
	}
	public void setHot(boolean isHot) {
		this.isHot = isHot;
	}
	public boolean getIsNew() {
		return isNew;
	}
	public void setNew(boolean isNew) {
		this.isNew = isNew;
	}
	public void setTypeid(int typeid) {
		if(type==null) {
			type = new Type();
		}
		type.setId(typeid);
	}
	public void setTypename(String typename) {
		if(type==null) {
			type = new Type();
		}
		type.setName(typename);
	}
	@Override
	public String toString() {
		return "Books [id=" + id + ", name=" + name + ", cover=" + cover + ", price=" + price + ", intro=" + intro + ", stock=" + stock + ", type=" + type + "]";
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
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Books() {
		super();
	}
	public Books(int id, String name, String cover, int price, String intro, int stock,
				 Type type) {
		super();
		this.id = id;
		this.name = name;
		this.cover = cover;
		this.price = price;
		this.intro = intro;
		this.stock = stock;
		this.type = type;
	}
	
	
}
