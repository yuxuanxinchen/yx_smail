package com.tian.service;

import java.util.*;

import com.tian.entity.*;

public interface SongService {
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
