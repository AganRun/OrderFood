package com.orderFood.servlet.shopper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orderFood.entity.shopper.Shopper_info;
import com.orderFood.service.shopper.UserInfoService;

public class UserInfoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	UserInfoService userSer = new UserInfoService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("command--->"+command);
		if(command.equals("seeUserInfo")){
			seeUserInfo(request,response);
		}
		if(command.equals("changeUserInfo")){
			changeUserInfo(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void seeUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id--->"+id);
		Shopper_info shopper = userSer.seeUserInfo(id);
		request.setAttribute("shopper", shopper);
		request.getRequestDispatcher("userCenter.jsp").forward(request, response);
	}
	
	
	protected void changeUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{ 
		Shopper_info user = new Shopper_info();
		user.setId( Integer.parseInt(request.getParameter("id")) );
		user.setName( new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
		user.setDiytext(new String(request.getParameter("diytext").getBytes("ISO8859-1"),"UTF-8"));
		user.setAddress(new String(request.getParameter("address").getBytes("ISO8859-1"),"UTF-8"));
		user.setTel(new String(request.getParameter("tel")));
		user.setEmail(new String(request.getParameter("email")));
		if(userSer.changeInfo(user)){
			seeUserInfo(request,response);
		}else{
			request.setAttribute("ChangeNo", "您的用户信息并未得到修改");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}
	
	
}
