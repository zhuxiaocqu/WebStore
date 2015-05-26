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

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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
		// 获取表单提交的账号和密码
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String checkCode = request.getParameter("checkCode");
		
		HttpSession session=request.getSession(); 
		//把某一对象置于session范围内 
		session.setAttribute("newAccount",account); 
		
		
		System.out.print("呵呵1：" + checkCode);
		// HttpSession session = request.getSession(true);
		String randCheckCode = (String) request.getSession().getAttribute(
				"randCheckCode");
		System.out.print("呵呵2：" + randCheckCode);

		// 验证账号和密码的正确性
		EmployeeDAO dao = new EmployeeDAO();
		// 从数据库中根据账号查出学生信息
		Employee em = (Employee) dao.querybyaccount(account);
		// 将用户输入的账号和密码与数据库查出的账号和密码比对
		System.out.print("呵呵hh");
		boolean flag = false;
		if (em != null) {
			if (account.equals(em.getAccount())
					&& password.equals(em.getPassWord())
					&& randCheckCode.equals(checkCode)) {
				// 登陆成功
				flag = true;
				// 在session中保存是谁登陆的
			    
				request.getSession().setAttribute("employeeName", em.getRealName());
				request.getSession().setAttribute("employeeInfo", em);
				System.out.println(em.getRealName());
			}
		}
		if (flag == true) {
			System.out.print("呵呵：" + flag);
			// 跳转主界面
			request.getRequestDispatcher("/web/main.jsp").forward(request,
					response);
		} else {
			// 给出提示，返回登陆界面
			request.getRequestDispatcher("/web/login.jsp").forward(request,
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
