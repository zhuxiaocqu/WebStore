package com.webstore.bean.subobject;

/**
 * ��Ϊ ���� Ȩ����� ����Ա����� ���м���
 * @author zhuxiao
 *
 */
public class MAAssociate {
	private ManagerGroup managerGroup;
	private Authority authority;
	
	/**
	 * ��ȡ����Ա��
	 * @return ManagerGroup
	 */
	public ManagerGroup getManagerGroup() {
		return managerGroup;
	}
	public void setManagerGroup(ManagerGroup managerGroup) {
		this.managerGroup = managerGroup;
	}
	/**
	 * ��ȡȨ�ޱ� 
	 * @return Authority
	 */
	public Authority getAuthority() {
		return authority;
	}
	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
}
