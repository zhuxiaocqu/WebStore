package com.webstore.bean.subobject;

import com.webstore.bean.People;
/**
 * Ա���� �洢Ա����Ϣ
 * @author zhuxiao
 *
 */
public class Employee extends People {
	private ManagerGroup ManagerGroup;
	private String AboutMe;
	private String Interest;
	public static final int PAGE_SIZE=2;

	public ManagerGroup getManagerGroup() {
		return ManagerGroup;
	}
	public void setManagerGroup(ManagerGroup managerGroup) {
		ManagerGroup = managerGroup;
	}
	/**
	 * ��ȡԱ�����ҽ���
	 * @return String
	 */
	public String getAboutMe() {
		return AboutMe;
	}
	public void setAboutMe(String aboutMe) {
		AboutMe = aboutMe;
	}
	/**
	 * ��ȡԱ����Ȥ���� String
	 * @return
	 */
	public String getInterest() {
		return Interest;
	}
	public void setInterest(String interest) {
		Interest = interest;
	}
	
	
}