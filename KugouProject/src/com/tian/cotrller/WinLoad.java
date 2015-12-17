package com.tian.cotrller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tian.entity.*;
import com.tian.service.CooperateService;
import com.tian.service.ImgService;
import com.tian.service.SongService;
import com.tian.service.impl.CooperateServiceImpl;
import com.tian.service.impl.ImgServiceImpl;
import com.tian.service.impl.SongServiceImpl;

public class WinLoad extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			//��ȡ��ͼƬ��Ϣ
			ImgService imgService = new ImgServiceImpl();
			List<Img> list = imgService.getImgInfo();
			request.setAttribute("list", list);
			
			//��ȡ�Ƽ�����Ϣ
			SongService songService = new SongServiceImpl();
			List<Song> song = songService.getAllSong();
			request.setAttribute("song", song);
		
			
			//��ȡ�Ȱ���Ϣ
			List<Song> songHeat = songService.getAllSongHeat();
			request.setAttribute("songHeat", songHeat);
			
			//��ȡ��̨��Ϣ
			List<Song>	songRadio = songService.getAllSongRadio();
			request.setAttribute("songRadio", songRadio);
			
			//��ȡԭ����������Ů������Ϣ
			List<Song> songOriginal = songService.getAllSongOriginal();
			request.setAttribute("songOriginal", songOriginal);
			
			//��ȡMV�Ȳ�������Ϣ
			List<Song> songMV = songService.getAllSongMV();
			request.setAttribute("songMV", songMV);
			
			
			//��ȡ�ϻ���վ����Ϣ
			CooperateService cooservice = new CooperateServiceImpl();
			List<Cooperate> cooperate = cooservice.getAllCooperateInfo();
			request.setAttribute("cooperate",cooperate);
			
			
			
			request.getRequestDispatcher("kugou.jsp").forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
