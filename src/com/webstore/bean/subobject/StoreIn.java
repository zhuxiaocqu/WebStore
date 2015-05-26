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
	 * 获取入库单号
	 * @return int
	 */
	public int getStoreID() {
		return StoreID;
	}
	public void setStoreID(int storeID) {
		StoreID = storeID;
	}
	/**
	 * 获取入库时间
	 * @return Date
	 */
	public String getStoreTime() {
		return StoreTime;
	}
	public void setStoreTime(String storeTime) {
		StoreTime = storeTime;
	}
	/**
	 * 获取入库时物品价格
	 * @return float
	 */
	public float getBuyInPrice() {
		return BuyInPrice;
	}
	public void setBuyInPrice(float buyInPrice) {
		BuyInPrice = buyInPrice;
	}
	/**
	 * 获取入库时物品数量
	 * @return int
	 */
	public int getStoreCount() {
		return StoreCount;
	}
	public void setStoreCount(int storeCount) {
		StoreCount = storeCount;
	}
	/**
	 * 获取入库的库房
	 * @return Base
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * 获取入库的操作员
	 * @return Employee
	 */
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	/**
	 * 获取入库的产品
	 * @return Product
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
