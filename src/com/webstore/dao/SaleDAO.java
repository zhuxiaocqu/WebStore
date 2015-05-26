package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Sale;
import com.webstore.utils.DBManager;

public class SaleDAO implements BasicDAO {
public static SaleDAO instance = new SaleDAO();
	
	public static SaleDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from Sale where saleId=?";//>>>>>

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((Sale) object).getSaleID());//>>>>>>>
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
		Sale sale = (Sale) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Sale values(seq_sale.nextval,?,?,?,?)";//>>>>

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
//				pstm.setInt(1, sale.getSaleID());
				pstm.setInt(1, sale.getProduct().getProductID());
				pstm.setString(2, sale.getSaleTime());
				pstm.setInt(3, sale.getSaleCount());
				pstm.setInt(4, sale.getBase().getID());

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
			String sql = "select * from Sale where saleId = ?";
			PreparedStatement pstm;
			Sale sale = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					sale = new Sale();
					sale.setSaleID(rs.getInt(1));
					
					Product product=new Product();
					product.setProductID(rs.getInt(2));
					sale.setProduct(product);
					
					sale.setSaleTime(rs.getString(3));
					sale.setSaleCount(rs.getInt(4));

					Base base=new Base();
					base.setID(rs.getInt(5));
					sale.setBase(base);
					

				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return sale;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据销售时间检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> saleList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Sale where saleTime = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Sale sale = new Sale();
					sale.setSaleID(rs.getInt(1));
					
					Product product=new Product();
					product.setProductID(rs.getInt(2));
					sale.setProduct(product);
					
					sale.setSaleTime(rs.getString(3));
					sale.setSaleCount(rs.getInt(4));

					Base base=new Base();
					base.setID(rs.getInt(5));
					sale.setBase(base);
					
					saleList.add(sale);
				}
				if (saleList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return saleList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> saleList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Sale";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Sale sale = new Sale();
					sale.setSaleID(rs.getInt(1));
					
					Product product=new Product();
					product.setProductID(rs.getInt(2));
					sale.setProduct(product);
					
					sale.setSaleTime(rs.getString(3));
					sale.setSaleCount(rs.getInt(4));

					Base base=new Base();
					base.setID(rs.getInt(5));
					sale.setBase(base);
					
					saleList.add(sale);
				}
				if (saleList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return saleList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}



	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Sale set productId=?,saleTime=?,saleCount=?,baseId=? where saleId=?";
			int lines = 0;
			try {
				Sale sale = (Sale) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setInt(1,sale.getProduct().getProductID());
				pstm.setString(2, sale.getSaleTime());
				pstm.setInt(3, sale.getSaleCount());
				pstm.setInt(4, sale.getBase().getID());
				pstm.setInt(5, sale.getSaleID());

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
