package com.webstore.bean;

/**
 * ��ΪProductBigType UserType ProductSmallType ProductDetailType������ ��   �ĸ���
 * @author zhuxiao
 *
 */
public class Type {
	private int TypeID;
	private String TypeName;
	
	/**
	 * ������͵�ID
	 * @return int
	 */
	public int getTypeID() {
		return TypeID;
	}
	public void setTypeID(int typeID) {
		TypeID = typeID;
	}
	/**
	 * ������͵�Name
	 * @return String
	 */
	public String getTypeName() {
		return TypeName;
	}
	public void setTypeName(String typeName) {
		TypeName = typeName;
	}
	
}
