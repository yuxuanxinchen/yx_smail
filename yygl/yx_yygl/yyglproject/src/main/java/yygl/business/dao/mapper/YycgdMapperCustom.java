package yygl.business.dao.mapper;

import java.util.List;
import yygl.business.pojo.vo.YycgdCustom;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.dao.mapper.YycgdMapperCustom.java]  
 * @ClassName:    [YycgdMapperCustom]   
 * @Description:  采购单 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月28日 下午3:01:42]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月28日 下午3:01:42]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface YycgdMapperCustom {
	
	/**
	 * @Title: getYycgdBm 
	 * @Description: 采购单编号生成
	 * @param year
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:02:08]  
	 * @throws  
	 */
	public String getYycgdBm(String year) throws Exception;
	
	/**
	 * @Title: findYycgdmxList 
	 * @Description: 采购单明细查询
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:02:18]  
	 * @throws  
	 */
	public List<YycgdmxCustom> findYycgdmxList(YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findYycgdmxCount 
	 * @Description: 返回总数 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:02:25]  
	 * @throws  
	 */
	public int findYycgdmxCount(YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findAddYycgdmxList 
	 * @Description: 采购药品添加查询 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:02:41]  
	 * @throws  
	 */
	public List<YycgdmxCustom> findAddYycgdmxList(YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findAddYycgdmxCount 
	 * @Description: 添加的总数量 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:02:49]  
	 * @throws  
	 */
	public int findAddYycgdmxCount(YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findYycgdList 
	 * @Description: TODO 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月29日 下午4:33:14]  
	 * @throws  
	 */
	public List<YycgdCustom> findYycgdList(YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findYycgdCount 
	 * @Description: TODO 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月29日 下午4:33:30]  
	 * @throws  
	 */
	public int findYycgdCount(YycgdQueryVo yycgdQueryVo) throws Exception;
     
	/**
	 * @Title: findYycgdmxListSum 
	 * @Description: TODO 
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午1:25:14]  
	 * @throws  
	 */
	 public List<YycgdmxCustom> findYycgdmxListSum(String yycgdid,YycgdQueryVo yycgdQueryVo) throws Exception;

}
