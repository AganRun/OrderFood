package com.orderFood.entity.customer;

import java.util.ArrayList;
import java.util.List;

public class Cart {

	public int shopper_id;
	
	public String shopper_name;
	
	public List<Cart_dishes> list = new ArrayList<Cart_dishes>(5);


	public Cart(int shopper_id, String shopper_name, List<Cart_dishes> list) {
		super();
		this.shopper_id = shopper_id;
		this.shopper_name = shopper_name;
		this.list = list;
	}

	public String getShopper_name() {
		return shopper_name;
	}


	public void setShopper_name(String shopper_name) {
		this.shopper_name = shopper_name;
	}


	public Cart() {
		super();
	}


	public int getShopper_id() {
		return shopper_id;
	}


	public void setShopper_id(int shopper_id) {
		this.shopper_id = shopper_id;
	}


	public List<Cart_dishes> getList() {
		return list;
	}


	public void setList(List<Cart_dishes> list) {
		this.list = list;
	}
	
	
}
