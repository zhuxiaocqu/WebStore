package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.Producer;
import com.webstore.bean.subobject.Product;
import com.webstore.utils.DBManager;

public class ProducerDAO implements BasicDAO {
	public static ProducerDAO instance = new ProducerDAO();

	public static ProducerDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from Producer where producerid=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((Producer) object).getID());
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
		Producer authority = (Producer) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Producer values(seq_producer.nextval,?,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, authority.getName());
				pstm.setString(2, authority.getAddress());
				pstm.setString(3, authority.getPhone());
				pstm.setString(4, authority.getEmail());
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
			String sql = "select * from Producer where producerid = ?";
			PreparedStatement pstm;
			Producer prr = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					prr = new Producer();
					prr.setID(rs.getInt(1));
					prr.setName(rs.getString(2));
					prr.setAddress(rs.getString(3));
					prr.setPhone(rs.getString(4));
					prr.setEmail(rs.getString(5));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return prr;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据生产商名称检索 返回该名称所有的生产商
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> prrList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Producer where producername = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Producer prr = new Producer();
					prr.setID(rs.getInt(1));
					prr.setName(rs.getString(2));
					prr.setAddress(rs.getString(3));
					prr.setPhone(rs.getString(4));
					prr.setEmail(rs.getString(5));
					prrList.add(prr);
				}
				if (prrList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return prrList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> prrList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Producer";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Producer prr = new Producer();
					prr.setID(rs.getInt(1));
					prr.setName(rs.getString(2));
					prr.setAddress(rs.getString(3));
					prr.setPhone(rs.getString(4));
					prr.setEmail(rs.getString(5));
					prrList.add(prr);
				}
				if (prrList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return prrList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Producer set producername=?,produceraddress=?,producerphone=?,produceremail=? where producerid=?";
			int lines = 0;
			try {
				Producer producer = (Producer) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1, producer.getName());
				pstm.setString(2, producer.getAddress());
				pstm.setString(3, producer.getPhone());
				pstm.setString(4, producer.getEmail());
				pstm.setInt(5, producer.getID());

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
