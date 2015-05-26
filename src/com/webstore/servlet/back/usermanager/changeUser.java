package com.webstore.servlet.back.usermanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.UserList;
import com.webstore.bean.subobject.UserType;
import com.webstore.dao.UserListDAO;
import com.webstore.dao.UserTypeDAO;

public class changeUser extends HttpServlet {

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
			UserList user = new UserList();
			user.setUserID(Integer.parseInt(request.getParameter("id")));
			user.setAccount(request.getParameter("account"));
			user.setPassWord(request.getParameter("password"));
			user.setSex(request.getParameter("sex"));
			user.setRealName(request.getParameter("realname"));
			System.out.println(user.getRealName());
			user.setAge(Integer.parseInt(request.getParameter("age")));
			String birth=request.getParameter("birthday");
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        try {
	        	Date	date = new Date(format.parse(birth).getTime());
	        	user.setBirthDate(date);
	        } catch (ParseException e) {
	        	e.printStackTrace();
	        }
		user.setPhoneNumber(request.getParameter("phonenumber"));
		user.setAddress(request.getParameter("address"));
		user.setEMail(request.getParameter("email"));
		UserTypeDAO dao = new UserTypeDAO();
		UserType u = (UserType)dao.query(Integer.parseInt(request.getParameter("typename")));
		user.setUserType(u);
		user.setImageURL(request.getParameter("imgpath"));
		UserListDAO udao= new UserListDAO();
		System.out.println("userid"+user.getUserID());
		udao.update(user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("/web/user/member_detail.jsp").forward(request, response);
	}

}
