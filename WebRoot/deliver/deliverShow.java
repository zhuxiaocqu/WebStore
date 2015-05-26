package com.webstore.servlet.back.delivermanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Deliver;
import com.webstore.dao.DeliverDAO;

public class deliverShow extends HttpServlet {

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

		DeliverDAO dao =new DeliverDAO();
		List<Object> list=dao.queryAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/web/deliver/company.jsp").forward(request, response);
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

		DeliverDAO dao = new DeliverDAO();
		Deliver delv = new Deliver();
		delv.setID(Integer.parseInt(request.getParameter("id")));
		delv.setName(request.getParameter("name"));
		delv.setPhone(request.getParameter("phone"));
		delv.setAddress(request.getParameter("address"));
		delv.setEmail(request.getParameter("email"));
		dao.insert(delv);
		DeliverDAO dao1 =new DeliverDAO();
		List<Object> list=dao1.queryAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/web/deliver/company.jsp").forward(request, response);
	}

}
