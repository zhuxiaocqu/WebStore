package com.webstore.bean;

import java.sql.Date;


/**
 * UserList Employee���� �ĸ���
 * @author zhuxiao
 *
 */
public class People {
	private int UserID;
	private int Age;
	private String Account;
	private String PassWord;
	private String RealName;
	private String Sex;
	private String PhoneNumber;
	private String Address;
	private String EMail;
	private Date BirthDate;
	private String ImageURL;
	public String getImageURL() {
		return ImageURL;
	}
	public void setImageURL(String imageURL) {
		ImageURL = imageURL;
	}
	/**
	 * ��ȡ�����ID
	 * @return int UserID
	 */
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	/**
	 * ��ȡ�����Age
	 * @return int
	 */
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	/**
	 * ��ȡ������˺�
	 * @return String
	 */
	public String getAccount() {
		return Account;
	}
	public void setAccount(String account) {
		Account = account;
	}
	/**
	 * ��ȡ���������
	 * @return String
	 */
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	/**
	 * ��ȡ�������ʵ����
	 * @return String
	 */
	public String getRealName() {
		return RealName;
	}
	public void setRealName(String realName) {
		RealName = realName;
	}
	/**
	 * ��ȡ������Ա�
	 * @return String
	 */
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	/**
	 * ��ȡ�������ϵ��ʽ
	 * @return String
	 */
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	/**
	 * ��ȡ����ĵ�ַ
	 * @return String
	 */
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * ��ȡ���������
	 * @return String
	 */
	public String getEMail() {
		return EMail;
	}
	public void setEMail(String eMail) {
		EMail = eMail;
	}
	/**
	 * ��ȡ���������
	 * @return Date
	 */
	public Date getBirthDate() {
		return BirthDate;
	}
	public void setBirthDate(Date birthDate) {
		BirthDate = birthDate;
	}
	
}
