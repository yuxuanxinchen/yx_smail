package yygl.business.service;

import java.util.List;

import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.service.BusinessService.java]  
 * @ClassName:    [BusinessService]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月1日 下午3:19:57]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月1日 下午3:19:57]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface BusinessService {

	/**
	 * @Title: findYybusinessList 
	 * @Description: 按交易明细统计
	 * @param year
	 * @param sysid
	 * @param groupid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:19:04]  
	 * @throws  
	 */
	public List<YycgdmxCustom> findYybusinessList(String year, String sysid,String groupid, YycgdQueryVo yycgdQueryVo) throws Exception;

	/**
	 * @Title: findYybusinessCount 
	 * @Description: TODO 
	 * @param year
	 * @param sysid
	 * @param groupid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:19:47]  
	 * @throws  
	 */
	public int findYybusinessCount(String year, String sysid, String groupid,YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findYybusinessGroupbyYpxxList 
	 * @Description: 按药品统计
	 * @param year
	 * @param sysid
	 * @param groupid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YycgdmxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:18:46]  
	 * @throws  
	 */
	public List<YycgdmxCustom> findYybusinessGroupbyYpxxList(String year, String sysid,String groupid, YycgdQueryVo yycgdQueryVo) throws Exception;
	
	/**
	 * @Title: findYybusinessGroupbyYpxxCount 
	 * @Description: TODO 
	 * @param year
	 * @param sysid
	 * @param groupid
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:19:35]  
	 * @throws  
	 */
	public int findYybusinessGroupbyYpxxCount(String year, String sysid,String groupid, YycgdQueryVo yycgdQueryVo) throws Exception;
}
