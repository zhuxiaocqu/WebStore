package com.webstore.bean.subobject;

import java.sql.Timestamp;
import java.util.Date;

/**
 * ��Ʒ������ �洢ÿ��������Ӧ�ķ�����Ϣ
 * @author zhuxiao
 *
 */
public class FeedBack {
	private OrderProduct order;
	private String EvaluateTime;
	private String EvaluateContent;
	private int FeedBackLevel;
	/**
	 * ��ȡ��Ʒ������Ϣ��Ӧ�Ķ�������
	 * @return OrderProduct
	 */
	public OrderProduct getOrder() {
		return order;
	}
	public void setOrder(OrderProduct order) {
		this.order = order;
	}
	/**
	 * ��ȡ��Ʒ������Ϣ����ʱ��
	 * @return Date
	 */
	public String  getEvaluateTime() {
		return EvaluateTime;
	}
	public void setEvaluateTime(String evaluateTime) {
		EvaluateTime = evaluateTime;
	}
	/**
	 * ��ȡ��Ʒ������Ϣ����
	 * @return String
	 */
	public String getEvaluateContent() {
		return EvaluateContent;
	}
	public void setEvaluateContent(String evaluateContent) {
		EvaluateContent = evaluateContent;
	}
	/**
	 * ��ȡ��Ʒ������Ϣ ���۵ȼ�
	 * @return int
	 */
	public int getFeedBackLevel() {
		return FeedBackLevel;
	}
	public void setFeedBackLevel(int feedBackLevel) {
		FeedBackLevel = feedBackLevel;
	}
}
