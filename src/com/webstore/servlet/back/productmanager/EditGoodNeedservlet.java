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
import com.webstore.dao.StoreInDAO;

public class EditGoodNeedservlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EditGoodNeedservlet() {
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
		int id = Integer.valueOf(request.getParameter("goodNeedId"));
		int count, storeCount, saleCount;
		Product pro = new Product();
		Rest rest = new Rest();

		RestDAO restD = new RestDAO();
		StoreInDAO storeIn = new StoreInDAO();
		ProductDAO proDao = new ProductDAO();

		// List<Rest> resList = new ArrayList<Rest>();
		List countList = new ArrayList();
		List saleCountList = new ArrayList();
		pro = (Product) proDao.query(id);

		for (int i = 0; i <= 3; i++) {
			// rest = (Rest) restD.query(id, i + 1);

			count = restD.queryCount(i + 1, id);

			storeCount = storeIn.queryCount(i + 1, id);
			saleCount = storeCount - count;

			System.out.print("库存：：：：" + count);
			System.out.print("入库：：：：" + storeCount);

			if (count == 0) {
				countList.add(0);
			} else {
				countList.add(count);
			}
			if (saleCount == 0) {
				saleCountList.add(0);
			} else if (saleCount < 0) {
				saleCountList.add(-1);

			} else {
				saleCountList.add(storeCount - count);
			}

		}

		
		request.getSession().setAttribute("countList", countList);
		request.getSession().setAttribute("saleCountList", saleCountList);
		request.getSession().setAttribute("product", pro);

		request.getRequestDispatcher("/web/update.jsp").forward(request,
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
