package com.orderFood.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orderFood.entity.User_info;
import com.orderFood.service.LoginService;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	LoginService loginSer = new LoginService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("command--->"+command);
		if(command.equals("login")){
			login(request,response);
		}
		if(command.equals("regist")){
			regist(request,response);
		}
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("username"));
		String password = request.getParameter("password");
		if(loginSer.checkUserId(id)){
			if(loginSer.checkUserPassword(id, password)){
				User_info user = loginSer.getUserInfo(id);
				request.getSession().setAttribute("user", user);
				if(user.getPost().equals("顾客")){
					response.sendRedirect("index.jsp");
				}
				if(user.getPost().equals("商家")){
					response.sendRedirect("../shopper/index.jsp");
				}
				if(user.getPost().equals("管理员")){
					response.sendRedirect("../backStage/index.jsp");
				}
			}else{
				request.setAttribute("loginError", "账户名或密码错误");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("loginError", "账户名或密码错误");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	
	public void regist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String tel = request.getParameter("tel");
		String name = new String(request.getParameter("username").getBytes("ISO8859-1"),"utf-8");
		String password = request.getParameter("password");
		String post = new String(request.getParameter("post").getBytes("ISO8859-1"),"UTF-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		String time = df.format(new Date());
		User_info user = new User_info();
		user.setName(name);
		user.setPassword(password);
		user.setTel(tel);
		user.setRegisterTime(time);
		user.setPost(post);
		user = loginSer.regist(user);
		request.getSession().setAttribute("user", user);
		if(post.equals("顾客")){
			response.sendRedirect("index.jsp");
		}else if(post.equals("商家")){
			response.sendRedirect("../shopper/index.jsp");
		}else{
			request.setAttribute("registerError", "注册失败");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}

}
