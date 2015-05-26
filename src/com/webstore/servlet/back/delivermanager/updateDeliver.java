package com.webstore.servlet.back.delivermanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.awt.RepaintArea;

import com.webstore.bean.subobject.Deliver;
import com.webstore.dao.DeliverDAO;

public class updateDeliver extends HttpServlet {

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

		int de =Integer.parseInt(request.getParameter("id"));
		DeliverDAO dao = new DeliverDAO();
		Deliver deliver = (Deliver)dao.query(de);
		request.setAttribute("list", deliver);
		request.getRequestDispatcher("/web/deliver/updateDeliver.jsp").forward(request, response);
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

		Deliver d = new Deliver();
		d.setID(Integer.parseInt(request.getParameter("id")));
		d.setName(request.getParameter("name"));
		d.setPhone(request.getParameter("phone"));
		d.setAddress(request.getParameter("address"));
		d.setEmail(request.getParameter("email"));
		DeliverDAO dao = new DeliverDAO();
		dao.update(d);
		List<Object> list=dao.queryAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/web/deliver/company.jsp").forward(request, response);
	}

}
