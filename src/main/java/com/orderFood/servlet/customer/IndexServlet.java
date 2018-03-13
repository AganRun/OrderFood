package com.orderFood.servlet.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.orderFood.entity.customer.Address;
import com.orderFood.entity.customer.Cart;
import com.orderFood.entity.customer.Cart_dishes;
import com.orderFood.entity.customer.Dishes;
import com.orderFood.entity.customer.Index_shopper;
import com.orderFood.service.customer.IndexService;
import com.orderFood.service.customer.InfoService;

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	IndexService indexSer = new IndexService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("command------>"+command);
		if(command.equals("seeIndex")){
			seeIndex(request,response);
		}
		if(command.equals("seeShopperById")){
			seeShopperById(request,response);
		}
		if(command.equals("cartAdd")){
			cartAdd(request,response);
		}
		if(command.equals("seeCart")){
			seeCart(request,response);
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void seeIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Index_shopper> list = indexSer.seeIndex();
		request.setAttribute("IndexList", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void seeShopperById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int shopper_id = Integer.parseInt(request.getParameter("shopper_id"));
		Index_shopper shopper = indexSer.seeShopperById(shopper_id);
		List<Dishes> dishesList = indexSer.seeAllDishesByShopper_id(shopper_id);
		List<String> kindList = indexSer.seeKindByShopper_id(shopper_id);
		request.setAttribute("shopper", shopper);
		request.setAttribute("dishesList", dishesList);
		request.setAttribute("kindList", kindList);
		request.getRequestDispatcher("shop_detail.jsp").forward(request, response);
	}	
	
	/**
	 * 根据接受的菜品id向session中添加菜品
	 */
	protected void cartAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dishes_id = Integer.parseInt(request.getParameter("dishes_id"));
		int shopper_id = indexSer.getShopperIdByDishesId(dishes_id);
		String dishes_name = indexSer.GetDishesNameById(dishes_id);
		String shopper_name = indexSer.GetShopperNameById(shopper_id);
		float dishes_price = indexSer.GetDishesPriceById(dishes_id);
		System.out.println("shopper_id---->"+shopper_id);
		HttpSession session = request.getSession();
		
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>)session.getAttribute("CART");
		if(list == null){				//如果session为空，则添加第一个session
			System.out.println("还没有session");
			List<Cart> listCreat = new ArrayList<Cart>(5);
			Cart_dishes cart_dishes = new Cart_dishes(dishes_id,dishes_name,1,dishes_price);
			List<Cart_dishes> listDishesInfo = new ArrayList<Cart_dishes>(5);
			listDishesInfo.add(cart_dishes);
			
			Cart cart = new Cart(shopper_id,shopper_name,listDishesInfo);
			listCreat.add(cart);
			session.setAttribute("CART", listCreat);
			
		}else{							//存在session
			int flag = 0;
			int index = 0;
			for(int i=0;i<list.size();i++){
				if(list.get(i).getShopper_id() == shopper_id){
					flag = 1;
					index = i;
					break;
				}
			}
			if(flag == 0){			//如果原session中没有shopper_id
				Cart_dishes cart_dishes = new Cart_dishes(dishes_id,dishes_name,1,dishes_price);
				List<Cart_dishes> listDishesInfo = new ArrayList<Cart_dishes>(5);
				listDishesInfo.add(cart_dishes);
				
				Cart cart = new Cart(shopper_id,shopper_name,listDishesInfo);
				list.add(cart);
				session.setAttribute("CART", list);
			}else{					//如果原session中已经 有shopper_id
				int num = 0;
				for(int j=0;j<list.get(index).getList().size();j++){
					if(list.get(index).getList().get(j).getDishes_id() == dishes_id){	//如果已经有菜品
						num = list.get(index).getList().get(j).getNum();
						list.get(index).getList().remove(j);
						break;
					}
				}
				num+=1;
				Cart_dishes cart_dishes = new Cart_dishes(dishes_id,dishes_name,num,dishes_price);
				list.get(index).getList().add(cart_dishes);
				session.setAttribute("CART", list);
			}
		}
//		输出查看购物车
//		@SuppressWarnings("unchecked")
//		List<Cart> ss = (List<Cart>)session.getAttribute("CART");
//		for(int i=0;i<ss.size();i++){
//			System.out.println("----shopper_id->"+ss.get(i).getShopper_id());
//			for(int j=0;j<ss.get(i).getList().size();j++){
//				System.out.println("--dishes_id->"+ss.get(i).getList().get(j).getDishes_id()+"---num-->"+ss.get(i).getList().get(j).getNum());
//			}
//		}
	
	}
	
	/**
	 * 查看购物车并且跳转页面
	 */
	protected void seeCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		InfoService addressSer = new InfoService();
		List<Address> addressList = addressSer.seeAddress(user_id);
		request.setAttribute("addressList", addressList);
		request.getRequestDispatcher("member_checkout.jsp").forward(request, response);
	}
	
	
	
}
