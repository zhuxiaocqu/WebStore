package com.webstore.bean.subobject;

import java.util.Date;
/**
 * ��Ʒ���ۼ�¼��  �����Ʒ���ۼ�¼��Ϣ
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
	 * ������ۼ�¼ID
	 * @return int
	 */
	public int getSaleID() {
		return SaleID;
	}
	public void setSaleID(int saleID) {
		SaleID = saleID;
	}
	/**
	 * ��ȡ��Ʒ��������
	 * @return int
	 */
	public int getSaleCount() {
		return SaleCount;
	}
	public void setSaleCount(int saleCount) {
		SaleCount = saleCount;
	}
	/**
	 * ��ȡ��Ʒ����ʱ��
	 * @return Date
	 */
	public String getSaleTime() {
		return SaleTime;
	}
	public void setSaleTime(String saleTime) {
		SaleTime = saleTime;
	}
	/**
	 * ��ȡ������Ʒ���ڿⷿ��Ϣ
	 * @return Base
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * ��ȡ���۵���Ʒ
	 * @return Product
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
