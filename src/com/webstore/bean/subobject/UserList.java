package com.webstore.bean.subobject;

import com.webstore.bean.People;

/**
 * �û��� �洢�û���Ϣ
 * @author zhuxiao
 *
 */
public class UserList extends People{
	private UserType userType;

	/**
	 * ��ȡ�û����� ��
	 * @return UserType
	 */
	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	
	
}
