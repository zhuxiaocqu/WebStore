package com.webstore.servlet.back.productmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.dao.ProductDAO;
import com.webstore.dao.RestDAO;

public class RestServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RestServlet() {
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

		response.setContentType("text/html");
		// ��������
		request.setCharacterEncoding("utf-8");
		// ��ȡѡ��ⷿ
		System.out.println("in get");

		int selectBase = 1;
		// Integer.parseInt(request.getParameter("selectBase"));
		System.out.println("ѡ��ֵ��" + request.getParameter("selectBase"));

		if (request.getParameter("selectBase") == null) {
			selectBase = 1;
		} else {
			selectBase = Integer.parseInt(request.getParameter("selectBase"));
		}
//		selectBase = Integer.parseInt(request.getParameter("selectBase"));
		// System.out.println("ѡ��ֵ��" + selectBase);
		// ��ǰҳ��
		int currPage = 1;
		// �жϴ���ҳ���Ƿ���Ч
		if (request.getParameter("page") != null) {
			// �Ե�ǰҳ�븳ֵ
			currPage = Integer.parseInt(request.getParameter("page"));
		}
		// ʵ����ProductDao
		RestDAO restDao = new RestDAO();
		Rest rest = new Rest();
		// ��ѯ������Ʒ��Ϣ�Ϳ����Ϣ
		List<Product> listProduct = restDao.find(currPage, selectBase);
		List<Rest> listCount = restDao.findCount(currPage, selectBase);

		// System.out.println(list.get(0).getProductName());

		// ��list���õ�request֮��
		request.setAttribute("listProduct", listProduct);
		request.setAttribute("listCount", listCount);
		// ��ҳ��
		int pages;
		// ��ѯ�ܼ�¼��
		int count = restDao.findCount(selectBase);
		// ������ҳ��
		if (count % Product.PAGE_SIZE == 0) {
			// ����ҳ����ֵ
			pages = count / Product.PAGE_SIZE;
		} else {
			// ����ҳ����ֵ
			pages = count / Product.PAGE_SIZE + 1;
		}
		// ʵ����StringBuffer
		StringBuffer sb = new StringBuffer();
		// ͨ��ѭ��������ҳ��
		for (int i = 1; i <= pages; i++) {
			// �ж��Ƿ�Ϊ��ǰҳ
			if (i == currPage) {
				// ������ҳ��
				sb.append("��" + i + "��");
			} else {
				// ������ҳ��
				sb.append("<a href='servlet/RestServlet?page=" + i + "'>" + i
						+ "</a>");
			}
			// ������ҳ��
			sb.append("��");
		}
		// ����ҳ�����ַ������õ�request֮��
		request.setAttribute("bar", sb.toString());
		// System.out.println("�Ǻ�showGoodServletshowGoodServletshowGoodServletshowGoodServlet");
		// ת����good.jspҳ��
		request.getRequestDispatcher("/web/base.jsp")
				.forward(request, response);

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
		System.out.println("in post");
		doGet(request, response);
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