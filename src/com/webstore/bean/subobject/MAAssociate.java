package com.webstore.bean.subobject;

/**
 * 作为 连接 权限类和 管理员类别类 的中间类
 * @author zhuxiao
 *
 */
public class MAAssociate {
	private ManagerGroup managerGroup;
	private Authority authority;
	
	/**
	 * 获取管理员组
	 * @return ManagerGroup
	 */
	public ManagerGroup getManagerGroup() {
		return managerGroup;
	}
	public void setManagerGroup(ManagerGroup managerGroup) {
		this.managerGroup = managerGroup;
	}
	/**
	 * 获取权限表 
	 * @return Authority
	 */
	public Authority getAuthority() {
		return authority;
	}
	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
}
