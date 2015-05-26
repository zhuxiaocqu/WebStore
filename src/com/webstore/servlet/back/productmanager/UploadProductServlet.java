package com.webstore.servlet.back.productmanager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Producer;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.ProductBigType;
import com.webstore.bean.subobject.ProductDetailType;
import com.webstore.bean.subobject.ProductSmallType;
import com.webstore.dao.ProductDAO;

public class UploadProductServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UploadProductServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
					String product_id = request.getParameter("product_id");
					int productid = Integer.parseInt(product_id);
					String productname = request.getParameter("product_name");
					String market_price=request.getParameter("market_price");
					float marketprice=Float.parseFloat(market_price);
					String discount_ = request.getParameter("discount");
					float discount = Float.parseFloat(discount_);
					String trademark = request.getParameter("trademark");
					String producer_id = request.getParameter("producer_id");
					int producerid=Integer.parseInt(producer_id);
					String detailinfo=request.getParameter("detailinfo");
//					String product_big_type = request.getParameter("productbigtype");
//					int productbigtype = Integer.parseInt(product_big_type);
					
					ProductBigType big = new ProductBigType();
					big.setTypeID(1);
					ProductSmallType sma= new ProductSmallType();
					sma.setBigType(big);
					sma.setTypeID(1);
					ProductDetailType de= new ProductDetailType();
					de.setSmallType(sma);
					de.setTypeID(1);
					
					Product prt = new Product();
					Producer prr = new Producer();
					prr.setID(1);
					ProductDAO dao = new ProductDAO();
					prt.setProductName(productname);
					prt.setMarketPrice(marketprice);
					prt.setDiscount(discount);
					prt.setTradeMark(trademark);
					prr.setID(producerid);
					prt.setProducer(prr);
					prt.setDetailInfo(detailinfo);
					
					prt.setImageURL("sadas");
					prt.setBigType(big);
					prt.setSmallType(sma);
					prt.setDetailType(de);
					 dao.insert(prt);
					System.out.print("done");
					System.out.print(productid);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
