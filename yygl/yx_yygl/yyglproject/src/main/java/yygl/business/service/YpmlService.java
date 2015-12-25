package yygl.business.service;

import java.util.List;

import yygl.business.pojo.po.Gysypml;
import yygl.business.pojo.po.GysypmlControl;
import yygl.business.pojo.vo.GysypmlCustom;
import yygl.business.pojo.vo.GysypmlQueryVo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.service.YpmlService.java]  
 * @ClassName:    [YpmlService]   
 * @Description:  要求目录
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月26日 下午6:26:04]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月26日 下午6:26:04]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface YpmlService {

	/**
	 * @Title: findGysypmlList 
	 * @Description: 返回目录
	 * @param usergysId
	 * @param gysypmlQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<GysypmlCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月26日 下午6:25:36]  
	 * @throws  
	 */
	public List<GysypmlCustom> findGysypmlList(String usergysId,
			GysypmlQueryVo gysypmlQueryVo) throws Exception;

	/**
	 * @Title: findGysypmlCount 
	 * @Description: 查找
	 * @param usergysId
	 * @param gysypmlQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月27日 下午2:50:57]  
	 * @throws  
	 */
	public int findGysypmlCount(String usergysId, GysypmlQueryVo gysypmlQueryVo)
			throws Exception;

	/**
	 * @Title: findAddGysypmlList 
	 * @Description: 供货商添加药品目录查询列表
	 * @param usergysId
	 * @param gysypmlQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<GysypmlCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月27日 下午2:50:49]  
	 * @throws  
	 */
	public List<GysypmlCustom> findAddGysypmlList(String usergysId,GysypmlQueryVo gysypmlQueryVo)
			throws Exception;

	/**
	 * @Title: findAddGysypmlCount 
	 * @Description: 获取总数 
	 * @param usergysId
	 * @param gysypmlQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月27日 下午2:50:36]  
	 * @throws  
	 */
	public int findAddGysypmlCount(String usergysId,GysypmlQueryVo gysypmlQueryVo)
			throws Exception;
	
	/**
	 * @Title: insertGysypml 
	 * @Description: 插入
	 * @param usergysid
	 * @param ypxxid
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月27日 下午2:50:25]  
	 * @throws  
	 */
	public void insertGysypml(String usergysid, String ypxxid) throws Exception;

	/**
	 *  @Title: findGysypmlByUsergysidAndYpxxid 
	 * @Description: 根据供货商id和药品id查询供货商药品目录
	 * @param usergysid
	 * @param ypxxid
	 * @return
	 * @throws Exception  
	 * @return Gysypml 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月29日 下午1:23:35]  
	 * @throws  
	 */
	public Gysypml findGysypmlByUsergysidAndYpxxid(String usergysid,String ypxxid) throws Exception;

		/**
		 * @Title: findGysypmlControlByUsergysidAndYpxxid 
		 * @Description:  根据供货商id和药品id查询供货商药品目录控制表记录
		 * @param usergysid
		 * @param ypxxid
		 * @return
		 * @throws Exception  
		 * @return GysypmlControl 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午1:23:52]  
		 * @throws  
		 */
		public GysypmlControl findGysypmlControlByUsergysidAndYpxxid(String usergysid, String ypxxid) throws Exception;

		/**
		 * @Title: deleteGysypml 
		 * @Description: 根据供货商id和药品id删除供货商药品目录表记录
		 * @param usergysid
		 * @param ypxxid
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午1:23:58]  
		 * @throws  
		 */
		public void deleteGysypml(String usergysid, String ypxxid) throws Exception;

		/**
		 * @Title: findGysypmlControlList 
		 * @Description: 供货商药品目录控制列表
		 * @param gysypmlQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<GysypmlCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午1:24:06]  
		 * @throws  
		 */
		public List<GysypmlCustom> findGysypmlControlList(GysypmlQueryVo gysypmlQueryVo) throws Exception;

		/**
		 * @Title: findGysypmlControlCount 
		 * @Description: COunt
		 * @param gysypmlQueryVo
		 * @return
		 * @throws Exception  
		 * @return int 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午1:24:25]  
		 * @throws  
		 */
		public int findGysypmlControlCount(GysypmlQueryVo gysypmlQueryVo)throws Exception;

		/**
		 * @Title: updateGysypmlControl 
		 * @Description:根据供货商id和药品信息id更新供货商药品目录控制表的控制状态及意见
		 * @param usergysid
		 * @param ypxxid
		 * @param control
		 * @param advice
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午1:24:19]  
		 * @throws  
		 */
		public void updateGysypmlControl(String usergysid, String ypxxid,String control, String advice) throws Exception;
		
}
