package com.yx.service.music;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Music;
import com.yx.entity.YParams;

public interface IMusicService {

	/**
	 * @Title: findMusics 
	 * @Description: 获取所有音乐列表
	 * @return  
	 * @return List<Music> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 上午11:58:39]  
	 * @throws  
	 */
	public List<Music> findMusics(YParams yParams);
	
	
	/**
	 * @Title: musicCounts 
	 * @Description:获取音乐列表的总数
	 * @return  
	 * @return Integer 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午12:20:56]  
	 * @throws  
	 */
	public Integer musicCounts();
	
	/**
	 * @Title: delete 
	 * @Description: TODO 
	 *   
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午1:15:29]  
	 * @throws  
	 */
	public void delete(@Param("id")Integer id);
	
	/**
	 * @Title: updata 
	 * @Description: 更新
	 * @param yParams  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午1:32:30]  
	 * @throws  
	 */
	public void updata(YParams yParams);
}
