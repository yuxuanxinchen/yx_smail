package com.yx.utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.utils.SysConstant.java]  
 * @ClassName:    [SysConstant]   
 * @Description:  系统常量类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午8:46:03]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class SysConstant {

	/**登录用户session*/
	public static final String SESSION_USER = "session_user";
	/**登录用户名*/
	public static final String SESSION_USER_USERNAME = "session_user_username";
	/**记录访问service层*/
	public static final String USER_LOG = "user_log";
	public static final String REQUEST_LOG = "request_log";
	/**用户是否拥有角色*/
	public static final String SESSION_USER_ROLE = "session_user_role";
	/**用户是否拥有权限*/
	public static final String SESSION_USER_PERMISSION = "session_user_permission";
	/**在service里拿到requet里边的信息*/
    public static final String SERVLET_CONTEXT_REQUEST = "servletContext_request";	
    /**模块名*/
    public static final String MAP_REQUEST_URI_MODE = "mode_name";
    /**request里边的信息*/
    public static final Map<String, Object> reqs = new HashMap<String, Object>();
    /**记录spider抓取的图片路径*/
    public static final Set<String> SPIDERDOWNIMAGES  = new HashSet<String>();
    /**spider图片下载的路径*/
    public static String UPLOAD_IMAGES_PATH = "";  
    /**存储spider抓取的头信息*/
    public static final Map<String, Object> SPIDER_ARTICLE = new HashMap<String, Object>();
    /**数据库配置文件相对路径*/
    public static final String DB_PROPERTIES_FILE = "/db/db.properties";
    
    
}
