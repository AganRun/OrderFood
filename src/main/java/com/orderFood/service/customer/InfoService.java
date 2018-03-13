package com.orderFood.service.customer;

import java.util.List;

import com.orderFood.dao.customer.InfoDao;
import com.orderFood.entity.User_info;
import com.orderFood.entity.customer.Address;

public class InfoService {

	InfoDao infoDao = new InfoDao();
	
	public boolean changeInfo(User_info user ){
		return infoDao.changeInfo(user);
	}
	
	public String checkPwd(int id){
		return infoDao.checkPwd(id);
	}
	
	public void changePwd(String newPwd,int id){
		infoDao.changePwd(newPwd,id);
	}
	
	public List<Address> seeAddress(int id){
		return infoDao.seeAddress(id);
	}
	
	public void addAddress(int user_id,String address){
		infoDao.addAddress(user_id,address);
	}
	
	public void delAddress(int del_id){
		infoDao.delAddress(del_id);
	}
	
}
