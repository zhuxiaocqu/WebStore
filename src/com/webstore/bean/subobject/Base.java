package com.webstore.bean.subobject;

import com.webstore.bean.Partner;

/**
 * 库房类
 * @author zhuxiao
 *
 */
public class Base extends Partner {
	private Employee employee;

	/**
	 * 获取库房管理员
	 * @return
	 */
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
}
