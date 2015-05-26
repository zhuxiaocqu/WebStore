package com.webstore.bean.subobject;
/**
 * 库存类 存放商品库存信息
 * @author zhuxiao
 *
 */
public class Rest {
	private Base base;
	private Product product;
	private int Cout;
	/**
	 * 获取商品所在库房
	 * @return Base
	 */
	public Base getBase() {
		return base;
	}
	public void setBase(Base base) {
		this.base = base;
	}
	/**
	 * 获取商品对象
	 * @return Product
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	/**
	 * 获取商品数量
	 * @return int
	 */
	public int getCout() {
		return Cout;
	}
	public void setCout(int cout) {
		Cout = cout;
	}
}
