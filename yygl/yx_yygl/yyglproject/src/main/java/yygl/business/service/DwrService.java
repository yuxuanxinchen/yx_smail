package yygl.business.service;

import java.util.List;
import java.util.Map;

/**
 * dwr的服务接口
 * @author Thinkpad
 *
 */
public interface DwrService {
	//测试方法
	public String testdwr() throws Exception;
	//获取近几年记录
	public List<Map<String, String>> businessyear() throws Exception;
	//获取数据字典，用于那使用数据字典id的项目
	public List<Map<String, String>> getDictinfoIdlist(String typecode) throws Exception;
	//获取数据字典，用于那使用数据字典dictcode的项目
	public List<Map<String, String>> getDictinfoCodelist(String typecode) throws Exception;
    
	/**
	 * @Title: tString 
	 * @Description: TODO 
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午10:36:09]  
	 * @throws  
	 */
	public String tString() throws Exception;

}
