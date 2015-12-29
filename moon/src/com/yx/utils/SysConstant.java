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

	public static final String SESSION_USER = "session_user";
	public static final String SESSION_USER_USERNAME = "session_user_username";
	public static final String USER_LOG = "user_log";
	public static final String REQUEST_LOG = "request_log";
	public static final String SESSION_USER_ROLE = "session_user_role";
	public static final String SESSION_USER_PERMISSION = "session_user_permission";
    public static final String SERVLET_CONTEXT_REQUEST = "servletContext_request";	
    public static final String MAP_REQUEST_URI_MODE = "mode_name";
    public static final Map<String, Object> reqs = new HashMap<String, Object>();
    public static final Set<String> SPIDERDOWNIMAGES  = new HashSet<String>();
    public static String UPLOAD_IMAGES_PATH = "";  
    public static final Map<String, Object> SPIDER_ARTICLE = new HashMap<String, Object>();
    
    
    
}
