package com.tian.cotrller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tian.entity.Song;
import com.tian.service.SongService;
import com.tian.service.impl.SongServiceImpl;

/**
 * ��ѯ����
 * @author Administrator
 *
 */
public class SearchSong extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		//��ȡ������Ϣ
		String songName = request.getParameter("show");
		//����SongService����
		SongService sService = new SongServiceImpl();
		List<Song> list = sService.getAllSongInfo(songName);
		HttpSession session = request.getSession();
		session.setAttribute("list",list);
		if(list != null){
			System.out.println("��������");
		}else{
			System.out.println("û������");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
