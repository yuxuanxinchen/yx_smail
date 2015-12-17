package com.tian.dao;

import java.util.List;

import com.tian.entity.Song;

public interface SongDao {
	/**
	 * 查询歌曲
	 * @return 返回查询结果
	 */
	public List<Song> getAllSongInfo(String name);
	
	/**
	 * 查询推荐榜歌曲
	 * @return 返回执行结果
	 */
	public List<Song> getAllSong();
	
	/**
	 * 查询全部热榜信息信息
	 * @return 返回执行结果
	 */
	public List<Song> getAllSongHeat();
	
	/**
	 * 查询电台歌曲
	 * @return 返回执行结果
	 */
	public List<Song> getAllSongRadio();
	
	/**
	 * 查询原创达人和美女歌手歌曲
	 * @return 返回执行结果
	 */
	public List<Song> getAllSongOriginal();
	
	
	/**
	 * 查询MV热播歌曲
	 * @return 返回执行结果
	 */
	public List<Song> getAllSongMV();
}
