package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.ProductDetailType;
import com.webstore.bean.subobject.ProductSmallType;
import com.webstore.utils.DBManager;

public class ProductDetailTypeDAO implements BasicDAO {

public static ProductDetailTypeDAO instance = new ProductDetailTypeDAO();
	
	public static ProductDetailTypeDAO getInstance() {
		return instance;
	}
	
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from ProductDetailType where detailTypeId=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((ProductDetailType)object).getTypeID());
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
		ProductDetailType detailType = (ProductDetailType) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {
			
			String sql = "insert into ProductDetailType values(seq_productDetailType.nextval,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, detailType.getTypeName());
				pstm.setInt(2, detailType.getSmallType().getTypeID());

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

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update ProductDetailType set DetailTypeName=?,SmallTypeId=? where DetailTypeId=?";
			int lines = 0;
			try {
				ProductDetailType detailType = (ProductDetailType) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, detailType.getTypeName());
				pstm.setInt(2, detailType.getSmallType().getTypeID());
				pstm.setInt(3, detailType.getTypeID());

				lines = pstm.executeUpdate();
				// System.out.println("影响： " + n);

			} catch (SQLException e1) {
				// TODO DetailTypeto-generated catch block
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

	public Object query(int id) {
		// TODO DetailTypeto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductDetailType where DetailTypeId = ?";
			PreparedStatement pstm;
			ProductDetailType detailType = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(1));
					detailType.setTypeName(rs.getString(2));
					
					ProductSmallType SmallType=new ProductSmallType();
					SmallType.setTypeID(rs.getInt(3));
					detailType.setSmallType(SmallType);
				} else
					return null;

			} catch (SQLException e) {
				// TODO DetailTypeto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return detailType;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据详细类别名检索，返回所有该名称代表的商品详细类
	 */
	public List<Object> query(String str) {
		// TODO DetailTypeto-generated method stub
		List<Object> detailTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductDetailType where DetailTypeName = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductDetailType detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(1));
					detailType.setTypeName(rs.getString(2));
					ProductSmallType smallType=new ProductSmallType();
					smallType.setTypeID(rs.getInt(3));
					detailType.setSmallType(smallType);
					detailTypeList.add(detailType);
				}
				if (detailTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO DetailTypeto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return detailTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO DetailTypeto-generated method stub
		List<Object> detailTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductDetailType";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductDetailType detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(1));
					detailType.setTypeName(rs.getString(2));
					ProductSmallType SmallType=new ProductSmallType();
					SmallType.setTypeID(rs.getInt(3));
					detailType.setSmallType(SmallType);
					detailTypeList.add(detailType);
				}
				if (detailTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO DetailTypeto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return detailTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

}
