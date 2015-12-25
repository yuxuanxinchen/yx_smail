package yygl.business.service;

import java.util.List;

import yygl.business.pojo.po.Yycgdmx;
import yygl.business.pojo.vo.YycgdCustom;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;
import yygl.business.pojo.vo.YycgdrkCustom;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.service.CgdService.java]  
 * @ClassName:    [CgdService]   
 * @Description:  采购单  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月28日 下午3:14:57]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月28日 下午3:14:57]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface CgdService {

	/**
	 * @Title: insertYycgd 
	 * @Description: 插入采购单 
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:18:02]  
	 * @throws  
	 */
	public String insertYycgd(String useryyid,String year,YycgdCustom yycgdCustom) throws Exception;
		
	/**
	 * @Title: findYycgdById 
	 * @Description:根据ID查询订单表信息
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return YycgdCustom 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午4:13:34]  
	 * @throws  
	 */
	public YycgdCustom findYycgdById(String id) throws Exception;
	
	/**
	 * @Title: updateYycgd 
	 * @Description: 修改采购单
	 * @param id
	 * @param yycgdCustom
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午5:36:26]  
	 * @throws  
	 */
	public void updateYycgd(String id,YycgdCustom yycgdCustom) throws Exception;
	   
	/**
	 * @Title: findYycgdmxListByYycgdid 
	 * @Description: 查询采购单下明细信息
	 * @param yycgdid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午8:05:08]  
	 * @throws  
	 */
	public List<YycgdmxCustom> findYycgdmxListByYycgdid(String yycgdid,YycgdQueryVo yycgdQueryVo) throws Exception;

	/**
	 * @Title: findYycgdmxCountByYycgdid 
	 * @Description:查找
	 * @param yycgdid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午8:05:25]  
	 * @throws  
	 */
	public int findYycgdmxCountByYycgdid(String yycgdid,YycgdQueryVo yycgdQueryVo) throws Exception;

		/**
		 * @Title: findAddYycgdmxList 
		 * @Description: 采购药品添加查询
		 * @param useryyid
		 * @param yycgdid
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdmxCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月28日 下午8:05:56]  
		 * @throws  
		 */
		public List<YycgdmxCustom> findAddYycgdmxList(String useryyid,String yycgdid, YycgdQueryVo yycgdQueryVo) throws Exception;

		/**
		 * @Title: findAddYycgdmxCount 
		 * @Description: TODO 
		 * @param useryyid
		 * @param yycgdid
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return int 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月28日 下午8:06:08]  
		 * @throws  
		 */
		public int findAddYycgdmxCount(String useryyid, String yycgdid,
				YycgdQueryVo yycgdQueryVo) throws Exception;

		/**
		 * @Title: insertYycgdmx 
		 * @Description:采购药品添加
		 * @param yycgdid
		 * @param ypxxid
		 * @param usergysid
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月28日 下午8:06:17]  
		 * @throws  
		 */
		public void insertYycgdmx(String yycgdid, String ypxxid, String usergysid)
				throws Exception;

		/**
		 * @Title: findYycgdmxByYycgdidAndYpxxid 
		 * @Description:根据采购单id和药品id查询采购单明细
		 * @param yycgdid
		 * @param ypxxid
		 * @return
		 * @throws Exception  
		 * @return Yycgdmx 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月28日 下午8:06:27]  
		 * @throws  
		 */
		public Yycgdmx findYycgdmxByYycgdidAndYpxxid(String yycgdid, String ypxxid)
				throws Exception;
		
		/**
		 * @Title: findYycgdList 
		 * @Description: TODO 
		 * @param useryyid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午4:45:04]  
		 * @throws  
		 */
		public List<YycgdCustom> findYycgdList(String useryyid, String year,YycgdQueryVo yycgdQueryVo) throws Exception;

		/**
		 * @Title: findYycgdCount 
		 * @Description: TODO 
		 * @param useryyid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return int 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午4:45:06]  
		 * @throws  
		 */
		public int findYycgdCount(String useryyid, String year,YycgdQueryVo yycgdQueryVo) throws Exception;
		
		
		/**
		 * @Title: saveYycgdSubmitStatus 
		 * @Description: 采购单提交
		 * @param yycgdid
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:12:55]  
		 * @throws  
		 */
		public void saveYycgdSubmitStatus(String yycgdid)throws Exception;
		
		/**
		 * @Title: findCheckYycgdList 
		 * @Description: TODO 
		 * @param year
		 * @param userjdid
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:13:07]  
		 * @throws  
		 */
		public List<YycgdCustom> findCheckYycgdList(String year,String userjdid,YycgdQueryVo yycgdQueryVo)throws Exception;
		
		 /**
		  * @Title: findCheckYycgdCount 
		  * @Description: 查找
		  * @param year
		  * @param userjdid
		  * @param yycgdQueryVo
		  * @return
		  * @throws Exception  
		  * @return int 
		  * @Author:[yuxuan]
		  * @Date:[2015年11月30日 下午2:13:13]  
		  * @throws  
		  */
		public int findCheckYycgdCount(String year,String userjdid,YycgdQueryVo yycgdQueryVo)throws Exception;
		
		/**
		 * @Title: saveYycgdCheckStatus 
		 * @Description: 保存采购单
		 * @param yycgdid
		 * @param yycgdCustom
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:13:33]  
		 * @throws  
		 */
		public void saveYycgdCheckStatus(String yycgdid,YycgdCustom yycgdCustom)throws Exception;
		
		/**
		 * @Title: findDisposeYycgdList 
		 * @Description: 查找目录
		 * @param usergysid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdmxCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:13:50]  
		 * @throws  
		 */
		public List<YycgdmxCustom> findDisposeYycgdList(String usergysid,String year,YycgdQueryVo yycgdQueryVo) throws Exception;
		
		/**
		 * @Title: findDisposeYycgdCount 
		 * @Description: 查找总数
		 * @param usergysid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return int 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:14:08]  
		 * @throws  
		 */
		public int findDisposeYycgdCount(String usergysid,String year,YycgdQueryVo yycgdQueryVo) throws Exception;
		
		/**
		 * @Title: saveSendStatus 
		 * @Description: 保存状态
		 * @param yycgdid
		 * @param ypxxid
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:14:22]  
		 * @throws  
		 */
		public void saveSendStatus(String yycgdid,String ypxxid)throws Exception;
		
		/**
		 * @Title: findYycgdReceivceList 
		 * @Description:入库
		 * @param useryyid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdmxCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:14:35]  
		 * @throws  
		 */
		public List<YycgdmxCustom> findYycgdReceivceList(String useryyid,String year,YycgdQueryVo yycgdQueryVo) throws Exception;
		
		/**
		 * @Title: findYycgdReceivceCount 
		 * @Description: 返回总数
		 * @param useryyid
		 * @param year
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return int 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:14:47]  
		 * @throws  
		 */
		public int findYycgdReceivceCount(String useryyid,String year,YycgdQueryVo yycgdQueryVo) throws Exception;
		
		/**
		 * @Title: saveYycgdrk 
		 * @Description: 保存
		 * @param yycgdid
		 * @param ypxxid
		 * @param yycgdrkCustom
		 * @throws Exception  
		 * @return void 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午2:14:59]  
		 * @throws  
		 */
		public void saveYycgdrk(String yycgdid,String ypxxid,YycgdrkCustom yycgdrkCustom) throws Exception;

		/**
		 * @Title: findYycgdmxListSum 
		 * @Description: TODO 
		 * @param yycgdQueryVo
		 * @return
		 * @throws Exception  
		 * @return List<YycgdmxCustom> 
		 * @Author:[yuxuan]
		 * @Date:[2015年12月1日 下午1:28:59]  
		 * @throws  
		 */
		public List<YycgdmxCustom> findYycgdmxListSum(String yycgdid,YycgdQueryVo yycgdQueryVo) throws Exception;

	
}
