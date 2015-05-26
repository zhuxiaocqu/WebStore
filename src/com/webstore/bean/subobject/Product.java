package com.webstore.bean.subobject;

/**
 * ��Ʒ��Ϣ��  �����Ʒ������Ϣ
 * @author zhuxiao
 *
 */
public class Product {
	private int ProductID;
	private float MarketPrice;
	private float Discount;
	private String ProductName;
	private String TradeMark;
	private String DetailInfo;
	private ProductBigType bigType;
	private ProductSmallType smallType;
	private ProductDetailType detailType;
	private Producer producer;
	private String ImageURL;
	//���ڷ�ҳ��ѯ
	public static final int PAGE_SIZE=2;
	public String getImageURL() {
		return ImageURL;
	}
	public void setImageURL(String imageURL) {
		ImageURL = imageURL;
	}
	/**
	 * ��ȡ��ƷID
	 * @return int
	 */
	public int getProductID() {
		return ProductID;
	}
	public void setProductID(int productID) {
		ProductID = productID;
	}
	/**
	 * ��ȡ��Ʒ�۸�
	 * @return float
	 */
	public float getMarketPrice() {
		return MarketPrice;
	}
	public void setMarketPrice(float marketPrice) {
		MarketPrice = marketPrice;
	}
	/**
	 * ��ȡ��Ʒ�ۿ�
	 * @return float
	 */
	public float getDiscount() {
		return Discount;
	}
	public void setDiscount(float discount) {
		Discount = discount;
	}
	/**
	 * ��ȡ��Ʒ����
	 * @return String
	 */
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	/**
	 * ��ȡ��ƷƷ��
	 * @return String
	 */
	public String getTradeMark() {
		return TradeMark;
	}
	public void setTradeMark(String tradeMark) {
		TradeMark = tradeMark;
	}
	/**
	 * ��ȡ��Ʒ��ϸ��Ϣ
	 * @return String
	 */
	public String getDetailInfo() {
		return DetailInfo;
	}
	public void setDetailInfo(String detailInfo) {
		DetailInfo = detailInfo;
	}
	/**
	 * ��ȡ��Ʒ����
	 * @return String
	 */
	public ProductBigType getBigType() {
		return bigType;
	}
	public void setBigType(ProductBigType bigType) {
		this.bigType = bigType;
	}
	/**
	 * ��ȡ��ƷС��
	 * @return String
	 */
	public ProductSmallType getSmallType() {
		return smallType;
	}
	public void setSmallType(ProductSmallType smallType) {
		this.smallType = smallType;
	}
	/**
	 * ��ȡ��Ʒ��ϸ����
	 * @return String
	 */
	public ProductDetailType getDetailType() {
		return detailType;
	}
	public void setDetailType(ProductDetailType detailType) {
		this.detailType = detailType;
	}
	public Producer getProducer() {
		return producer;
	}
	/**
	 * ��ȡ��Ʒ������
	 * @return String
	 */
	public void setProducer(Producer producer) {
		this.producer = producer;
	}
}