package com.tian.cotrller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tian.entity.Img;
import com.tian.service.ImgService;
import com.tian.service.impl.ImgServiceImpl;

public class table1Do extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getParameter("url");
		HttpSession session = request.getSession();
		//读取大图片信息
		ImgService imgService = new ImgServiceImpl();
		List<Img> list = imgService.getImgInfo();
		request.setAttribute("list", list);
		if(url != null){
			session.setAttribute("url", url);
			request.getRequestDispatcher("table1.jsp").forward(request, response);
		}else{
			request.getSession().invalidate();
			request.getRequestDispatcher("table1.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
