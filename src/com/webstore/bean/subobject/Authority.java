package com.webstore.bean.subobject;

import com.webstore.bean.Type;

/**
 * 权限类  存储权限的种类
 * @author zhuxiao
 *
 */
public class Authority extends Type {
	private String PageName;

	/**
	 * 获得该权限可以访问的页面
	 * @return
	 */
	public String getPageName() {
		return PageName;
	}

	public void setPageName(String pageName) {
		PageName = pageName;
	}
	
}
