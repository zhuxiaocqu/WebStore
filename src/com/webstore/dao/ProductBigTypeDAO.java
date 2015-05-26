package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.ProductBigType;
import com.webstore.utils.DBManager;

public class ProductBigTypeDAO implements BasicDAO {

public static ProductBigTypeDAO instance = new ProductBigTypeDAO();
	
	public static ProductBigTypeDAO getInstance() {
		return instance;
	}
	
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from ProductBigType where BigTypeId=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((ProductBigType)object).getTypeID());
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
		ProductBigType bigType = (ProductBigType) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {
//seq_sale.nextval
			String sql = "insert into ProductBigType values(seq_ProductBigType.nextval,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, bigType.getTypeName());

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
			String sqlUpdate = "update ProductBigType set BigTypeName=? where BigTypeId=?";
			int lines = 0;
			try {
				ProductBigType bigType = (ProductBigType) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, bigType.getTypeName());
				pstm.setInt(2, bigType.getTypeID());

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

	public Object query(int id) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductBigType where BigTypeId = ?";
			PreparedStatement pstm;
			ProductBigType bigType = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(1));
					bigType.setTypeName(rs.getString(2));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return bigType;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据大类的名称检索，返回所有该名称的大类
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> bigTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductBigType where BigTypeName = ?";//根据大类型的名称查询
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(1));
					bigType.setTypeName(rs.getString(2));
					bigTypeList.add(bigType);
				}
				if (bigTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return bigTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> bigTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductBigType";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(1));
					bigType.setTypeName(rs.getString(2));
					bigTypeList.add(bigType);
				}
				if (bigTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return bigTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

}
