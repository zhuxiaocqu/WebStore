package com.webstore.servlet.back.employeemanager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webstore.bean.subobject.Employee;
import com.webstore.dao.EmployeeDAO;

public class ChangePasswordServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ChangePasswordServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.print("success");
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession(); 
		//把某一对象置于session范围内 
		String account=(String)session.getAttribute("newAccount");
		String password = request.getParameter("newPass");

		
		EmployeeDAO dao = new EmployeeDAO();
		
		boolean change= dao.updatePassword(account, password);
		if(change==false)
		{
			// 跳转主界面
			request.getRequestDispatcher("/web/key_change.jsp").forward(request,
					response);
		}
		else{
			// 跳转主界面
			request.getRequestDispatcher("/web/main.jsp").forward(request,
					response);
			
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
