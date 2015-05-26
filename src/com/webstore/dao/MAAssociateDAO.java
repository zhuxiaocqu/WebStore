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
import com.webstore.bean.subobject.MAAssociate;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.utils.DBManager;

public class MAAssociateDAO implements BasicDAO {
	public static MAAssociateDAO instance = new MAAssociateDAO();

	public static MAAssociateDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from MAAssociate where MANAGERID=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((MAAssociate)object).getManagerGroup().getTypeID());
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
		MAAssociate base = (MAAssociate) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into MAAssociate values(seq_maassociate.nextval,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, base.getAuthority().getTypeID());

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
			String sql = "select * from MAAssociate where MANAGERID = ?";
			PreparedStatement pstm;
			MAAssociate base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new MAAssociate();
					
					ManagerGroup ma=new ManagerGroup();
					ma.setTypeID(rs.getInt(1));
					base.setManagerGroup(ma);
					
					Authority au=new Authority();
					au.setTypeID(rs.getInt(2));
					base.setAuthority(au);
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
			String sql = "select * from MAAssociate";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					MAAssociate base = new MAAssociate();
					
					ManagerGroup ma=new ManagerGroup();
					ma.setTypeID(rs.getInt(1));
					base.setManagerGroup(ma);
					
					Authority au=new Authority();
					au.setTypeID(rs.getInt(2));
					base.setAuthority(au);
					
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
			String sqlUpdate = "update MAAssociate set AUTHORID=? where MANAGERID=?";
			int lines = 0;
			try {
				MAAssociate base = (MAAssociate) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				pstm.setInt(1, base.getAuthority().getTypeID());
				pstm.setInt(2, base.getManagerGroup().getTypeID());
				

				lines = pstm.executeUpdate();
				 System.out.println("影响： " + lines);

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
