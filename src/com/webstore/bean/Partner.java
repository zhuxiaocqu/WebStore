package com.webstore.bean;

/**
 * Producer Deliver Base��������� �ĸ���
 * @author zhuxiao
 *
 */
public class Partner {
	private int ID;
	private String Name;
	private String Address;
	private String Phone;
	private String Email;
	/**
	 * ��ú�����ID
	 * @return int
	 */
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	/**
	 * ��ú���������
	 * @return String
	 */
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	/**
	 * ��ú����ߵ�ַ
	 * @return String
	 */
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * ��ú�������ϵ��ʽ
	 * @return String
	 */
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	/**
	 * ��ú���������
	 * @return String
	 */
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
}
