package com.webstore.bean.subobject;

import com.webstore.bean.Partner;

/**
 * �ⷿ��
 * @author zhuxiao
 *
 */
public class Base extends Partner {
	private Employee employee;

	/**
	 * ��ȡ�ⷿ����Ա
	 * @return
	 */
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
}
