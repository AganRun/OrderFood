package com.orderFood.service.shopper;

import java.util.List;

import com.orderFood.dao.shopper.DishesInfoDao;
import com.orderFood.entity.shopper.Dishes_info;

public class DishesInfoService {

	DishesInfoDao dishesDao = new DishesInfoDao();
	
	public List<Dishes_info> seeAllDishesInfo(int shopper_id,int status){
		return dishesDao.seeAllDishesInfo(shopper_id,status);
	}
	
	public Dishes_info seeDishesByInfo(int id){
		return dishesDao.seeDishesByInfo(id);
	}
	
	public boolean changeDishesInfo(Dishes_info dishes){
		return dishesDao.changeDishesInfo(dishes);
	}
	
	public boolean addDishes(Dishes_info dishes){
		return dishesDao.addDishes(dishes);
	}
	
	public void downDishesById(int id){
		dishesDao.downDishesById(id);
	}
	
	public void upDishesById(int id){
		dishesDao.upDishesById(id);
	}
	
	public void deleteDishesById(int id){
		dishesDao.deleteDishesById(id);
	}
	
	
}
