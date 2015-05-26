package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.utils.DBManager;

public class RestDAO implements BasicDAO {

	public static RestDAO instance = new RestDAO();

	public static RestDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from Rest where baseId=? and productId=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((Rest) object).getBase().getID());
				pstm.setInt(2, ((Rest) object).getProduct().getProductID());
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
		Rest rest = (Rest) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {

			String sql = "insert into Rest values(seq_rest.nextval,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, rest.getProduct().getProductID());
				pstm.setInt(2, rest.getCout());

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

	/**
	 * 没有实现此方法，固定返回null
	 */
	public Object query(int id) {
		// TODO Auto-generated method stub

		//		
		// Connection con = DBManager.connectDB();
		//
		// if (con != null) {
		// String sql =
		// "select r.count  from rest r where r.productid= ? and r.baseid=?";
		// PreparedStatement pstm;
		// Rest rest = new Rest();
		// //List<Rest> list = new ArrayList<Rest>();
		// try {
		// pstm = con.prepareStatement(sql);
		// pstm.setInt(1, id);
		//				
		// ResultSet rs = pstm.executeQuery();
		// if (rs != null && rs.next()) {
		//					 
		// rest.setCout(rs.getInt(1));
		//					
		// Base base=new Base();
		// base.setID(rs.getInt(2));
		// rest.setBase(base);
		//					
		// } else
		// return null;
		//
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBManager.closeDB(con);
		// return rest;
		// } else {
		// System.out.println("JDBC 连接数据库失败：connection为null");
		return null;
		// }

	}

	/**
	 * 使用库房id和商品id一起作为唯一性标志来检索
	 * 
	 * @param baseId
	 * @param productId
	 * @return
	 */
	public Object query(int baseId, int productId) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Rest where baseId=? and productId=?";
			PreparedStatement pstm;
			Rest rest = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, baseId);
				pstm.setInt(2, productId);

				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					rest = new Rest();

					Base base = new Base();
					base.setID(rs.getInt(1));
					rest.setBase(base);

					Product product = new Product();
					product.setProductID(rs.getInt(2));
					rest.setProduct(product);

					rest.setCout(rs.getInt(3));
				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return rest;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 使用库房id和商品id一起作为唯一性标志来检索库存
	 * 
	 * @param baseId
	 * @param productId
	 * @return
	 */

	public int queryCount(int baseId, int productId) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();

		int count = 0;
		if (con != null) {
			String sql = "select count from Rest where baseId=? and productId=?";
			PreparedStatement pstm;
			Rest rest = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, baseId);
				pstm.setInt(2, productId);

				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					rest = new Rest();

					count = rs.getInt(1);
				} else
					return 0;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return count;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return 0;
		}
	}

	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Object> query(String baseId, String productId) {
		// TODO Auto-generated method stub
		List<Object> restList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Rest where baseId=? and productId=?";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, baseId);
				pstm.setString(1, productId);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Rest rest = new Rest();

					Base base = new Base();
					base.setID(rs.getInt(1));
					rest.setBase(base);

					Product product = new Product();
					product.setProductID(rs.getInt(2));
					rest.setProduct(product);

					rest.setCout(rs.getInt(3));
					restList.add(rest);
				}
				if (restList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return restList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> restList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Rest";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Rest rest = new Rest();

					Base base = new Base();
					base.setID(rs.getInt(1));
					rest.setBase(base);

					Product product = new Product();
					product.setProductID(rs.getInt(2));
					rest.setProduct(product);

					rest.setCout(rs.getInt(3));

					restList.add(rest);
				}
				if (restList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return restList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Rest set count=? where baseId=? and productId=?";
			int lines = 0;
			try {
				Rest rest = (Rest) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setInt(1, rest.getCout());
				pstm.setInt(2, rest.getBase().getID());
				pstm.setInt(3, rest.getProduct().getProductID());

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

	/**
	 * 分页查询所有商品的信息 不会了，因为库存和商品
	 * 
	 * @param page
	 *            页数
	 * @return
	 */
	public static List<Product> findGoodNeed(int page, int id) {

		List<Product> listProduct = new ArrayList<Product>();
		Connection con = DBManager.connectDB();
		RestDAO restD = new RestDAO();

		// 商品id，，商品描述，库存数量

		// String
		// sql="select p.productid,p.productname,p.detailinfo,r.count from rest r ,product p where p.productid=r.productid and r.baseid=?";
		String sql = "SELECT ProductId,count from (select a.*, rownum rn from (select * from rest where count=0 and baseid=?) a where rownum <= ?)where rn >= ? ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, Product.PAGE_SIZE);
			ps.setInt(3, (page - 1) * Product.PAGE_SIZE);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product p = new Product();
				Rest r = new Rest();

				p.setProductID(rs.getInt(1));
				r.setCout(rs.getInt(2));
				listProduct.add(p);

			}
			con.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (listProduct == null || listProduct.size() <= 0) {
			System.out.print("sql语句有错rest");
		} else {
			System.out.print("sql对的");
		}
		return listProduct;

	}

	/**
	 * 只为查库存
	 * 
	 * @param page
	 * @param id
	 * @return
	 */
	public static List<Rest> findNeedCount(int page, int id) {

		List<Rest> listRestCount = new ArrayList<Rest>();
		Connection con = DBManager.connectDB();
		RestDAO restD = new RestDAO();

		// 商品id，，商品描述，库存数量

		// String
		// sql="select p.productid,p.productname,p.detailinfo,r.count from rest r ,product p where p.productid=r.productid and r.baseid=?";
		String sql = "SELECT ProductId ,count from (select a.*, rownum rn from (select * from rest where count=0 and baseid=?) a where rownum <= ?)where rn >= ? ";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, Product.PAGE_SIZE);
			ps.setInt(3, (page - 1) * Product.PAGE_SIZE);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product p = new Product();
				Rest r = new Rest();
				Base b = new Base();

				p.setProductID(rs.getInt(1));
				// r.setProduct(p);

				// b.setID(rs.getInt(2));
				// r.setBase(b);

				r.setCout(rs.getInt(2));

				listRestCount.add(r);

			}
			con.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (listRestCount == null || listRestCount.size() <= 0) {
			System.out.print("sql语句有错rest");
		} else {
			System.out.print("sql对的rest");
		}
		return listRestCount;

	}

	/**
	 * 查询总记录数
	 * 
	 * @return 总记录数
	 */
	public int findCount1(int id) {
		int count = 0;
		Connection con = DBManager.connectDB();
		String sql = "select count(*) from rest r where r.count=0 and r.baseid=? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

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

	/**
	 * 分页查询所有商品的信息 不会了，因为库存和商品
	 * 
	 * @param page
	 *            页数
	 * @return
	 */
	public static List<Product> find(int page, int id) {

		List<Product> listProduct = new ArrayList<Product>();
		Connection con = DBManager.connectDB();
		RestDAO restD = new RestDAO();

		// 商品id，，商品描述，库存数量

		// String
		// sql="select p.productid,p.productname,p.detailinfo,r.count from rest r ,product p where p.productid=r.productid and r.baseid=?";
		String sql = "select a.*"
				+ " from "
				+ "(SELECT p.productid,p.productname,p.detailinfo,p.trademark,r.count,rownum "
				+ "    from   product p, rest r "
				+ "where r.productid=p.productid and r.baseid=? and rownum <=? ) a "
				+ "where rownum >=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, Product.PAGE_SIZE);
			ps.setInt(3, (page - 1) * Product.PAGE_SIZE);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product p = new Product();
				Rest r = new Rest();

				p.setProductID(rs.getInt(1));
				System.out.println(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setTradeMark(rs.getString(3));
				p.setDetailInfo(rs.getString(4));

				r.setCout(rs.getInt(5));
				listProduct.add(p);

			}
			con.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (listProduct == null || listProduct.size() <= 0) {
			System.out.print("sql语句有错1111");
		} else {
			System.out.print("sql对的1111");
		}
		return listProduct;

	}

	/**
	 * 只为查库存
	 * 
	 * @param page
	 * @param id
	 * @return
	 */
	public static List<Rest> findCount(int page, int id) {

		List<Rest> listCount = new ArrayList<Rest>();
		Connection con = DBManager.connectDB();
		RestDAO restD = new RestDAO();

		// 商品id，，商品描述，库存数量

		// String
		// sql="select p.productid,p.productname,p.detailinfo,r.count from rest r ,product p where p.productid=r.productid and r.baseid=?";
		String sql = "select a.*"
				+ " from "
				+ "(SELECT p.productid,p.productname,p.detailinfo,p.trademark,r.count,rownum "
				+ "    from   product p, rest r "
				+ "where r.productid=p.productid and r.baseid=? and rownum <=? ) a "
				+ "where rownum >=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, Product.PAGE_SIZE);
			ps.setInt(3, (page - 1) * Product.PAGE_SIZE);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product p = new Product();
				Rest r = new Rest();

				p.setProductID(rs.getInt(1));

				p.setProductName(rs.getString(2));
				p.setTradeMark(rs.getString(3));
				p.setDetailInfo(rs.getString(4));

				r.setCout(rs.getInt(5));

				listCount.add(r);

			}
			con.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (listCount == null || listCount.size() <= 0) {
			System.out.print("sql语句有错2222");
		} else {
			System.out.print("sql对的2222");
		}
		return listCount;

	}

	/**
	 * 查询总记录数
	 * 
	 * @return 总记录数
	 */
	public int findCount(int id) {
		int count = 0;
		Connection con = DBManager.connectDB();
		String sql = "select count(*) from Product p where p.productid in(select r.productid from rest r where r.baseid=?) ";
		// String sql = "select count(*) from  rest  where baseid=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			// Statement st = con.createStatement();
			// ResultSet rs = st.executeQuery(sql);
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
}
