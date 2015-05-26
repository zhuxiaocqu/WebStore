package com.webstore.bean.subobject;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 订单类 存放订单全部信息
 * @author zhuxiao
 *
 */
public class OrderProduct {
	private int OrderID;
	private int Count;
	private String OrderState;
	private String Address;
	private String BuyTime;
	private String PayTime;
	private Base base;
	private Product product;
	private UserList user;
	private Deliver deliver;
	
	public static final int PAGE_SIZE=2;

	/**
	 * 获取订单号
	 * @return int
	 */
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	/**
	 * 获取订单中商品数量
	 * @return int
	 */
	public int getCount() {
		return Count;
	}
	public void setCount(int count) {
		Count = count;
	}
	/**
	 * 获取订单交易状态
	 * @return String
	 */
	public String getOrderState() {
		return OrderState;
	}
	public void setOrderState(String orderState) {
		OrderState = orderState;
	}
	/**
	 * 获取订单收货地址
	 * @return String
	 */
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * 获取下单时间
	 * @return Date
	 */
	public String getBuyTime() {
		return BuyTime;
	}
	public void setBuyTime(String buyTime) {
		BuyTime = buyTime;
	}
	/**
	 * 获取付款时间
	 * @return Date
	 */
	public String getPayTime() {
		return PayTime;
	}
	public void setPayTime(String payTime) {
		PayTime = payTime;
	}
	/**
	 * 获取订单发货库房
	 * @return Date
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * 获取订单货物信息
	 * @return Date
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	/**
	 * 获取下单用户
	 * @return Date
	 */
	public UserList getUser() {
		return user;
	}
	public void setUser(UserList user) {
		this.user = user;
	}
	/**
	 * 获取订单运送物流
	 * @return Date
	 */
	public Deliver getDeliver() {
		return deliver;
	}
	public void setDeliver(Deliver deliver) {
		this.deliver = deliver;
	}
	
}
