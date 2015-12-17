package com.tian.dao.sqlimpl;

import java.util.*;

import com.tian.dao.SongDao;
import com.tian.entity.Song;

public class SongDaoImpl extends BaseDao implements SongDao{

	public List<Song> getAllSongInfo(String name) {
		// TODO Auto-generated method stub
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where SongName like '%'+?+'%'";
			super.rs = super.executeQuery(sql,name);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public List<Song> getAllSong() {
		// TODO Auto-generated method stub
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where AreaID = 10";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public List<Song> getAllSongHeat() {
		// TODO Auto-generated method stub
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where AreaID = 9";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public List<Song> getAllSongRadio() {
		// TODO Auto-generated method stub
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where AreaID = 11";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public List<Song> getAllSongOriginal() {
		// TODO Auto-generated method stub
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where AreaID = 12";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public List<Song> getAllSongMV() {
		List<Song> list = new ArrayList<Song>();
		try {
			String sql = "select * from Song where AreaID = 14";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Song so = new Song(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4),super.rs.getString(5),super.rs.getString(6),super.rs.getInt(7));
				list.add(so);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}
}
