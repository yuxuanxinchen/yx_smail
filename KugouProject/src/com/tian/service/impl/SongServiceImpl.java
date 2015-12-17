package com.tian.service.impl;

import java.util.List;

import com.tian.dao.SongDao;
import com.tian.entity.Song;
import com.tian.factory.DBFactory;
import com.tian.service.SongService;

public class SongServiceImpl implements SongService{
	
	SongDao sDao = DBFactory.createDBFactory().getSongDao();
	
	public List<Song> getAllSongInfo(String name) {
		// TODO Auto-generated method stub
		return sDao.getAllSongInfo(name);
	}

	public List<Song> getAllSong() {
		// TODO Auto-generated method stub
		return sDao.getAllSong();
	}

	public List<Song> getAllSongHeat() {
		// TODO Auto-generated method stub
		return sDao.getAllSongHeat();
	}

	public List<Song> getAllSongRadio() {
		// TODO Auto-generated method stub
		return	sDao.getAllSongRadio();
	}

	public List<Song> getAllSongOriginal() {
		// TODO Auto-generated method stub
		return sDao.getAllSongOriginal();
	}

	public List<Song> getAllSongMV() {
		// TODO Auto-generated method stub
		return sDao.getAllSongMV();
	}

	
}
