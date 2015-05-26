package com.webstore.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.bean.subobject.StoreIn;
import com.webstore.utils.DBManager;

public class StoreInDAO implements BasicDAO {

	public static StoreInDAO instance = new StoreInDAO();

	public static StoreInDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from StoreIn where Storeid=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);

				pstm.setInt(1, ((StoreIn) object).getStoreID());
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
		StoreIn store = (StoreIn) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into StoreIn values(seq_storein.nextval,?,?,?,?,?,?)";

			try {

				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, (String) store.getStoreTime());
				pstm.setInt(2, store.getEmployee().getUserID());
				pstm.setInt(3, store.getProduct().getProductID());
				pstm.setFloat(4, store.getBuyInPrice());
				pstm.setInt(5, store.getStoreCount());
				pstm.setInt(6, store.getBase().getID());

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

	/**
	 * 使用库房id和商品id一起作为唯一性标志来检索入库数量
	 * @param baseId
	 * @param productId
	 * @return
	 */

	public int queryCount(int baseId,int productId) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		int count=0;
		if (con != null) {
			String sql = "select storecount from store where baseId=? and productId=?";
			PreparedStatement pstm;
			StoreIn storeIn=new StoreIn();
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, baseId);
				pstm.setInt(2, productId);
				
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					
					count=rs.getInt(1);
				} else
					return 0;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return count;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return 0;
		}
	}

	public Object query(int id) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from StoreIn where Storeid = ?";
			PreparedStatement pstm;
			StoreIn st = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {

					st = new StoreIn();
					st.setStoreID(rs.getInt(1));
					st.setStoreTime((String) rs.getString(2));
					Employee em = new Employee();
					em.setUserID(rs.getInt(3));
					Product p = new Product();
					p.setProductID(rs.getInt(4));
					st.setProduct(p);
					st.setBuyInPrice(rs.getFloat(5));
					st.setStoreCount(rs.getInt(6));
					Base base = new Base();
					base.setID(rs.getInt(7));
					st.setBase(base);
					
					st.setEmployee(em);
					

				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return st;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
//		List<Object> storeList = new ArrayList<Object>();
//		Connection con = DBManager.connectDB();
//
//		if (con != null) {
//			String sql = "select * from Authority where pagename = ?";
//			PreparedStatement pstm;
//			try {
//				pstm = con.prepareStatement(sql);
//				pstm.setString(1, str);
//				ResultSet rs = pstm.executeQuery();
//				while (rs != null && rs.next()) {
//					StoreIn st = new StoreIn();
//					st = new StoreIn();
//					st.setStoreID(rs.getInt(1));
//					st.setStoreTime((String) rs.getString(2));
//					st.setBuyInPrice(rs.getFloat(3));
//					st.setStoreCount(rs.getInt(4));
//					Base base = new Base();
//					base.setID(rs.getInt(5));
//					st.setBase(base);
//					Employee em = new Employee();
//					em.setUserID(rs.getInt(6));
//					st.setEmployee(em);
//					Product p = new Product();
//					p.setProductID(rs.getInt(7));
//					st.setProduct(p);
//
//					storeList.add(st);
//				}
//				if (storeList.isEmpty())
//					return null;
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			DBManager.closeDB(con);
//			return storeList;
//		} else {
//			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
//		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> storeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from StoreIn";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					StoreIn st = new StoreIn();
					st.setStoreID(rs.getInt(1));
					st.setStoreTime((String) rs.getString(2));
					Employee em = new Employee();
					em.setUserID(rs.getInt(3));
					Product p = new Product();
					p.setProductID(rs.getInt(4));
					st.setProduct(p);
					st.setBuyInPrice(rs.getFloat(5));
					st.setStoreCount(rs.getInt(6));
					Base base = new Base();
					base.setID(rs.getInt(7));
					st.setBase(base);
					
					storeList.add(st);
				}
				if (storeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return storeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update StoreIn set StoreTime  =?,storeprice =? ,StoreCount =?,BaseID=?,EmployeeID =?,ProductID=? where StoreID=?";
			int lines = 0;
			try {
				StoreIn store = (StoreIn) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, (String) store.getStoreTime());
				pstm.setFloat(2, store.getBuyInPrice());
				pstm.setInt(3, store.getStoreCount());
				pstm.setInt(4, store.getBase().getID());
				pstm.setInt(5, store.getEmployee().getUserID());
				pstm.setInt(6, store.getProduct().getProductID());
				pstm.setInt(7, store.getStoreID());

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
