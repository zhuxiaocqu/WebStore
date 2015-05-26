package com.webstore.servlet.back.ordermanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Base;
import com.webstore.bean.subobject.Deliver;
import com.webstore.bean.subobject.OrderProduct;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.bean.subobject.UserList;
import com.webstore.dao.OrderProductDAO;
import com.webstore.dao.ProductDAO;
import com.webstore.dao.RestDAO;
import com.webstore.dao.StoreInDAO;

public class ShowOrderDetail extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowOrderDetail() {
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

		// 处理乱码
		request.setCharacterEncoding("utf-8");
		// 商品id
		int id = Integer.valueOf(request.getParameter("orderid"));
		int count, storeCount, saleCount;
		OrderProduct op = new OrderProduct();
//		Rest rest = new Rest();
//
//		RestDAO restD = new RestDAO();
//		StoreInDAO storeIn = new StoreInDAO();
		OrderProductDAO opDao = new OrderProductDAO();

		// List<Rest> resList = new ArrayList<Rest>();
//		List countList = new ArrayList();
//		List saleCountList = new ArrayList();
		op = (OrderProduct) opDao.query(id);

//		for (int i = 0; i <= 3; i++) {
//			// rest = (Rest) restD.query(id, i + 1);
//
//			count = restD.queryCount(i + 1, id);
//
//			storeCount = storeIn.queryCount(i + 1, id);
//			saleCount = storeCount - count;
//
//			System.out.print("库存：：：：" + count);
//			System.out.print("入库：：：：" + storeCount);
//
//			if (count == 0) {
//				countList.add(0);
//			} else {
//				countList.add(count);
//			}
//			if (saleCount == 0) {
//				saleCountList.add(0);
//			} else if (saleCount < 0) {
//				saleCountList.add(-1);
//
//			} else {
//				saleCountList.add(storeCount - count);
//			}
//
//		}

//		request.getSession().setAttribute("countList", countList);
//		request.getSession().setAttribute("saleCountList", saleCountList);
		request.getSession().setAttribute("order", op);

		request.getRequestDispatcher("/web/OrderDetail.jsp").forward(request,
				response);
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

		request.setCharacterEncoding("utf-8");
		String order_id = request.getParameter("orderid");
		int orderid = Integer.parseInt(order_id);
		String orderstate = request.getParameter("orderstate");
		String buytime = request.getParameter("buytime");
		String paytime = request.getParameter("paytime");
		String daddress = request.getParameter("daddress");
		String count_ = request.getParameter("count");
		int count = Integer.parseInt(count_);
		String baseid_ = request.getParameter("baseid");
		int baseid = Integer.parseInt(baseid_);
		String productid_ = request.getParameter("productid");
		int productid = Integer.parseInt(productid_);
		String userid_ = request.getParameter("userid");
		int userid = Integer.parseInt(userid_);
		String deliverid_ = request.getParameter("deliverid");
		int deliverid = Integer.parseInt(deliverid_);
		
		OrderProduct op = new OrderProduct();
		OrderProductDAO opd = new OrderProductDAO();
		op.setOrderID(orderid);
		op.setOrderState(orderstate);
		op.setBuyTime(buytime);
		op.setPayTime(paytime);
		op.setAddress(daddress);
		op.setCount(count);
		Base base = new Base();
		base.setID(baseid);
		op.setBase(base);
		Product pro = new Product();
		pro.setProductID(productid);
		op.setProduct(pro);
		UserList user = new UserList();
		user.setUserID(userid);
		op.setUser(user);
		Deliver de = new Deliver();
		de.setID(deliverid);
		op.setDeliver(de);
		
		opd.update(op);
		request.getRequestDispatcher("/web/order.jsp").forward(request,
				response);
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
