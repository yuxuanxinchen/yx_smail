package com.yx.core;

import static com.yx.utils.SysConstant.REQUEST_LOG;
import static com.yx.utils.SysConstant.USER_LOG;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ServletContextAware;

import com.yx.dao.adminstat.IAdminStatMapper;
import com.yx.entity.AdminStat;
import com.yx.entity.AdminUser;
import com.yx.utils.SysConstant;
import com.yx.utils.TmStringUtils;
import com.yx.utils.ip.TmIpUtil;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.core.LogInterceptor.java]  
 * @ClassName:    [LogInterceptor]   
 * @Description:  增强类   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:04:42]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Aspect
public class LogInterceptor implements ServletContextAware{

	private ServletContext context;
	
	@Autowired
	private IAdminStatMapper adminStatMapper;
	
	/**
	 * @Title: doBasicProfiling 
	 * @Description:日志拦截
	 * @param pprot
	 * @return
	 * @throws Throwable  
	 * @return Object 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:51:28]  
	 * @throws  
	 */
	@Around("execution(* com.yx.service.*.*.*(..))")
	public Object doBasicProfiling(ProceedingJoinPoint pprot) throws Throwable{
		String methodName = pprot.getSignature().getName();
		if(TmStringUtils.isNotEmpty(methodName) && methodName.equals("getLogin") ||
			TmStringUtils.isNotEmpty(methodName) && methodName.equals("Chartlist")){
			return  pprot.proceed();
		}
		Object classObject = pprot.getTarget();
		String className = classObject.getClass().getName();
		long start = System.currentTimeMillis();
		Object object = pprot.proceed();
		long end = System.currentTimeMillis() ;
		long time = (end - start);
		StringBuffer buffer = new StringBuffer("");
		Object[] params = pprot.getArgs();
		if(params.length>0){
			for (int i = 0; i < params.length; i++) {
				buffer.append(String.valueOf(params[i]));
				if(i<params.length-1){
					buffer.append(",");
				}
			}
		}
		
		
		
		String resultType = null;
		if(object!=null){
			resultType = object.getClass().getName();
		}
		
		try {
			//保存日志
			saveAdminStat(object,methodName,time);
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println("【Yx】【Service AOP拦截】 【类名："+className+"】【方法名:"+methodName+"】【方法返回类型:"+resultType+"】【方法执行时间:"+time+"ms】");
		return object;
	}

	/**
	 * @Title: save 
	 * @Description: 保存
	 * @param obj  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:15:01]  
	 * @throws  
	 */
	private void saveAdminStat(Object obj,String mehtod,long time){
		AdminStat adminStat = new AdminStat();;
	    AdminUser adminUser = (AdminUser) context.getAttribute(USER_LOG);
	    HttpServletRequest request = (HttpServletRequest) context.getAttribute(REQUEST_LOG);
		adminStat.setClassname(obj.getClass().getName());
		adminStat.setUserId(adminUser.getId());
		adminStat.setMethod(mehtod);
		adminStat.setTime(time);
		adminStat.setIp(TmIpUtil.getIpAddress(request));
		adminStat.setIpAddress(TmIpUtil.ipLocation(request));
		adminStat.setUsername(adminUser.getUsername());
		HashMap<String,Object> model = (HashMap<String, Object>) SysConstant.reqs;
		if(model!=null){
			adminStat.setModel(model.get(SysConstant.MAP_REQUEST_URI_MODE).toString());
		}
		adminStat.setDescription("this is content");
		adminStatMapper.save(adminStat);
		
	}
	
	
	@Override
	public void setServletContext(ServletContext arg0) {
	     this.context = arg0;
		
	}
	
}
