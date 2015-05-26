package com.webstore.bean.subobject;

import java.util.Date;

public class StoreIn {
	private int StoreID;
	private String StoreTime;
	private float BuyInPrice;
	private int StoreCount;
	private Base base;
	private Employee employee;
	private Product product;
	
	/**
	 * ��ȡ��ⵥ��
	 * @return int
	 */
	public int getStoreID() {
		return StoreID;
	}
	public void setStoreID(int storeID) {
		StoreID = storeID;
	}
	/**
	 * ��ȡ���ʱ��
	 * @return Date
	 */
	public String getStoreTime() {
		return StoreTime;
	}
	public void setStoreTime(String storeTime) {
		StoreTime = storeTime;
	}
	/**
	 * ��ȡ���ʱ��Ʒ�۸�
	 * @return float
	 */
	public float getBuyInPrice() {
		return BuyInPrice;
	}
	public void setBuyInPrice(float buyInPrice) {
		BuyInPrice = buyInPrice;
	}
	/**
	 * ��ȡ���ʱ��Ʒ����
	 * @return int
	 */
	public int getStoreCount() {
		return StoreCount;
	}
	public void setStoreCount(int storeCount) {
		StoreCount = storeCount;
	}
	/**
	 * ��ȡ���Ŀⷿ
	 * @return Base
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * ��ȡ���Ĳ���Ա
	 * @return Employee
	 */
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	/**
	 * ��ȡ���Ĳ�Ʒ
	 * @return Product
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
