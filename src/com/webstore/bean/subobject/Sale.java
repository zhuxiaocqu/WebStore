package com.webstore.bean.subobject;

import java.util.Date;
/**
 * 商品销售记录类  存放商品销售记录信息
 * @author zhuxiao
 *
 */
public class Sale {
	private int SaleID;
	private int SaleCount;
	private String  SaleTime;
	private Base base;
	private Product product;
	/**
	 * 获得销售记录ID
	 * @return int
	 */
	public int getSaleID() {
		return SaleID;
	}
	public void setSaleID(int saleID) {
		SaleID = saleID;
	}
	/**
	 * 获取商品销售数量
	 * @return int
	 */
	public int getSaleCount() {
		return SaleCount;
	}
	public void setSaleCount(int saleCount) {
		SaleCount = saleCount;
	}
	/**
	 * 获取商品销售时间
	 * @return Date
	 */
	public String getSaleTime() {
		return SaleTime;
	}
	public void setSaleTime(String saleTime) {
		SaleTime = saleTime;
	}
	/**
	 * 获取销售商品所在库房信息
	 * @return Base
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * 获取销售的商品
	 * @return Product
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
