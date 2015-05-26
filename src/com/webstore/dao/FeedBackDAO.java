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
import com.webstore.bean.subobject.FeedBack;
import com.webstore.bean.subobject.OrderProduct;
import com.webstore.utils.DBManager;

public class FeedBackDAO implements BasicDAO {
	public static FeedBackDAO instance = new FeedBackDAO();

	public static FeedBackDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from FeedBack where orderid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((FeedBack)object).getOrder().getOrderID());
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
		FeedBack authority = (FeedBack) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into FeedBack values(seq_feedback.nextval,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, authority.getEvaluateTime());
				pstm.setString(2, authority.getEvaluateContent());
				pstm.setInt(3, authority.getFeedBackLevel());

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
			String sql = "select * from FeedBack where orderid = ?";
			PreparedStatement pstm;
			FeedBack base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new FeedBack();
					OrderProduct order=new OrderProduct();
					order.setOrderID(rs.getInt(1));
					base.setOrder(order);
					base.setEvaluateTime(rs.getString(2));
					base.setEvaluateContent(rs.getString(3));
					base.setFeedBackLevel(rs.getInt(4));
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

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from FeedBack";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					FeedBack base = new FeedBack();
					OrderProduct order=new OrderProduct();
					order.setOrderID(rs.getInt(1));
					base.setOrder(order);
					base.setEvaluateTime(rs.getString(2));
					base.setEvaluateContent(rs.getString(3));
					base.setFeedBackLevel(rs.getInt(4));
					
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
			String sqlUpdate = "update FeedBack set EVALUATETIME=?,EVALUATECONTENT=?,FEEDBACKLEVEL=? where ORDERID=?";
			int lines = 0;
			try {
				FeedBack author = (FeedBack) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, author.getEvaluateTime());
				pstm.setString(2, author.getEvaluateContent());
				pstm.setInt(3, author.getFeedBackLevel());
				pstm.setInt(4, author.getOrder().getOrderID());

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
