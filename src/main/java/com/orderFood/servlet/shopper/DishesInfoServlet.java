package com.orderFood.servlet.shopper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.orderFood.entity.shopper.Dishes_info;
import com.orderFood.service.shopper.DishesInfoService;

public class DishesInfoServlet extends HttpServlet {
	
	DishesInfoService dishesSer = new DishesInfoService();	
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("command--->"+command);
		if(command == null){
			addDishesInfo(request,response);
		}else if(command.equals("seeAllDishesInfo")){
			seeAllDishesInfo(request,response);
		}else if(command.equals("seeDishesByInfo")){
			seeDishesByInfo(request,response);
		}else if(command.equals("changeDishesInfo")){
			changeDishesInfo(request,response);
		}else if(command.equals("downDishesById")){
			downDishesById(request,response);
		}else if(command.equals("upDishesById")){
			upDishesById(request,response);
		}else if(command.equals("deleteDishesById")){
			deleteDishesById(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void seeAllDishesInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int shopper_id = Integer.parseInt(request.getParameter("shopper_id"));
		int status = Integer.parseInt(request.getParameter("status"));
		List<Dishes_info> dishList  = dishesSer.seeAllDishesInfo(shopper_id,status);
		if(status == 1){
			request.setAttribute("seeDishList", dishList);
			request.getRequestDispatcher("dishes_Manage/dishes_info.jsp").forward(request, response);
		}else{
			request.setAttribute("seeDishList", dishList);
			request.getRequestDispatcher("dishes_Manage/dishes_info_deleted.jsp").forward(request, response);
		}
	}
	
	protected void seeDishesByInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Dishes_info dishes = dishesSer.seeDishesByInfo(id);
		request.setAttribute("dishInfo", dishes);
		request.getRequestDispatcher("dishes_Manage/dishes_info_change.jsp").forward(request, response);
	}

	protected void changeDishesInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dishes_info dishes = new Dishes_info();
		dishes.setId(Integer.parseInt(request.getParameter("id")));
		dishes.setLeftNum(Integer.parseInt(request.getParameter("leftNum")));
		dishes.setPrice(Float.parseFloat(request.getParameter("price")));
		dishes.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
		dishes.setDiytext(new String(request.getParameter("Diytext").getBytes("ISO8859-1"),"UTF-8"));
		dishes.setKind(new String(request.getParameter("kind").getBytes("ISO8859-1"),"UTF-8"));
		if(dishesSer.changeDishesInfo(dishes)){
			seeDishesByInfo(request,response);
		}else{
			request.setAttribute("changeDishInfoError", "菜品信息修改失败");
			response.sendRedirect("result.jsp");
		}
		
	}
	
	protected void addDishesInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dishes_info dishes = new Dishes_info();
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		dfif = new DiskFileItemFactory(4096,new File("D:\\temp\\uploadFile"));
		ServletFileUpload sfu = new ServletFileUpload(dfif);
		List<FileItem> list = null;
		InputStream is = null;
		OutputStream os = null;
		int templength = 0;
		byte[] tempByte = new byte[4096];
		try{
			list = sfu.parseRequest(request);
		}catch(FileUploadException e){
			e.printStackTrace();
		}
		for(FileItem fi : list){
			if(fi.isFormField()){
				String fn = fi.getFieldName();
				System.out.println(fi.getFieldName()+"----------"+fi.getString("UTF-8"));
				if(fn.equals("leftNum")){
					dishes.setLeftNum(Integer.parseInt(fi.getString()));
				}else if(fn.equals("name")){ 
					dishes.setName(new String((fi.getString()).getBytes("ISO8859-1"),"UTF-8"));
				}else if(fn.equals("Diytext")){
					dishes.setDiytext(new String(fi.getString().getBytes("ISO8859-1"),"UTF-8"));
				}else if(fn.equals("price")){
					dishes.setPrice(Float.parseFloat(fi.getString()));
				}else if(fn.equals("shopper_id")){
					dishes.setShopper_id(Integer.parseInt(fi.getString())); 
				}else if(fn.equals("kind")){
					dishes.setKind(new String(fi.getString().getBytes("ISO8859-1"),"UTF-8"));
				}
			}else{
				String image = new String(fi.getName().getBytes("ISO8859-1"),"UTF-8");
				if(image.equals("") || image==null){
					image = "DemoImage.jpg";
				}
				dishes.setImage(image);
				String filePath = this.getServletContext().getRealPath("/data/"+image);
				System.out.println("imagePath-->"+filePath);
				os = new FileOutputStream(new File(filePath));
				is = fi.getInputStream();
				while(( (templength = is.read(tempByte)) != -1)){
					os.write(tempByte, 0, templength);
					os.flush();
				}
				is.close();
				os.close();
			}
		}
		if(dishesSer.addDishes(dishes)){
			request.setAttribute("addDishYes", "菜品添加成功");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}else{
			request.setAttribute("addDishError", "菜品添加失败");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
	}
	
	public void downDishesById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		dishesSer.downDishesById(id);
		seeAllDishesInfo(request,response);
	}
	
	public void upDishesById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		dishesSer.upDishesById(id);
		seeAllDishesInfo(request,response);
	}
	
	public void deleteDishesById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		dishesSer.deleteDishesById(id);
		seeAllDishesInfo(request,response);
	}	
	
	
}
