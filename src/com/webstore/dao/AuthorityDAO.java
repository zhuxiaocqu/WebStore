package com.webstore.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.StyleContext.SmallAttributeSet;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Deliver;
import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.FeedBack;
import com.webstore.bean.subobject.MAAssociate;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.bean.subobject.OrderProduct;
import com.webstore.bean.subobject.Producer;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.ProductBigType;
import com.webstore.bean.subobject.ProductDetailType;
import com.webstore.bean.subobject.ProductSmallType;
import com.webstore.bean.subobject.Rest;
import com.webstore.bean.subobject.Sale;
import com.webstore.bean.subobject.StoreIn;
import com.webstore.bean.subobject.UserList;
import com.webstore.bean.subobject.UserType;
import com.webstore.utils.DBManager;

public class AuthorityDAO implements BasicDAO {

	public static AuthorityDAO instance = new AuthorityDAO();
	
	public static AuthorityDAO getInstance() {
		return instance;
	}
	
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from Authority where authorid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((Authority)object).getTypeID());
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

	public static void main(String[] args) {
		UserType base=new UserType();
		base.setTypeID(6);
		base.setTypeName("1测试");
		
//		UserTypeDAO.getInstance().insert(base);  //测试插入/
		
//		UserTypeDAO.getInstance().update(base);
//		
//		UserType bb=(UserType) UserTypeDAO.getInstance().query(3);//测试根据ID检索
//		System.out.println("id为3："+bb.getTypeName());
//		List<Object> list = UserTypeDAO.getInstance().query("黄金会员");//测试根据str检索
////		List<Object> list = UserTypeDAO.getInstance().queryAll();//测试检索全部
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println("----------");
//			System.out.println(((UserType) list.get(i)).getTypeName());
//			System.out.println(((UserType) list.get(i)).getTypeID());
////			System.out.println(((ManagerGroup) list.get(i)).getAuthority().getTypeName());
//		}
		
		UserTypeDAO.getInstance().delete(base);  //测试删除
	}

	public boolean insert(Object object) {
		// TODO Auto-generated method stub
		Authority authority = (Authority) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Authority values(seq_authority.nextval,?,?)";

			try {
				int i=-1;
				PreparedStatement pstm = con.prepareStatement(sql);
//				pstm.setInt(1-i, authority.getTypeID());
				pstm.setString(2+i, authority.getTypeName());
				pstm.setString(3+i, authority.getPageName());

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
			String sqlUpdate = "update Authority set authorname=?,pagename=? where authorid=?";
			int lines = 0;
			try {
				Authority author = (Authority) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, author.getTypeName());
				pstm.setString(2, author.getPageName());
				pstm.setInt(3, author.getTypeID());

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
			String sql = "select * from Authority where authorid = ?";
			PreparedStatement pstm;
			Authority au = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					au = new Authority();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
					au.setPageName(rs.getString(3));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return au;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> auList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Authority where pagename = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Authority au = new Authority();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
					au.setPageName(rs.getString(3));
					auList.add(au);
				}
				if (auList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return auList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> auList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Authority";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Authority au = new Authority();
					au.setTypeID(rs.getInt(1));
					au.setTypeName(rs.getString(2));
					au.setPageName(rs.getString(3));
					auList.add(au);
				}
				if (auList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return auList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

}
