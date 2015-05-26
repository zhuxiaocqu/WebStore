package com.webstore.servlet.back.productmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Product;
import com.webstore.bean.subobject.Rest;
import com.webstore.dao.ProductDAO;
import com.webstore.dao.RestDAO;

public class GoodNeedServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GoodNeedServlet() {
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
		// 处理乱码
		request.setCharacterEncoding("utf-8");
		// 获取选择库房
		System.out.println("in get goodneed");

		int selectGoodNeed = 3;
		 //Integer.parseInt(request.getParameter("selectBase"));
		System.out.println("选择值：" + request.getParameter("selectGoodNeed"));

		if (request.getParameter("selectGoodNeed") == null) {
			selectGoodNeed = 3;
		} else {
			selectGoodNeed = Integer.parseInt(request
					.getParameter("selectGoodNeed"));
		}
//		selectGoodNeed = Integer.parseInt(request
//				.getParameter("selectGoodNeed"));
		// System.out.println("选择值：" + selectBase);
		// 当前页码
		int currPage = 1;
		// 判断传递页码是否有效
		if (request.getParameter("page") != null) {
			// 对当前页码赋值
			currPage = Integer.parseInt(request.getParameter("page"));
		}
		// 实例化ProductDao
		RestDAO restDao = new RestDAO();
		ProductDAO proD = new ProductDAO();
		Rest rest = new Rest();
		// 查询所有商品信息和库存信息
		List<Product> listNeedProduct = restDao.findGoodNeed(currPage,
			selectGoodNeed);
		List<Rest> listNeedCount = restDao.findNeedCount(currPage,
				selectGoodNeed);

		// 将list放置到request之中
		request.setAttribute("listNeedProduct", listNeedProduct);
		request.setAttribute("listNeedCount", listNeedCount);
		// 总页数
		int pages;
		// 查询总记录数
		int count = restDao.findCount1(selectGoodNeed);
		// 计算总页数
		if (count % Product.PAGE_SIZE == 0) {
			// 对总页数赋值
			pages = count / Product.PAGE_SIZE;
		} else {
			// 对总页数赋值
			pages = count / Product.PAGE_SIZE + 1;
		}
		// 实例化StringBuffer
		StringBuffer sb = new StringBuffer();
		// 通过循环构建分页条
		for (int i = 1; i <= pages; i++) {
			// 判断是否为当前页
			if (i == currPage) {
				// 构建分页条
				sb.append("『" + i + "』");
			} else {
				// 构建分页条
				sb.append("<a href='servlet/GoodNeedServlet?page=" + i + "'>"
						+ i + "</a>");
			}
			// 构建分页条
			sb.append("　");
		}
		// 将分页条的字符串放置到request之中
		request.setAttribute("bar", sb.toString());
		// System.out.println("呵呵showGoodServletshowGoodServletshowGoodServletshowGoodServlet");
		// 转发到good.jsp页面
		request.getRequestDispatcher("/web/goodNeed.jsp").forward(request,
				response);

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
