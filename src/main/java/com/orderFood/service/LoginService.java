package com.orderFood.service;

import com.orderFood.dao.LoginDao;
import com.orderFood.entity.User_info;

public class LoginService {
	
	LoginDao logindao = new LoginDao();
	
	public boolean checkUserId(int id){
		if(logindao.checkUserId(id)){
			return true;
		}
		return false;
	}
	
	public boolean checkUserPassword(int id,String password){
		if(logindao.checkUserPassword(id, password)){
			return true;
		}
		return false;
	}
	
	public User_info getUserInfo(int id){
		User_info user = logindao.getUserInfo(id);
		return user;
	}
	
	public User_info regist(User_info user){
		return logindao.regist(user);
	}
	
	
	
}
