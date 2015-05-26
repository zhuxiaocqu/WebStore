package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.webstore.bean.subobject.UserType;
import com.webstore.utils.DBManager;

public class UserTypeDAO implements BasicDAO {

	public static UserTypeDAO instance = new UserTypeDAO();

	public static UserTypeDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from UserType where UserTypeID=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((UserType) object).getTypeID());
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

		UserType userType = (UserType) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into UserType values(?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, userType.getTypeID());
				pstm.setString(2, userType.getTypeName());

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
			String sql = "select * from usertype where usertypeid = ?";
			PreparedStatement pstm;
			UserType ut = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					ut = new UserType();
					ut.setTypeID(rs.getInt(1));
					ut.setTypeName(rs.getString(2));

				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return ut;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}
	/**
	 * 根据用户等级名检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> userTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from usertype where UserTypeName = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					UserType ut = new UserType();
					ut.setTypeID(rs.getInt(1));
					ut.setTypeName(rs.getString(2));

					userTypeList.add(ut);
				}
				if (userTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return userTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> userTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from UserType";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					UserType ut = new UserType();
					ut.setTypeID(rs.getInt(1));
					ut.setTypeName(rs.getString(2));
					
					userTypeList.add(ut);
				}
				if (userTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return userTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update UserType set UserTypeName=? where UserTypeID=?";
			int lines = 0;
			try {
				UserType author = (UserType) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, author.getTypeName());
			
				pstm.setInt(2, author.getTypeID());

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
