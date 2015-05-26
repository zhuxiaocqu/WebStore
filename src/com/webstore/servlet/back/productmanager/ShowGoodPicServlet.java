package com.webstore.servlet.back.productmanager;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webstore.bean.subobject.Product;

public class ShowGoodPicServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowGoodPicServlet() {
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

		response.setContentType("text/html; charset=UTF-8");
		response.setContentType("image/jpeg");    //设置图片格式格式，这里可以忽略
        
		Product pro=(Product)request.getSession().getAttribute("product");
		
        FileInputStream fis = new FileInputStream(pro.getImageURL());
        OutputStream os = response.getOutputStream();
        
        try {
            int count = 0;
            byte[] buffer = new byte[1024*1024];
            while ( (count = fis.read(buffer)) != -1 )
                os.write(buffer, 0, count);
        } catch (IOException e){  
           e.printStackTrace();  

         }finally {

   if(os!=null)

            os.close();

            if(fis != null)

   fis.close();
        }
 
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

		this.doPost(request, response);
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
