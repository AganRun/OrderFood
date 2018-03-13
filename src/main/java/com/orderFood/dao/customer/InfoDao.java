package com.orderFood.dao.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.orderFood.entity.User_info;
import com.orderFood.entity.customer.Address;
import com.orderFood.util.DBUtil;

public class InfoDao {

	public boolean changeInfo(User_info user){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			String sql = "update user_info set name=? , tel=? , gender=? , email=? , DiyText=?  where id = ? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getTel());
			ps.setString(3, user.getGender());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getDiyText());
			ps.setInt(6, user.getId());
			if(ps.executeUpdate() !=0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closePreparedStatement(ps);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	public String checkPwd(int id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		String password = new String();
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select password from user_info where id = "+ id;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				password = rs.getString("password");
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
		return password;
	}
	
	
	public void changePwd(String newPwd,int id){
		Connection conn = null;
		Statement stat = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "update user_info set password="+newPwd +" where id = "+id;
			if(stat.executeUpdate(sql) !=0){
				
			}
		}catch(Exception e){
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
	
	
	public List<Address> seeAddress(int id){
		List<Address> list = new ArrayList<Address>(5);
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from customer_address where user_id = "+ id;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Address add = new Address();
				add.setId(rs.getInt("id"));
				add.setUser_id(rs.getInt("user_id"));
				add.setAddress(rs.getString("address"));
				list.add(add);
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
	
	public void addAddress(int user_id,String address){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			String sql = "insert into customer_address (user_id,address) values (?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, user_id);
			ps.setString(2, address);
			if(ps.executeUpdate() !=0){
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closePreparedStatement(ps);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	public void delAddress(int del_id){
		Connection conn = null;
		Statement stat = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "delete from customer_address where id = "+ del_id;
			if(stat.executeUpdate(sql)>0){
				
			}
		}catch(Exception e){
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
