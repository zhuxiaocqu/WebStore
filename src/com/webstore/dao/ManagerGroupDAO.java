package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.utils.DBManager;

public class ManagerGroupDAO implements BasicDAO {
	public static ManagerGroupDAO instance = new ManagerGroupDAO();
	
	public static ManagerGroupDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from ManagerGroup where managerid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((ManagerGroup)object).getTypeID());
				lines=pstm.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(lines==0){
				return false;
			}else
				return true;
		}else
			return false;
	}

	public boolean insert(Object object) {
		// TODO Auto-generated method stub
		ManagerGroup authority = (ManagerGroup) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into ManagerGroup values(seq_manager.nextval,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, authority.getTypeName());

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
			String sql = "select * from ManagerGroup where managerid = ?";
			PreparedStatement pstm;
			ManagerGroup au = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					au = new ManagerGroup();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return au;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> auList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ManagerGroup where managername = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ManagerGroup au = new ManagerGroup();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
					auList.add(au);
				}
				if (auList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return auList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> auList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ManagerGroup";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ManagerGroup au = new ManagerGroup();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
					auList.add(au);
				}
				if (auList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return auList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update ManagerGroup set managername=? where managerid=?";
			int lines = 0;
			try {
				ManagerGroup author = (ManagerGroup) object;

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
