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
		// ��ȡ���ύ���˺ź�����
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String checkCode = request.getParameter("checkCode");
		
		HttpSession session=request.getSession(); 
		//��ĳһ��������session��Χ�� 
		session.setAttribute("newAccount",account); 
		
		
		System.out.print("�Ǻ�1��" + checkCode);
		// HttpSession session = request.getSession(true);
		String randCheckCode = (String) request.getSession().getAttribute(
				"randCheckCode");
		System.out.print("�Ǻ�2��" + randCheckCode);

		// ��֤�˺ź��������ȷ��
		EmployeeDAO dao = new EmployeeDAO();
		// �����ݿ��и����˺Ų��ѧ����Ϣ
		Employee em = (Employee) dao.querybyaccount(account);
		// ���û�������˺ź����������ݿ������˺ź�����ȶ�
		System.out.print("�Ǻ�hh");
		boolean flag = false;
		if (em != null) {
			if (account.equals(em.getAccount())
					&& password.equals(em.getPassWord())
					&& randCheckCode.equals(checkCode)) {
				// ��½�ɹ�
				flag = true;
				// ��session�б�����˭��½��
			    
				request.getSession().setAttribute("employeeName", em.getRealName());
				request.getSession().setAttribute("employeeInfo", em);
				System.out.println(em.getRealName());
			}
		}
		if (flag == true) {
			System.out.print("�Ǻǣ�" + flag);
			// ��ת������
			request.getRequestDispatcher("/web/main.jsp").forward(request,
					response);
		} else {
			// ������ʾ�����ص�½����
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
