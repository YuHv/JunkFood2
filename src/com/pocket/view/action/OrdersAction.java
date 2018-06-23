package com.pocket.view.action;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pocket.service.iface.BasketService;
import com.pocket.service.iface.OrdersService;
import com.pocket.sql.bean.Orders;

public class OrdersAction extends ActionSupport {
	OrdersService ordersService;
	Integer id;
	Orders orders;
	
	
	public Orders getOrders() {
		return orders;
	}



	public void setOrders(Orders orders) {
		this.orders = orders;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public OrdersService getOrdersService() {
		return ordersService;
	}



	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}



	public String myOrders(){

		ActionContext.getContext().getSession().put("ordersList",ordersService.show(id) );
		return "input";
	}
	public String myAdd(){
		
		ordersService.addOrders(orders);
		return "jump";
	}
	public String myAdd_basket(){
		BasketService.myDel_basket(id);
		System.out.println("sdsfsg"+id);
		ordersService.addOrders(orders);
		return "jump";
	}
	public String myDel(){
		ordersService.myDel(id);
		return "jump";
	}
	public String Del(){
		ordersService.myDel(id);
		return "del";
	}
	public String ordersShow(){
		ActionContext.getContext().getSession().put("showOrders", ordersService.ordersShow());
		return "show";
	}
	public String processShow(){
		ActionContext.getContext().getSession().put("processOrders", ordersService.processShow());
		return "process";
	}
	public String Ship(){
		ordersService.ship(id);
		return "jump2";
	}
	public String ordersDate(){
		ActionContext.getContext().put("today", ordersService.today());
		
		return "date";
	}
}
