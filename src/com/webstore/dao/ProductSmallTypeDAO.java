package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.ProductBigType;
import com.webstore.bean.subobject.ProductSmallType;
import com.webstore.utils.DBManager;

public class ProductSmallTypeDAO implements BasicDAO {

	public static ProductSmallTypeDAO instance = new ProductSmallTypeDAO();

	public static ProductSmallTypeDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from ProductSmallType where smallTypeId=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((ProductSmallType) object).getTypeID());
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
		ProductSmallType productSmallType = (ProductSmallType) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into ProductSmallType values(seq_ProductSmallType.nextval,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, productSmallType.getTypeName());
				pstm.setInt(2, productSmallType.getBigType().getTypeID());

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
			String sql = "select * from ProductSmallType where smallTypeId = ?";
			PreparedStatement pstm;
			ProductSmallType productSmallType = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					productSmallType = new ProductSmallType();
					productSmallType.setTypeID(rs.getInt(1));
					productSmallType.setTypeName(rs.getString(2));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(3));
					productSmallType.setBigType(bigType);
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return productSmallType;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据类别名检索，返回该类名所代表的所有商品详细类
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> smallTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductSmallType where SmallTypeName = ?";// 根据小类型名查询
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductSmallType productSmallType = new ProductSmallType();
					productSmallType.setTypeID(rs.getInt(1));
					productSmallType.setTypeName(rs.getString(2));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(3));
					productSmallType.setBigType(bigType);

					smallTypeList.add(productSmallType);
				}
				if (smallTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return smallTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> smallTypeList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from ProductSmallType";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					ProductSmallType productSmallType = new ProductSmallType();
					productSmallType.setTypeID(rs.getInt(1));
					productSmallType.setTypeName(rs.getString(2));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(3));
					productSmallType.setBigType(bigType);

					smallTypeList.add(productSmallType);
				}
				if (smallTypeList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return smallTypeList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update ProductSmallType set smallTypeName=?,bigTypeId =? where smallTypeId=?";
			int lines = 0;
			try {
				ProductSmallType SmallType = (ProductSmallType) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1, SmallType.getTypeName());
				pstm.setInt(2, SmallType.getBigType().getTypeID());
				pstm.setInt(3, SmallType.getTypeID());

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
