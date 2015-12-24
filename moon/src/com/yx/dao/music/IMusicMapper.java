package com.yx.dao.music;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Music;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.music.IMusicMapper.java]  
 * @ClassName:    [IMusicMapper]   
 * @Description:  音乐类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月24日 上午11:58:08]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月24日 上午11:58:08]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IMusicMapper {

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
