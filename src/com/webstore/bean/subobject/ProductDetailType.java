package com.webstore.bean.subobject;

import com.webstore.bean.Type;

/**
 * ��Ʒ��ϸ���� ������ƷС�� ����Ʒ����
 * @author zhuxiao
 *
 */
public class ProductDetailType extends Type {
	private ProductSmallType smallType;

	public ProductSmallType getSmallType() {
		return smallType;
	}

	public void setSmallType(ProductSmallType smallType) {
		this.smallType = smallType;
	}
}
