package com.webstore.servlet.back.employeemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Employee;
import com.webstore.bean.subobject.ManagerGroup;
import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.dao.EmployeeDAO;
import com.webstore.dao.ProductDAO;
import com.webstore.dao.RestDAO;
import com.webstore.dao.StoreInDAO;

public class ShowEmployeeDetail extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowEmployeeDetail() {
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
		int id = Integer.valueOf(request.getParameter("employeeid"));

		Employee em = new Employee();

		EmployeeDAO emDao = new EmployeeDAO();

		em = (Employee) emDao.query(id);


		request.getSession().setAttribute("employee", em);

		request.getRequestDispatcher("/web/EmployeeUpdate.jsp").forward(request,
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
		String employee_id=request.getParameter("employeeid");
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
		ManagerGroup mg = new ManagerGroup();
		mg.setTypeID(managerid);
		String aboutme = request.getParameter("aboutme");
		String interest = request.getParameter("interest");
		String employeeimageurl = request.getParameter("employeeimageurl");
		
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
		em.setManagerGroup(mg);
		em.setAboutMe(aboutme);
		em.setInterest(interest);
		em.setImageURL(employeeimageurl);
		
		EmployeeDAO dao = new EmployeeDAO();
		dao.update(em);
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
