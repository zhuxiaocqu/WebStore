package com.webstore.bean;

import java.sql.Date;


/**
 * UserList Employee等人 的父类
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
	 * 获取人物的ID
	 * @return int UserID
	 */
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	/**
	 * 获取人物的Age
	 * @return int
	 */
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	/**
	 * 获取人物的账号
	 * @return String
	 */
	public String getAccount() {
		return Account;
	}
	public void setAccount(String account) {
		Account = account;
	}
	/**
	 * 获取人物的密码
	 * @return String
	 */
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	/**
	 * 获取人物的真实姓名
	 * @return String
	 */
	public String getRealName() {
		return RealName;
	}
	public void setRealName(String realName) {
		RealName = realName;
	}
	/**
	 * 获取人物的性别
	 * @return String
	 */
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	/**
	 * 获取人物的联系方式
	 * @return String
	 */
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	/**
	 * 获取人物的地址
	 * @return String
	 */
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	/**
	 * 获取人物的邮箱
	 * @return String
	 */
	public String getEMail() {
		return EMail;
	}
	public void setEMail(String eMail) {
		EMail = eMail;
	}
	/**
	 * 获取人物的生日
	 * @return Date
	 */
	public Date getBirthDate() {
		return BirthDate;
	}
	public void setBirthDate(Date birthDate) {
		BirthDate = birthDate;
	}
	
}
