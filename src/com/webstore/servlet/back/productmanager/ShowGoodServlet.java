package com.webstore.servlet.back.productmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Product;
import com.webstore.dao.ProductDAO;

public class ShowGoodServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ShowGoodServlet() {
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

		//System.out.println("呵呵showGoodServletshowGoodServletshowGoodServletshowGoodServlet");
		// 当前页码
		int currPage = 1;
		// 判断传递页码是否有效
		if(request.getParameter("page") != null){
			// 对当前页码赋值
			currPage = Integer.parseInt(request.getParameter("page"));
		}
		// 实例化ProductDao
		ProductDAO dao = new ProductDAO();
		// 查询所有商品信息
		List<Product> list = dao.find(currPage);
		System.out.println(list.get(0).getProductName());
		
		// 将list放置到request之中
		request.setAttribute("list", list);
		// 总页数
		int pages ;
		// 查询总记录数
		int count = dao.findCount();
		// 计算总页数
		if(count % Product.PAGE_SIZE == 0){
			// 对总页数赋值
			pages = count / Product.PAGE_SIZE;
		}else{
			// 对总页数赋值
			pages = count / Product.PAGE_SIZE + 1;
		}
		// 实例化StringBuffer
		StringBuffer sb = new StringBuffer();
		// 通过循环构建分页条
		for(int i=1; i <= pages; i++){
			// 判断是否为当前页
			if(i == currPage){
				// 构建分页条
				sb.append("『" + i + "』");
			}else{
				// 构建分页条
				sb.append("<a href='servlet/ShowGoodServlet?page=" + i + "'>" + i + "</a>");
			}
			// 构建分页条
			sb.append("　");
		}
		// 将分页条的字符串放置到request之中
		request.setAttribute("bar", sb.toString());
		//System.out.println("呵呵showGoodServletshowGoodServletshowGoodServletshowGoodServlet");
		// 转发到good.jsp页面
		request.getRequestDispatcher("/web/good.jsp").forward(request, response);
		
		
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
