package com.orderFood.dao.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.orderFood.entity.customer.Dishes;
import com.orderFood.entity.customer.Index_shopper;
import com.orderFood.util.DBUtil;

public class IndexDao {

	/**
	 * 总览全部商家信息
	 * @return
	 */
	public List<Index_shopper> seeIndex(){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		List<Index_shopper> list = new ArrayList<Index_shopper>(10);
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select u.id,u.name,u.image,s.speed,s.star,s.monthNum from user_info as u , shopper_info as s where u.id = s.id";
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Index_shopper index = new Index_shopper();
				index.setShopper_id(rs.getInt("u.id"));
				index.setShopper_name(rs.getString("u.name"));
				index.setImage(rs.getString("u.image"));
				index.setSpeed(rs.getInt("s.speed"));
				index.setStar(rs.getFloat("s.star"));
				index.setMonthNum(rs.getInt("s.monthNum"));
				list.add(index);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return list;
	}
	
	/**
	 * 根据商家的id去查询商家的相关信息
	 * @param shopper_id
	 * @return
	 */
	public Index_shopper seeShopperById(int shopper_id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		Index_shopper index = new Index_shopper();
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select u.id,u.name,u.image,s.speed,s.star,s.monthNum from user_info as u , shopper_info as s where u.id = s.id and u.status = 1 and s.status = 1 and u.id="+shopper_id;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				index.setShopper_id(rs.getInt("u.id"));
				index.setShopper_name(rs.getString("u.name"));
				index.setImage(rs.getString("u.image"));
				index.setSpeed(rs.getInt("s.speed"));
				index.setStar(rs.getFloat("s.star"));
				index.setMonthNum(rs.getInt("s.monthNum"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return index;
	}
	
	/**
	 * 根据商家编号查找所有菜品
	 * @param shopper_id
	 * @return
	 */
	public List<Dishes> seeAllDishesByShopper_id(int shopper_id){
		List<Dishes> dishList = new ArrayList<Dishes>(20);
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from dishes_info where shopper_id = "+shopper_id+" and  status = 1";
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Dishes dishes = new Dishes();
				dishes.setDishes_id(rs.getInt("id"));
				dishes.setShopper_id(rs.getInt("shopper_id"));
				dishes.setDishes_name(rs.getString("name"));
				dishes.setDishes_image(rs.getString("image"));
				dishes.setDishes_kind(rs.getString("kind"));
				dishes.setDishes_monthNum(rs.getInt("monthNum"));
				dishes.setDishes_star(rs.getFloat("star"));
				dishes.setPrice(rs.getFloat("price"));
				dishList.add(dishes);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dishList;
	}
	
	
	/**
	 * 根据商家id得到菜品都有什么种类
	 * @param shopper_id
	 * @return
	 */
	public List<String> seeKindByShopper_id(int shopper_id){
		List<String> kindList = new ArrayList<String>(10);
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select kind from dishes_info where shopper_id = "+ shopper_id +" and  status = 1 group by kind";
			rs = stat.executeQuery(sql);
			while(rs.next()){
				kindList.add(rs.getString("kind"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return kindList;
	}
	
	/**
	 * 根据菜品id过得商家的id
	 */
	public int getShopperIdByDishesId(int dishes_id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		int shopper_id=0;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select shopper_id from dishes_info where id = "+dishes_id;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				shopper_id = rs.getInt("shopper_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return shopper_id;
	}
	
	/**
	 * 根据菜品id获得菜品名称
	 */
	public String GetDishesNameById(int dishes_id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		String dishes_name = new String();
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select name from dishes_info where id = "+dishes_id;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				dishes_name = rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dishes_name;
	}
	
	/**
	 * 根据菜品id获得菜品单价
	 */
	public float GetDishesPriceById(int dishes_id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		float dishes_price =0;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select price from dishes_info where id = "+dishes_id;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				dishes_price = rs.getFloat("price");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dishes_price;
	}
	
	/**
	 * 根据商家id获得商家姓名
	 */
	public String GetShopperNameById(int shopper_id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		String shopper_name = new String();
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select name from user_info where id = "+shopper_id;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				shopper_name = rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return shopper_name;
	}
	
	
	
	
}
