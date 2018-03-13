package com.orderFood.service.shopper;

import com.orderFood.dao.shopper.UserInfoDao;
import com.orderFood.entity.shopper.Shopper_info;

public class UserInfoService {

	
	UserInfoDao userdao = new UserInfoDao();
	
	public Shopper_info seeUserInfo(int id){
		return userdao.seeUserInfo(id);
	}
	
	public boolean changeInfo(Shopper_info shopper){
		return userdao.changeInfo(shopper);
	}
}
