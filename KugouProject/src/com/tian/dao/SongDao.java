package com.tian.dao;

import java.util.List;

import com.tian.entity.Song;

public interface SongDao {
	/**
	 * ��ѯ����
	 * @return ���ز�ѯ���
	 */
	public List<Song> getAllSongInfo(String name);
	
	/**
	 * ��ѯ�Ƽ������
	 * @return ����ִ�н��
	 */
	public List<Song> getAllSong();
	
	/**
	 * ��ѯȫ���Ȱ���Ϣ��Ϣ
	 * @return ����ִ�н��
	 */
	public List<Song> getAllSongHeat();
	
	/**
	 * ��ѯ��̨����
	 * @return ����ִ�н��
	 */
	public List<Song> getAllSongRadio();
	
	/**
	 * ��ѯԭ�����˺���Ů���ָ���
	 * @return ����ִ�н��
	 */
	public List<Song> getAllSongOriginal();
	
	
	/**
	 * ��ѯMV�Ȳ�����
	 * @return ����ִ�н��
	 */
	public List<Song> getAllSongMV();
}
