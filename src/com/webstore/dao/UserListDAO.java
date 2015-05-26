package com.webstore.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.UserList;
import com.webstore.bean.subobject.UserType;
import com.webstore.utils.DBManager;

public class UserListDAO implements BasicDAO {

	public static UserListDAO instance = new UserListDAO();

	public static UserListDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from UserList where Userid=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((UserList) object).getUserID());
				lines = pstm.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (lines == 0) {
				return false;
			} else
				return true;
		} else
			return false;
	}

	public boolean insert(Object object) {
		// TODO Auto-generated method stub

		UserList user = (UserList) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into UserList values(seq_userlist.nextval,?,?,?,?,?,?,?,?,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, user.getAccount());
				pstm.setString(2, user.getPassWord());
				pstm.setString(3, user.getRealName());
				pstm.setString(4, user.getSex());
				pstm.setInt(5, user.getAge());
				pstm.setString(6, user.getPhoneNumber());
				pstm.setString(7, user.getAddress());
				pstm.setDate(8, (Date) user.getBirthDate());
				pstm.setString(9, user.getEMail());
				pstm.setInt(10, user.getUserType().getTypeID());
				pstm.setString(11, user.getImageURL());

				int lines = pstm.executeUpdate();
				if (lines != 0)
					result = true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return result;
		}
	}

	public Object query(int id) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from UserList where UserID = ?";
			PreparedStatement pstm;
			UserList user = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					user = new UserList();
					user.setUserID(rs.getInt(1));
					user.setAccount(rs.getString(2));
					user.setPassWord(rs.getString(3));
					user.setRealName(rs.getString(4));
					user.setSex(rs.getString(5));
					user.setAge(rs.getInt(6));
					user.setPhoneNumber(rs.getString(7));
					user.setAddress(rs.getString(8));
					user.setBirthDate(rs.getDate(9));
					user.setEMail(rs.getString(10));
					UserType user1=new UserType();
					user1.setTypeID(rs.getInt(11));
					user.setUserType(user1);
					user.setImageURL(rs.getString(12));

				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return user;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> userList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Authority where account = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					UserList user = new UserList();
					user.setUserID(rs.getInt(1));
					user.setAccount(rs.getString(2));
					user.setPassWord(rs.getString(3));
					user.setRealName(rs.getString(4));
					user.setSex(rs.getString(5));
					user.setAge(rs.getInt(6));
					user.setPhoneNumber(rs.getString(7));
					user.setAccount(rs.getString(8));
					user.setBirthDate(rs.getDate(9));
					user.setEMail(rs.getString(10));
					user.setUserType((UserType) rs.getObject(11));
					userList.add(user);
				}
				if (userList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return userList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> userList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from userList";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					UserList user = new UserList();
					user.setUserID(rs.getInt(1));
					user.setAccount(rs.getString(2));
					user.setPassWord(rs.getString(3));
					user.setRealName(rs.getString(4));
					user.setSex(rs.getString(5));
					user.setAge(rs.getInt(6));
					user.setPhoneNumber(rs.getString(7));
					user.setAddress(rs.getString(8));
					user.setBirthDate(rs.getDate(9));
					user.setEMail(rs.getString(10));
					UserType user1=new UserType();
					user1.setTypeID(rs.getInt(11));
					user.setUserType(user1);
					user.setImageURL(rs.getString(12));
					
					userList.add(user);
				}
				if (userList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return userList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update UserList set account=?,PassWord=?,RealName =?,Sex =?,age=?,PhoneNumber =?,Address =?,BirthDate =?,"
					+ "EMail=?,UserTypeID=?,userimageurl=? where userId=?";
			int lines = 0;
			try {
				UserList user = (UserList) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1, user.getAccount());
				pstm.setString(2, user.getPassWord());
				pstm.setString(3, user.getRealName());
				pstm.setString(4, user.getSex());
				pstm.setInt(5, user.getAge());
				pstm.setString(6, user.getPhoneNumber());
				pstm.setString(7, user.getAddress());
				pstm.setDate(8, (Date) user.getBirthDate());
				pstm.setString(9, user.getEMail());
				pstm.setInt(10, user.getUserType().getTypeID());
				pstm.setString(11, user.getImageURL());
				pstm.setInt(12, user.getUserID());
				
				lines = pstm.executeUpdate();
				// System.out.println("影响： " + n);

			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			DBManager.closeDB(con);
			if (lines == 0) {
				return false;
			} else
				return true;
		} else {
			return false;
		}
	}

}
