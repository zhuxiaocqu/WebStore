package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Authority;
import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Deliver;
import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.OrderProduct;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.UserList;
import com.webstore.utils.DBManager;

public class OrderProductDAO implements BasicDAO {
	public static OrderProductDAO instance = new OrderProductDAO();

	public static OrderProductDAO getInstance() {
		return instance;
	}
	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con=DBManager.connectDB();
		if(con!=null){
			int lines=0;
			String sql="delete from OrderProduct where orderid=?";
			
			try {
				PreparedStatement pstm=con.prepareStatement(sql);
				pstm.setInt(1, ((OrderProduct)object).getOrderID());
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
		OrderProduct base = (OrderProduct) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into OrderProduct values(seq_orderproduct.nextval,?,?,?,?,?,?,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, base.getDeliver().getID());
				pstm.setInt(2, base.getProduct().getProductID());
				pstm.setInt(3, base.getUser().getUserID());
				pstm.setString(4, base.getOrderState());
				pstm.setString(5, base.getBuyTime());
				pstm.setString(6, base.getPayTime());
				pstm.setString(7, base.getAddress());
				pstm.setInt(8, base.getCount());
				pstm.setInt(9, base.getBase().getID());

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
			String sql = "select * from OrderProduct where ORDERid = ?";
			PreparedStatement pstm;
			OrderProduct base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					base = new OrderProduct();
					base.setOrderID(rs.getInt(1));
					Deliver de=new Deliver();
					de.setID(rs.getInt(2));
					base.setDeliver(de);
					Product pro=new Product();
					pro.setProductID(rs.getInt(3));
					base.setProduct(pro);
					UserList user=new UserList();
					user.setUserID(rs.getInt(4));
					base.setUser(user);
					base.setOrderState(rs.getString(5));
					base.setBuyTime(rs.getString(6));
					base.setPayTime(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setCount(rs.getInt(9));
					Base base1=new Base();
					base1.setID(rs.getInt(10));
					base.setBase(base1);
					
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
	 * 根据订单状态信息来检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> baseList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from OrderProduct where orderstate = ?";
			PreparedStatement pstm;
			OrderProduct base = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					base = new OrderProduct();
					base.setOrderID(rs.getInt(1));
					Deliver de=new Deliver();
					de.setID(rs.getInt(2));
					base.setDeliver(de);
					Product pro=new Product();
					pro.setProductID(rs.getInt(3));
					base.setProduct(pro);
					UserList user=new UserList();
					user.setUserID(rs.getInt(4));
					base.setUser(user);
					base.setOrderState(rs.getString(5));
					base.setBuyTime(rs.getString(6));
					base.setPayTime(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setCount(rs.getInt(9));
					Base base1=new Base();
					base1.setID(rs.getInt(10));
					base.setBase(base1);
					
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
			String sql = "select * from OrderProduct";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					OrderProduct base = new OrderProduct();
					base = new OrderProduct();
					base.setOrderID(rs.getInt(1));
					Deliver de=new Deliver();
					de.setID(rs.getInt(2));
					base.setDeliver(de);
					Product pro=new Product();
					pro.setProductID(rs.getInt(3));
					base.setProduct(pro);
					UserList user=new UserList();
					user.setUserID(rs.getInt(4));
					base.setUser(user);
					base.setOrderState(rs.getString(5));
					base.setBuyTime(rs.getString(6));
					base.setPayTime(rs.getString(7));
					base.setAddress(rs.getString(8));
					base.setCount(rs.getInt(9));
					Base base1=new Base();
					base1.setID(rs.getInt(10));
					base.setBase(base1);
					
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

	public static List<OrderProduct> find(int page) {

		List<OrderProduct> list = new ArrayList<OrderProduct>();
		Connection con = DBManager.connectDB();
		OrderProductDAO od=new OrderProductDAO();
		//List<Product> productList=pd.queryAll();
		
		String sql = "SELECT OrderId ,OrderState,ProductId,BuyTime,PayTime from (select a.*, rownum rn from (select * from OrderProduct) a where rownum <= ?)where rn >= ? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, OrderProduct.PAGE_SIZE);
			ps.setInt(2, (page-1)*OrderProduct.PAGE_SIZE);
			

			ResultSet rs = ps.executeQuery();
//			System.out.println(rs.next());

			while (rs.next()) {
				OrderProduct o = new OrderProduct();
//				p.setProductID(rs.getInt(1));
//				System.out.println(rs.getInt(1));
//				p.setProductName(rs.getString(2));
//				p.setTradeMark(rs.getString(3));
//				p.setMarketPrice(rs.getFloat(4));
//				p.setDiscount(rs.getFloat(5));
//				list.add(p);
				o.setOrderID(rs.getInt(1));
				o.setOrderState(rs.getString(2));
				Product pro = new Product();
				pro.setProductID(rs.getInt(3));
				o.setProduct(pro);
				o.setBuyTime(rs.getString(4));
				o.setPayTime(rs.getString(5));
				
				list.add(o);
				

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

	/**
	 * 查询总记录数
	 * 
	 * @return 总记录数
	 */
	public int findCount() {
		int count = 0;
		Connection con = DBManager.connectDB();
		String sql = "select count(*) from OrderProduct";
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
	
	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update OrderProduct set DELIVERID=?,PRODUCTID=?,USERID=?,ORDERSTATE=?,BUYTIME=?,PAYTIME=?,ADDRESS=?,COUNT=?,BASEID=? where orderid=?";
			int lines = 0;
			int i=-1;
			try {
				OrderProduct base = (OrderProduct) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);
				
				pstm.setInt(2+i, base.getDeliver().getID());
				pstm.setInt(3+i, base.getProduct().getProductID());
				pstm.setInt(4+i, base.getUser().getUserID());
				pstm.setString(5+i, base.getOrderState());
				pstm.setString(6+i, base.getBuyTime());
				pstm.setString(7+i, base.getPayTime());
				pstm.setString(8+i, base.getAddress());
				pstm.setInt(9+i, base.getCount());
				pstm.setInt(10+i, base.getBase().getID());
				pstm.setInt(10, base.getOrderID());

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
