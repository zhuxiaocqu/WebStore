package com.webstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.webstore.bean.subobject.Producer;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.ProductBigType;
import com.webstore.bean.subobject.ProductDetailType;
import com.webstore.bean.subobject.ProductSmallType;
import com.webstore.utils.DBManager;

public class ProductDAO implements BasicDAO {

	public static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from Product where ProductId=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, ((Product) object).getProductID());
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
		Product product = (Product) object;
		boolean result = false;
		Connection con = DBManager.connectDB();
		if (con == null)
			return false;
		else {
			//
			String sql = "insert into Product values(seq_product.nextval,?,?,?,?,?,?,?,?,?,?)";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, product.getProductName());
				pstm.setInt(2, product.getProducer().getID());
				pstm.setString(3, product.getTradeMark());
				pstm.setFloat(4, product.getMarketPrice());
				pstm.setFloat(5, product.getDiscount());
				pstm.setString(6, product.getDetailInfo());
				pstm.setInt(7, product.getBigType().getTypeID());
				pstm.setInt(8, product.getSmallType().getTypeID());
				pstm.setInt(9, product.getDetailType().getTypeID());
				pstm.setString(10, product.getImageURL());

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
	 * 根据商品id更新
	 */
	public boolean update(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Product set TradeMark=?,MarketPrice=?,"
					+ "Discount=?,DetailInfo=?,BigTypeId=?,"
					+ "SmallTypeId=?,DetailTypeId=?,ProductName=?,productimageurl=?,ProducerId=?"
					+ "where ProductId=?";
			int lines = 0;
			try {
				Product product = (Product) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1, product.getTradeMark());
				pstm.setFloat(2, product.getMarketPrice());
				pstm.setFloat(3, product.getDiscount());
				pstm.setString(4, product.getDetailInfo());
				pstm.setInt(5, product.getBigType().getTypeID());
				pstm.setInt(6, product.getSmallType().getTypeID());
				pstm.setInt(7, product.getDetailType().getTypeID());

				// pstm.setInt(5, 2);
				// pstm.setInt(6, 2);
				// pstm.setInt(7, 2);
				pstm.setString(8, product.getProductName());
				// String st="fsdfsd";
				pstm.setString(9, product.getImageURL());
				// pstm.setString(9, st);

				pstm.setInt(10, product.getProducer().getID());
				pstm.setInt(11, product.getProductID());
				// pstm.setInt(11, 1);

				lines = pstm.executeUpdate();
				// System.out.print("done");

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
	 * 根据商品id更新
	 */
	public boolean updateSome(Object object) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			String sqlUpdate = "update Product set TradeMark=?,MarketPrice=?,"
					+ "Discount=?,DetailInfo=?,ProductName=?,productimageurl=?,producerid=?"
					+ "where ProductId=?";
			int lines = 0;
			try {
				Product product = (Product) object;

				PreparedStatement pstm = con.prepareStatement(sqlUpdate);

				pstm.setString(1, product.getTradeMark());
				pstm.setFloat(2, product.getMarketPrice());
				pstm.setFloat(3, product.getDiscount());
				pstm.setString(4, product.getDetailInfo());
			
			
				pstm.setString(5, product.getProductName());
				// String st="fsdfsd";
				pstm.setString(6, product.getImageURL());
				// pstm.setString(9, st);

				pstm.setInt(7, product.getProducer().getID());
				pstm.setInt(8, product.getProductID());
				
				// pstm.setInt(11, 1);

				lines = pstm.executeUpdate();
				// System.out.print("done");

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
			String sql = "select * from Product where ProductId = ?";
			PreparedStatement pstm;
			Product product = null;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
				ResultSet rs = pstm.executeQuery();
				if (rs != null && rs.next()) {
					product = new Product();

					product.setProductID(rs.getInt(1));

					product.setProductName(rs.getString(2));

					Producer producer = new Producer();
					producer.setID(rs.getInt(3));
					product.setProducer(producer);

					product.setTradeMark(rs.getString(4));
					product.setMarketPrice(rs.getFloat(5));
					product.setDiscount(rs.getFloat(6));
					product.setDetailInfo(rs.getString(7));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(8));
					product.setBigType(bigType);

					ProductSmallType smallType = new ProductSmallType();
					smallType.setTypeID(rs.getInt(9));
					product.setSmallType(smallType);

					ProductDetailType detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(10));
					product.setDetailType(detailType);
					product.setImageURL(rs.getString(11));

				} else
					return null;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return product;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 根据商品名称检索
	 */
	public List<Object> query(String str) {
		// TODO Auto-generated method stub
		List<Object> productList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Product where ProductName = ?";// 根据产品名称查询
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				pstm.setString(1, str);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Product product = new Product();

					product.setProductID(rs.getInt(1));

					product.setProductName(rs.getString(2));

					Producer producer = new Producer();
					producer.setID(rs.getInt(3));
					product.setProducer(producer);

					product.setTradeMark(rs.getString(4));
					product.setMarketPrice(rs.getFloat(5));
					product.setDiscount(rs.getFloat(6));
					product.setDetailInfo(rs.getString(7));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(8));
					product.setBigType(bigType);

					ProductSmallType smallType = new ProductSmallType();
					smallType.setTypeID(rs.getInt(9));
					product.setSmallType(smallType);

					ProductDetailType detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(10));
					product.setDetailType(detailType);
					product.setImageURL(rs.getString(11));

					productList.add(product);
				}
				if (productList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return productList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	public List<Object> queryAll() {
		// TODO Auto-generated method stub
		List<Object> productList = new ArrayList<Object>();
		Connection con = DBManager.connectDB();

		if (con != null) {
			String sql = "select * from Product";
			PreparedStatement pstm;
			try {
				pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				while (rs != null && rs.next()) {
					Product product = new Product();

					product.setProductID(rs.getInt(1));

					product.setProductName(rs.getString(2));

					Producer producer = new Producer();
					producer.setID(rs.getInt(3));
					product.setProducer(producer);

					product.setTradeMark(rs.getString(4));
					product.setMarketPrice(rs.getFloat(5));
					product.setDiscount(rs.getFloat(6));
					product.setDetailInfo(rs.getString(7));

					ProductBigType bigType = new ProductBigType();
					bigType.setTypeID(rs.getInt(8));
					product.setBigType(bigType);

					ProductSmallType smallType = new ProductSmallType();
					smallType.setTypeID(rs.getInt(9));
					product.setSmallType(smallType);

					ProductDetailType detailType = new ProductDetailType();
					detailType.setTypeID(rs.getInt(10));
					product.setDetailType(detailType);
					product.setImageURL(rs.getString(11));

					productList.add(product);
				}
				if (productList.isEmpty())
					return null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBManager.closeDB(con);
			return productList;
		} else {
			System.out.println("JDBC 连接数据库失败：connection为null");
			return null;
		}
	}

	/**
	 * 分页查询所有商品的信息
	 * 
	 * @param page
	 *            页数
	 * @return
	 */
	public static List<Product> find(int page) {

		List<Product> list = new ArrayList<Product>();
		Connection con = DBManager.connectDB();
		ProductDAO pd=new ProductDAO();
		//List<Product> productList=pd.queryAll();
		
		String sql = "SELECT ProductId ,ProductName,tradeMark,marketPrice,discount from (select a.*, rownum rn from (select * from Product) a where rownum <= ?)where rn >= ? ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, Product.PAGE_SIZE);
			ps.setInt(2, (page-1)*Product.PAGE_SIZE);
			

			ResultSet rs = ps.executeQuery();
//			System.out.println(rs.next());

			while (rs.next()) {
				Product p = new Product();
				p.setProductID(rs.getInt(1));
				System.out.println(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setTradeMark(rs.getString(3));
				p.setMarketPrice(rs.getFloat(4));
				p.setDiscount(rs.getFloat(5));
				list.add(p);

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
		String sql = "select count(*) from Product";
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
	/**
	 * 根据id删除
	 * @param id
	 * @return
	 */
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		Connection con = DBManager.connectDB();
		if (con != null) {
			int lines = 0;
			String sql = "delete from Product where ProductId=?";

			try {
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setInt(1, id);
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
	
	public static void main(String[] args)
	{
		List<Product> l= ProductDAO.getInstance().find(2);
		System.out.print(l.get(0).getProductName());
		ProductDAO pd=new ProductDAO();
		pd.delete(1);
	}
}
