package com.webstore.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.Deliver;
import com.webstore.utils.DBManager;



public class DeliverDAO implements BasicDAO {

	public static DeliverDAO instance = new DeliverDAO();

	public static DeliverDAO getInstance() {
		return instance;
	}
	
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from Deliver where deliverid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((Deliver)object).getID());
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
		Deliver deliver = (Deliver) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if(con == null)
		return false;
		else{
			
			String sql = "insert into Deliver values(seq_deliver.nextval,?,?,?,?)";
			try{
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, deliver.getName());
				pstm.setString(2, deliver.getPhone());
				pstm.setString(3, deliver.getAddress());
				pstm.setString(4, deliver.getEmail());
				
				int lines = pstm.executeUpdate();
				if(lines != 0)
					result = true;
				
				
			}catch (SQLException e){
				e.printStackTrace();
			}
			return result;
		}
	}

	public Object query(int id) {
		// TODO Auto-generated method stub
		
		Connection con = DBManager.connectDB();
		
		if (con != null){
			String sql = "select * from Deliver where deliverid=?";
			PreparedStatement pstm;
			Deliver de = null;
			
			try{
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null&&rs.next()){
					de = new Deliver();
					de.setID(rs.getInt(1));
					de.setName(rs.getString(2));
					de.setPhone(rs.getString(3));
					de.setAddress(rs.getString(4));
					de.setEmail(rs.getString(5));
				}else
					return null;
				
			}catch (SQLException e){
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return de;
		}else{
			System.out.print("JDBC 连接数据库失败：connection为null");
			return null;
		}
		
		
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> deList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();
		if(con != null){
			String sql = "select * from Deliver where DELIVERIDNAME=?";
			PreparedStatement pstm;
			try{
				pstm=con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while(rs!=null&&rs.next()){
					Deliver de = new Deliver();
					de.setID(rs.getInt(1));
					de.setName(rs.getString(2));
					de.setPhone(rs.getString(3));
					de.setAddress(rs.getString(4));
					de.setEmail(rs.getString(5));
					deList.add(de);
				}if(deList.isEmpty())
					return null;
			}catch(SQLException e){
				e.printStackTrace();
			}DBManager.closeDB(con);
			return deList;
			
		}else{
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
		
		
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> deList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Deliver";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Deliver de = new Deliver();
					de.setID(rs.getInt(1));
					de.setName(rs.getString(2));
					de.setPhone(rs.getString(3));
					de.setAddress(rs.getString(4));
					de.setEmail(rs.getString(5));
					deList.add(de);
				}
				if (deList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return deList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Deliver set DELIVERIDNAME=?,PHONENUMBER=?,COMPANYADDRESS=?,DELIVEREMAIL=? where deliverid=?";
			int lines = 0;
			try {
				Deliver deliver= (Deliver) object;
				
				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, deliver.getName());
				pstm.setString(2, deliver.getPhone());
				pstm.setString(3, deliver.getAddress());
				pstm.setString(4, deliver.getEmail());
				pstm.setInt(5, deliver.getID());

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


