package yygl.base.service;

import java.util.List;

import yygl.base.pojo.po.Basicinfo;
import yygl.base.pojo.po.Dictinfo;

 /**
  * 
  * Simple to Introduction  
  * @ProjectName:  [yyglproject] 
  * @Package:      [yygl.base.service.SystemConfigService.java]  
  * @ClassName:    [SystemConfigService]   
  * @Description:  系统级别service
  * @Author:       [yuxuan]   
  * @CreateDate:   [2015年11月24日 下午8:32:44]   
  * @UpdateUser:   [yuxuan]   
  * @UpdateDate:   [2015年11月24日 下午8:32:44]   
  * @UpdateRemark: [说明本次修改内容]  
  * @Version:      [v1.0]
  */
public interface SystemConfigService {
	 
	/**
	 * @Title: findDictinfoByType 
	 * @Description: 根据typecode获取数据字典的信息
	 * @param typecode
	 * @return
	 * @throws Exception  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午8:33:07]  
	 * @throws  
	 */
	public List findDictinfoByType(String typecode) throws Exception;
	
	/**
	 * @Title: findDictinfoByDictcode 
	 * @Description: 根据数据字典中的typecode，和dictcode获取一条信息
	 * @param typecode
	 * @param dictcode
	 * @return
	 * @throws Exception  
	 * @return Dictinfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午8:33:37]  
	 * @throws  
	 */
	public Dictinfo  findDictinfoByDictcode(String typecode,String dictcode) throws Exception;
	
	/**
	 * @Title: findBasicinfoById 
	 * @Description:  根据系统参数id获取系统参数表信息
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return Basicinfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午8:34:01]  
	 * @throws  
	 */
	public Basicinfo findBasicinfoById(String id)throws Exception;
}
