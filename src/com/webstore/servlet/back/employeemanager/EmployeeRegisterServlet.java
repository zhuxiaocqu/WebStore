package com.webstore.servlet.back.employeemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.dao.EmployeeDAO;

public class EmployeeRegisterServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmployeeRegisterServlet() {
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

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String employee_id = request.getParameter("employeeid");
		int employeeid = Integer.parseInt(employee_id);
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		String age_ = request.getParameter("age");
		
		int age = Integer.parseInt(age_);
		String phonenumber = request.getParameter("phonenumber");
		String address = request.getParameter("address");
		String birth_date = request.getParameter("birthdate");

		Date birthdate = java.sql.Date.valueOf(birth_date);
		String email = request.getParameter("email");
		String manager_id = request.getParameter("managerid");
		int managerid = Integer.parseInt(manager_id);
		String aboutme = request.getParameter("aboutme");
		String interest = request.getParameter("interest");
		
		ManagerGroup mt = new ManagerGroup();
		mt.setTypeID(managerid);
		
		Employee em = new Employee();
		em.setUserID(employeeid);
		em.setAccount(account);
		em.setPassWord(password);
		em.setRealName(realname);
		em.setSex(sex);
		em.setAge(age);
		em.setPhoneNumber(phonenumber);
		em.setAddress(address);
		em.setBirthDate(birthdate);
		em.setEMail(email);
		em.setManagerGroup(mt);
		em.setAboutMe(aboutme);
		em.setInterest(interest);
		
		EmployeeDAO dao = new EmployeeDAO();
		dao.insert(em);
		
		PrintWriter out = response.getWriter();
		//out.print("<script>alert(\"修改成功！！！\");</script>");
		out.println("<script>alert('您输入的验证码不正确！');history.back(-1);</script>");
		request.getRequestDispatcher("/web/login.jsp").forward(request,response);
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
