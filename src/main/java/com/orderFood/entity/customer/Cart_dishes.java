package com.orderFood.entity.customer;

public class Cart_dishes {

	
	public int dishes_id;
	
	public String dishes_name;
	
	public int num;

	public float price;
	
	public Cart_dishes() {
		super();
	}

	public Cart_dishes(int dishes_id, String dishes_name, int num,float price) {
		super();
		this.dishes_id = dishes_id;
		this.dishes_name = dishes_name;
		this.num = num;
		this.price = price;
	}

	
	public int getDishes_id() {
		return dishes_id;
	}
	

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public void setDishes_id(int dishes_id) {
		this.dishes_id = dishes_id;
	}

	public String getDishes_name() {
		return dishes_name;
	}

	public void setDishes_name(String dishes_name) {
		this.dishes_name = dishes_name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
}
