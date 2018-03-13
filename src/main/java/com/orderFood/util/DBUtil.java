package com.orderFood.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	
	/**
	 * 
	 * @return
	 * @throws ClassNotFoundException 
	 */
	public static Connection getDBConn() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/orderfoodsystem", "root", "root");
	}
	
	/**
	 * @param conn
	 * @throws SQLException
	 */
	public static void closeDBConn(Connection conn) throws SQLException{
		if(conn != null){
			conn.close();
		}
	}
	
	public static void closeStatement(Statement stat) throws SQLException{
		if(stat != null){
			stat.close();
		}
	}
	
	public static void closePreparedStatement(PreparedStatement ps) throws SQLException{
		if(ps != null){
			ps.close();
		}
	}
	
	public static void closeResultSet(ResultSet rs) throws SQLException{
		if(rs != null){
			rs.close();
		}
	}
	
}
