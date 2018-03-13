package com.orderFood.dao.shopper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.orderFood.entity.shopper.Dishes_info;
import com.orderFood.util.DBUtil;

public class DishesInfoDao {

	/**
	 * 查看全部菜品信息
	 * @return
	 */
	public List<Dishes_info> seeAllDishesInfo(int shopper_id,int status){
		List<Dishes_info> list = new ArrayList<Dishes_info>(18);
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from dishes_info where shopper_id  ="+ shopper_id+" and status = "+status;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Dishes_info dish = new Dishes_info();
				dish.setId(rs.getInt("id"));
				dish.setShopper_id(rs.getInt("shopper_id"));
				dish.setName(rs.getString("name"));
				dish.setImage(rs.getString("image"));
				dish.setPrice(rs.getFloat("price"));
				dish.setMonthNum(rs.getInt("monthNum"));
				dish.setMessageNum(rs.getInt("messageNum"));
				dish.setLeftNum(rs.getInt("leftNum"));
				dish.setDiytext(rs.getString("DiyText"));
				dish.setStar(rs.getFloat("star"));
				dish.setKind(rs.getString("kind"));
				list.add(dish);
			}
		}catch(Exception e){
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
	 * 根据菜品id查看菜品信息
	 * @param id
	 * @return
	 */
	public Dishes_info seeDishesByInfo(int id){
		Dishes_info dish = new Dishes_info();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from dishes_info where id="+id;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				dish.setId(rs.getInt("id"));
				dish.setShopper_id(rs.getInt("shopper_id"));
				dish.setName(rs.getString("name"));
				dish.setImage(rs.getString("image"));
				dish.setPrice(rs.getFloat("price"));
				dish.setMonthNum(rs.getInt("monthNum"));
				dish.setMessageNum(rs.getInt("messageNum"));
				dish.setLeftNum(rs.getInt("leftNum"));
				dish.setDiytext(rs.getString("DiyText"));
				dish.setStar(rs.getFloat("star"));
				dish.setKind(rs.getString("kind"));
			}
		}catch(Exception e){
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
		return dish;
	}
	
	/**
	 * 修改菜品信息
	 * @param dishes
	 * @return
	 */
	public boolean changeDishesInfo(Dishes_info dishes){
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = DBUtil.getDBConn();
			String sql = "update dishes_info set name=? , price=?, leftNum=? , DiyText=? ,kind=? where id = ? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dishes.getName());
			ps.setFloat(2, dishes.getPrice());
			ps.setInt(3, dishes.getLeftNum());
			ps.setString(4, dishes.getDiytext());
			ps.setString(5, dishes.getKind());
			ps.setInt(6, dishes.getId());
			if(ps.executeUpdate() !=0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closePreparedStatement(ps);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/**
	 * 添加菜品信息，通过（名称，图片，价格，介绍，商家id）
	 * @param dishes
	 * @return
	 */
	public boolean addDishes(Dishes_info dishes){
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = DBUtil.getDBConn();
			String sql = "insert into dishes_info (name,image,DiyText,price,shopper_id,leftNum,kind) values (?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dishes.getName());
			ps.setString(2, dishes.getImage());
			ps.setString(3, dishes.getDiytext());
			ps.setFloat(4, dishes.getPrice());
			ps.setInt(5, dishes.getShopper_id());
			ps.setInt(6, dishes.getLeftNum());
			ps.setString(7, dishes.getKind());
			if(ps.executeUpdate() != 0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closePreparedStatement(ps);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/**
	 * 根据id对菜品进行下架
	 * @param id
	 */
	public void downDishesById(int id){
		Connection conn = null;
		Statement stat = null;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "update dishes_info set status = 0 where id = " + id;
			if(stat.executeUpdate(sql)!=0){
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public void upDishesById(int id){
		Connection conn = null;
		Statement stat = null;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "update dishes_info set status = 1 where id = " + id;
			if(stat.executeUpdate(sql)!=0){
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public void deleteDishesById(int id){
		Connection conn = null;
		Statement stat = null;
		try {
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "delete from dishes_info  where id = " + id;
			if(stat.executeUpdate(sql)!=0){
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeStatement(stat);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	
	
}
