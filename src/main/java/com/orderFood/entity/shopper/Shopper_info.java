package com.orderFood.entity.shopper;

public class Shopper_info {

	public int id;
	
	public String name;
	
	public String diytext;
	
	public String tel;
	
	public String email;
	
	public String address;
	
	public int speed;
	
	public String image;
	
	public String password;

	public String registerTime;
	
	public Shopper_info() {
		super();
	}
	
	
	public String getRegisterTime() {
		return registerTime;
	}



	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}



	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
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

	public String getDiytext() {
		return diytext;
	}

	public void setDiytext(String diytext) {
		this.diytext = diytext;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	
	
}
