package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Employee;
import com.webstore.utils.DBManager;

public class BaseDAO implements BasicDAO {

	public static BaseDAO instance = new BaseDAO();

	public static BaseDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from Base where baseid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((Base)object).getID());
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
		Base base = (Base) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Base values(seq_base.nextval,?,?,?,?,?)";

			try {
				int i=1;
				PreparedStatement pstm = con.prepareStatement(sql);
//				pstm.setInt(1, base.getID());
				pstm.setString(2-i, base.getName());
				pstm.setString(3-i, base.getAddress());
				pstm.setInt(4-i, base.getEmployee().getUserID());
				pstm.setString(5-i, base.getPhone());
				pstm.setString(6-i, base.getEmail());

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
			String sql = "select * from base where baseid = ?";
			PreparedStatement pstm;
			Base base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new Base();
					base.setID(rs.getInt(1));
					base.setName(rs.getString(2));
					base.setAddress(rs.getString(3));
					Employee em=new Employee();
					em.setUserID(rs.getInt(4));
					base.setEmployee(em);
					base.setPhone(rs.getString(5));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return base;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}
	/**
	 * 根据库房名检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Base where basename = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Base base = new Base();
					base.setID(rs.getInt(1));
					base.setName(rs.getString(2));
					base.setAddress(rs.getString(3));
					Employee em=new Employee();
					em.setUserID(rs.getInt(4));
					base.setEmployee(em);
					base.setPhone(rs.getString(5));
					baseList.add(base);
				}
				if (baseList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return baseList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from base";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Base base = new Base();
					base.setID(rs.getInt(1));
					base.setName(rs.getString(2));
					base.setAddress(rs.getString(3));
					Employee employee=new Employee();
					employee.setUserID(rs.getInt(4));
					base.setEmployee(employee);
					base.setPhone(rs.getString(5));
					baseList.add(base);
				}
				if (baseList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return baseList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Base set basename=?,baseaddress=?,employeeid=?,phonenumber=? where baseid=?";
			int lines = 0;
			try {
				Base base = (Base) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, base.getName());
				pstm.setString(2, base.getAddress());
				pstm.setInt(3, base.getEmployee().getUserID());
				pstm.setString(4, base.getPhone());
				pstm.setInt(5, base.getID());

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
