package com.orderFood.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.orderFood.entity.User_info;
import com.orderFood.util.DBUtil;


public class LoginDao {

	
	/**
	 * 检验输入的用户名是否存在
	 */
	public boolean checkUserId(int userId){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from user_info where id = "+userId+" or tel = "+userId;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				return true;
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
		return false;
	}
	
	
	/**
	 * 检验输入的用户密码是否正确
	 */
	public boolean checkUserPassword(int id,String password){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select password from user_info where id = "+id+" or tel = "+id;
			rs = stat.executeQuery(sql);
			String truePassword = new String();
			if(rs.next()){
				truePassword = rs.getString("password");
			}
			if(password.equals(truePassword)){
				return true;
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
		return false;
	}
	
	/**
	 * 获取用户的信息
	 */
	public User_info getUserInfo(int id){
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		User_info user = new User_info();
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql = "select * from user_info where id = "+id+" or tel = "+id;
			rs = stat.executeQuery(sql);
			if(rs.next()){
				user.setId(rs.getInt("id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setTel(rs.getString("tel"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setRegisterTime(rs.getString("registerTime"));
				user.setDiyText(rs.getString("DiyText"));
				user.setPost(rs.getString("post"));
				user.setStatus(rs.getString("status"));
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
	
	
	/**
	 * 注册用户并并且返回用户信息
	 */
	public User_info regist(User_info user){
		Connection conn = null;
		PreparedStatement ps = null;
		Statement stat = null;
		Statement StatShopper = null;
		ResultSet rs = null;
		try{
			System.out.println(user.getName());
			conn = DBUtil.getDBConn();
			String sql = "insert into user_info (name,tel,password,registerTime,post) values (?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getTel());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getRegisterTime());
			ps.setString(5, user.getPost());
			if(ps.executeUpdate()!= 0){
				System.out.println("添加成功");
				stat = conn.createStatement();
				String sql2 = "select * from user_info where tel = "+user.getTel();
				rs = stat.executeQuery(sql2);
				if(rs.next()){
					user.setEmail(rs.getString("email"));
					user.setId(rs.getInt("id"));
					user.setGender(rs.getString("gender"));
					user.setPost(rs.getString("post"));
					user.setRegisterTime(rs.getString("registerTime"));
					user.setDiyText(rs.getString("DiyText"));
					if(user.getPost().equals("商家")){
						String sql3 = "insert into shopper_info ( id ) values ( "+user.getId()+" )";
						StatShopper = conn.createStatement();
						if(StatShopper.executeUpdate(sql3)!=0){

						}
					}
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				DBUtil.closeResultSet(rs);
				DBUtil.closeStatement(stat);
				DBUtil.closePreparedStatement(ps);
				DBUtil.closeDBConn(conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return user;
	}
	
	
}
