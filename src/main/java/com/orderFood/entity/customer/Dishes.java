package com.orderFood.entity.customer;

public class Dishes {

	public int dishes_id;
	
	public int shopper_id;
	
	public String dishes_name;
	
	public float dishes_star;
	
	public int dishes_monthNum;
	
	public String dishes_image;
	
	public float price;
	
	public String dishes_kind;

	public Dishes() {
		super();
	}
	

	public int getShopper_id() {
		return shopper_id;
	}


	public void setShopper_id(int shopper_id) {
		this.shopper_id = shopper_id;
	}



	public String getDishes_kind() {
		return dishes_kind;
	}


	public void setDishes_kind(String dishes_kind) {
		this.dishes_kind = dishes_kind;
	}



	public int getDishes_id() {
		return dishes_id;
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

	public float getDishes_star() {
		return dishes_star;
	}

	public void setDishes_star(float dishes_star) {
		this.dishes_star = dishes_star;
	}

	public int getDishes_monthNum() {
		return dishes_monthNum;
	}

	public void setDishes_monthNum(int dishes_monthNum) {
		this.dishes_monthNum = dishes_monthNum;
	}

	public String getDishes_image() {
		return dishes_image;
	}

	public void setDishes_image(String dishes_image) {
		this.dishes_image = dishes_image;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
	
	
}
