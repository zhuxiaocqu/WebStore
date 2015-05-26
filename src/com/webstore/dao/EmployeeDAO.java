package com.webstore.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.bean.subobject.Product;
import com.webstore.utils.DBManager;

public class EmployeeDAO implements BasicDAO {
	public static EmployeeDAO instance = new EmployeeDAO();

	public static EmployeeDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from Employee where EMPLOYEEID=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((Employee)object).getUserID());
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

	public static List<Employee> find(int page) {

		List<Employee> list = new ArrayList<Employee>();
		Connection con = DBManager.connectDB();
		EmployeeDAO pd=new EmployeeDAO();
		//List<Product> productList=pd.queryAll();
		
		String sql = "SELECT EmployeeId ,realname,account,sex,phonenumber from (select a.*, rownum rn from (select * from Employee) a where rownum <= ?)where rn >= ? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, Employee.PAGE_SIZE);
			ps.setInt(2, (page-1)*Employee.PAGE_SIZE);
			

			ResultSet rs = ps.executeQuery();
//			System.out.println(rs.next());

			while (rs.next()) {
				Employee e = new Employee();
//				p.setProductID(rs.getInt(1));
//				System.out.println(rs.getInt(1));
//				p.setProductName(rs.getString(2));
//				p.setTradeMark(rs.getString(3));
//				p.setMarketPrice(rs.getFloat(4));
//				p.setDiscount(rs.getFloat(5));
//				list.add(p);
				e.setUserID(rs.getInt(1));
				e.setRealName(rs.getString(2));
				e.setAccount(rs.getString(3));
				e.setSex(rs.getString(4));
				e.setPhoneNumber(rs.getString(5));
				list.add(e);

			}
			con.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(list==null||list.size()<=0)
		{
			System.out.print("sql语句有错");
		}else{
			System.out.print("sql对的");
		}
		return list;

	}
	
	public int findCount() {
		int count = 0;
		Connection con = DBManager.connectDB();
		String sql = "select count(*) from Employee";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt(1);
			}
			con.close();

			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return count;
	}
	
	public boolean insert(Object object) {
		// TODO Auto-generated method stub
		Employee base = (Employee) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Employee values(seq_employee.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, base.getAccount());
				pstm.setString(2, base.getPassWord());
				pstm.setString(3, base.getRealName());
				pstm.setString(4, base.getSex());
				pstm.setInt(5, base.getAge());
				pstm.setString(6, base.getPhoneNumber());
				pstm.setString(7, base.getAddress());
				pstm.setDate(8, (Date) base.getBirthDate());
				pstm.setString(9, base.getEMail());
				pstm.setInt(10, base.getManagerGroup().getTypeID());
				pstm.setString(11, base.getAboutMe());
				pstm.setString(12, base.getInterest());
				pstm.setString(13, base.getImageURL());
				

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
			String sql = "select * from Employee where Employeeid = ?";
			PreparedStatement pstm;
			Employee base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new Employee();
					base.setUserID(rs.getInt(1));
					base.setAccount(rs.getString(2));
					base.setPassWord(rs.getString(3));
					base.setRealName(rs.getString(4));
					base.setSex(rs.getString(5));
					base.setAge(rs.getInt(6));
					base.setPhoneNumber(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setBirthDate(rs.getDate(9));
					base.setEMail(rs.getString(10));
					ManagerGroup mag=new ManagerGroup();
					mag.setTypeID(rs.getInt(11));
					base.setManagerGroup(mag);
					base.setAboutMe(rs.getString(12));
					base.setInterest(rs.getString(13));
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

	public Object querybyaccount(String account) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Employee where account = ?";
			PreparedStatement pstm;
			Employee base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, account);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new Employee();
					base.setUserID(rs.getInt(1));
					base.setAccount(rs.getString(2));
					base.setPassWord(rs.getString(3));
					base.setRealName(rs.getString(4));
					base.setSex(rs.getString(5));
					base.setAge(rs.getInt(6));
					base.setPhoneNumber(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setBirthDate(rs.getDate(9));
					base.setEMail(rs.getString(10));
					ManagerGroup mag=new ManagerGroup();
					mag.setTypeID(rs.getInt(11));
					base.setManagerGroup(mag);
					base.setAboutMe(rs.getString(12));
					base.setInterest(rs.getString(13));
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
	
	/**
	 * 根据Employee账号进行检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Employee where account = ?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Employee base = new Employee();
					base.setUserID(rs.getInt(1));
					base.setAccount(rs.getString(2));
					base.setPassWord(rs.getString(3));
					base.setRealName(rs.getString(4));
					base.setSex(rs.getString(5));
					base.setAge(rs.getInt(6));
					base.setPhoneNumber(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setBirthDate(rs.getDate(9));
					base.setEMail(rs.getString(10));
					ManagerGroup managerGroup=new ManagerGroup();
					managerGroup.setTypeID(rs.getInt(11));
					base.setManagerGroup(managerGroup);
					base.setAboutMe(rs.getString(12));
					base.setInterest(rs.getString(13));
					
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

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Employee";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Employee base = new Employee();
					base.setUserID(rs.getInt(1));
					base.setAccount(rs.getString(2));
					base.setPassWord(rs.getString(3));
					base.setRealName(rs.getString(4));
					base.setSex(rs.getString(5));
					base.setAge(rs.getInt(6));
					base.setPhoneNumber(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setBirthDate(rs.getDate(9));
					base.setEMail(rs.getString(10));
					ManagerGroup managerGroup=new ManagerGroup();
					managerGroup.setTypeID(rs.getInt(11));
					base.setManagerGroup(managerGroup);
					base.setAboutMe(rs.getString(12));
					base.setInterest(rs.getString(13));
					base.setImageURL(rs.getString(14));
					
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
			String sqlUpdate = "update Employee set ACCOUNT=?,PASSWORD=?,REALNAME=?,SEX=?,AGE=?,PHONENUMBER=?,ADDRESS=?,BIRTHDATE=?,EMAIL=?,MANAGERID=?,ABOUTME=?,INTEREST=?,EMPLOYEEIMAGEURL=? where EMPLOYEEID=?";
			int lines = 0;
			try {
				Employee base = (Employee) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setString(1, base.getAccount());
				pstm.setString(2, base.getPassWord());
				pstm.setString(3, base.getRealName());
				pstm.setString(4, base.getSex());
				pstm.setInt(5, base.getAge());
				pstm.setString(6, base.getPhoneNumber());
				pstm.setString(7, base.getAddress());
				pstm.setDate(8, (Date) base.getBirthDate());
				pstm.setString(9, base.getEMail());
				pstm.setInt(10, base.getManagerGroup().getTypeID());
				pstm.setString(11, base.getAboutMe());
				pstm.setString(12, base.getInterest());
				pstm.setString(13, base.getImageURL());
				pstm.setInt(14, base.getUserID());
				

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
	public boolean updatePassword(String account,String password) {
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Employee set PASSWORD=? where account=?";
			int lines = 0;
			try {
				Employee em=new Employee();
				

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1,password );
				pstm.setString(2,account );

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
