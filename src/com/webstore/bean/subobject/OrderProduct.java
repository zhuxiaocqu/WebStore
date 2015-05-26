package com.webstore.bean.subobject;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ������ ��Ŷ���ȫ����Ϣ
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
	 * ��ȡ������
	 * @return int
	 */
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	/**
	 * ��ȡ��������Ʒ����
	 * @return int
	 */
	public int getCount() {
		return Count;
	}
	public void setCount(int count) {
		Count = count;
	}
	/**
	 * ��ȡ��������״̬
	 * @return String
	 */
	public String getOrderState() {
		return OrderState;
	}
	public void setOrderState(String orderState) {
		OrderState = orderState;
	}
	/**
	 * ��ȡ�����ջ���ַ
	 * @return String
	 */
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * ��ȡ�µ�ʱ��
	 * @return Date
	 */
	public String getBuyTime() {
		return BuyTime;
	}
	public void setBuyTime(String buyTime) {
		BuyTime = buyTime;
	}
	/**
	 * ��ȡ����ʱ��
	 * @return Date
	 */
	public String getPayTime() {
		return PayTime;
	}
	public void setPayTime(String payTime) {
		PayTime = payTime;
	}
	/**
	 * ��ȡ���������ⷿ
	 * @return Date
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * ��ȡ����������Ϣ
	 * @return Date
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	/**
	 * ��ȡ�µ��û�
	 * @return Date
	 */
	public UserList getUser() {
		return user;
	}
	public void setUser(UserList user) {
		this.user = user;
	}
	/**
	 * ��ȡ������������
	 * @return Date
	 */
	public Deliver getDeliver() {
		return deliver;
	}
	public void setDeliver(Deliver deliver) {
		this.deliver = deliver;
	}
	
}
