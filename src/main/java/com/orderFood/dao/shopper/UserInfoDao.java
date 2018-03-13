package com.orderFood.dao.shopper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.orderFood.entity.shopper.Shopper_info;
import com.orderFood.util.DBUtil;

public class UserInfoDao {

	
	public Shopper_info seeUserInfo(int id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		Shopper_info user = new Shopper_info();
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from user_info as u,shopper_info as s where  u.id =s.id and u.id =  "+ id;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				user.setId(id);
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setTel(rs.getString("u.tel"));
				user.setEmail(rs.getString("email"));
				user.setRegisterTime(rs.getString("registerTime"));
				user.setDiytext(rs.getString("DiyText"));
				user.setAddress(rs.getString("address"));
				user.setImage(rs.getString("image"));
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
		return user;
	}
	
	public boolean changeInfo(Shopper_info user){
		Connection conn = null;
		PreparedStatement userList = null;
		PreparedStatement shopList = null;
		try{
			conn = DBUtil.getDBConn();
			String sql = "update user_info set name=? , tel=?, email=? , DiyText=?  where id = ? ";
			userList = conn.prepareStatement(sql);
			userList.setString(1, user.getName());
			userList.setString(2, user.getTel());
			userList.setString(3, user.getEmail());
			userList.setString(4, user.getDiytext());
			userList.setInt(5, user.getId());
			if(userList.executeUpdate() !=0){
				String sql2 = "update shopper_info set address =? where id = ? ";
				shopList = conn.prepareStatement(sql2);
				shopList.setString(1, user.getAddress());
				shopList.setInt(2, user.getId());
				if(shopList.executeUpdate() !=0){
					return true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closePreparedStatement(shopList);
				DBUtil.closePreparedStatement(userList);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
}
