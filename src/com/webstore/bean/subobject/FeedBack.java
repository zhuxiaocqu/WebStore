package com.webstore.bean.subobject;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 商品反馈类 存储每条订单对应的反馈信息
 * @author zhuxiao
 *
 */
public class FeedBack {
	private OrderProduct order;
	private String EvaluateTime;
	private String EvaluateContent;
	private int FeedBackLevel;
	/**
	 * 获取商品反馈信息对应的订单对象
	 * @return OrderProduct
	 */
	public OrderProduct getOrder() {
		return order;
	}
	public void setOrder(OrderProduct order) {
		this.order = order;
	}
	/**
	 * 获取商品反馈信息评价时间
	 * @return Date
	 */
	public String  getEvaluateTime() {
		return EvaluateTime;
	}
	public void setEvaluateTime(String evaluateTime) {
		EvaluateTime = evaluateTime;
	}
	/**
	 * 获取商品反馈信息内容
	 * @return String
	 */
	public String getEvaluateContent() {
		return EvaluateContent;
	}
	public void setEvaluateContent(String evaluateContent) {
		EvaluateContent = evaluateContent;
	}
	/**
	 * 获取商品反馈信息 评价等级
	 * @return int
	 */
	public int getFeedBackLevel() {
		return FeedBackLevel;
	}
	public void setFeedBackLevel(int feedBackLevel) {
		FeedBackLevel = feedBackLevel;
	}
}
