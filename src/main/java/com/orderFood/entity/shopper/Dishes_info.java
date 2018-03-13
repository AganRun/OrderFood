package com.orderFood.entity.shopper;

public class Dishes_info {

	public int id;
	
	public int shopper_id;
	
	public String Diytext;
	
	public String name;
	
	public float price;
	
	public float star;

	public int monthNum;
	
	public int messageNum;

	public int leftNum;
	
	public String image;
	
	public String kind;

	public Dishes_info() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getShopper_id() {
		return shopper_id;
	}

	public void setShopper_id(int shopper_id) {
		this.shopper_id = shopper_id;
	}

	public String getDiytext() {
		return Diytext;
	}

	public void setDiytext(String diytext) {
		Diytext = diytext;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getStar() {
		return star;
	}

	public void setStar(float star) {
		this.star = star;
	}

	public int getMonthNum() {
		return monthNum;
	}

	public void setMonthNum(int monthNum) {
		this.monthNum = monthNum;
	}

	public int getMessageNum() {
		return messageNum;
	}

	public void setMessageNum(int messageNum) {
		this.messageNum = messageNum;
	}

	public int getLeftNum() {
		return leftNum;
	}

	public void setLeftNum(int leftNum) {
		this.leftNum = leftNum;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	
	
	
	
}
