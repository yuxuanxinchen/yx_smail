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
 * 查询歌曲
 * @author Administrator
 *
 */
public class SearchSong extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		//获取歌曲信息
		String songName = request.getParameter("show");
		//调用SongService对象
		SongService sService = new SongServiceImpl();
		List<Song> list = sService.getAllSongInfo(songName);
		HttpSession session = request.getSession();
		session.setAttribute("list",list);
		if(list != null){
			System.out.println("已有数据");
		}else{
			System.out.println("没有数据");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
