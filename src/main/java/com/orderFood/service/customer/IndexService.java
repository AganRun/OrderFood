package com.orderFood.service.customer;

import java.util.List;

import com.orderFood.dao.customer.IndexDao;
import com.orderFood.entity.customer.Dishes;
import com.orderFood.entity.customer.Index_shopper;

public class IndexService {

	IndexDao indexDao = new IndexDao();
	
	public List<Index_shopper> seeIndex(){
		return indexDao.seeIndex();
	}
	
	public Index_shopper seeShopperById(int shopper_id){
		return indexDao.seeShopperById(shopper_id);
	}
	
	public List<Dishes> seeAllDishesByShopper_id(int id){
		return indexDao.seeAllDishesByShopper_id(id);
	}
	
	public List<String> seeKindByShopper_id(int shopper_id){
		return indexDao.seeKindByShopper_id(shopper_id);
	}
	
	public int getShopperIdByDishesId(int dishes_id){
		return indexDao.getShopperIdByDishesId(dishes_id);
	}
	
	public String GetDishesNameById(int dishes_id){
		return indexDao.GetDishesNameById(dishes_id);
	}
	
	public float GetDishesPriceById(int dishes_id){
		return indexDao.GetDishesPriceById(dishes_id);
	}
	
	public String GetShopperNameById(int shopper_id){
		return indexDao.GetShopperNameById(shopper_id);
	}
	
}
