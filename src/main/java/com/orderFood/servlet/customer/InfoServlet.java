package com.orderFood.servlet.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orderFood.entity.User_info;
import com.orderFood.entity.customer.Address;
import com.orderFood.service.LoginService;
import com.orderFood.service.customer.InfoService;

public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	InfoService infoSer = new InfoService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("command-->"+command);
		if(command.equals("changeInfo")){
			changeInfo(request,response);
		}
		if(command.equals("see")){
			see(request,response);
		}
		if(command.equals("changePwd")){
			changePwd(request,response);
		}
		if(command.equals("seeAddress")){
			seeAddress(request,response);
		}
		if(command.equals("addAddress")){
			addAddress(request,response);
		}
		if(command.equals("delAddress")){
			delAddress(request,response);
		}
	}
	
	protected void changePwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String rightPwd = infoSer.checkPwd(id);
		if(rightPwd.equals(request.getParameter("oldPwd"))){
			String newPwd = request.getParameter("repeat");
			infoSer.changePwd(newPwd,id);
			request.setAttribute("changePwdYes", "您修改密码成功");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}else{
			request.setAttribute("changePwdError", "您输入的密码错误");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}
	
	protected void see(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		LoginService loginser = new LoginService();
		User_info user = loginser.getUserInfo(id);
		request.setAttribute("SeeInfo", user);
		request.getRequestDispatcher("user_info/personal_info.jsp").forward(request, response);
	}
	
	protected void changeInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User_info user = new User_info();
		user.setId( Integer.parseInt(request.getParameter("id")) );
		user.setName( new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
		user.setDiyText(new String(request.getParameter("diytext").getBytes("ISO8859-1"),"UTF-8"));
		user.setGender(new String(request.getParameter("gender").getBytes("ISO8859-1"),"UTF-8"));
		user.setTel(new String(request.getParameter("tel")));
		user.setEmail(new String(request.getParameter("email")));
		if(infoSer.changeInfo(user)){
			see(request,response);
		}else{
			request.setAttribute("ChangeNo", "您的用户信息并未得到修改");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}
	
	protected void seeAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Address> list = infoSer.seeAddress(id);
		request.setAttribute("ADD", list);
		request.getRequestDispatcher("user_info/address.jsp").forward(request, response);
	}
	
	protected void addAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address = new String(request.getParameter("newAdd").getBytes("ISO8859-1"),"UTF-8");
		int user_id = Integer.parseInt(request.getParameter("id"));
		infoSer.addAddress( user_id, address);
		seeAddress(request,response);
	}
	
	protected void delAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int del_id = Integer.parseInt(request.getParameter("del_id"));
		infoSer.delAddress(del_id);
		seeAddress(request,response);
	}
	

}
