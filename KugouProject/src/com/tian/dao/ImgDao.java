package com.tian.dao;

import java.util.*;

import com.tian.entity.Img;

/**
 * 图片接口
 * @author Administrator
 *
 */
public interface ImgDao {
	
	/**
	 * 查询歌曲
	 * @return 返回歌曲信息
	 */
	public List<Img> getImgInfo();
}
