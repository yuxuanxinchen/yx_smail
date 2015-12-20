package com.yx.core;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.web.context.ServletContextAware;

import com.yx.entity.AdminUser;
import com.yx.utils.ip.TmIpUtil;

import static com.yx.utils.SysConstant.*;

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
	@Around("execution(* com.yx.service.*.*.*(..)) && !execution(* com.yx.service.*.*.getLogin(..))")
	public Object doBasicProfiling(ProceedingJoinPoint pprot) throws Throwable{
		Object classObject = pprot.getTarget();
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
		
		String className = classObject.getClass().getName();
		String methodName = pprot.getSignature().getName();
		String resultType = null;
		if(object!=null){
			resultType = object.getClass().getName();
		}
		System.out.println("【Yx】【Service AOP拦截】 【类名："+className+"】【方法名:"+methodName+"】【方法返回类型:"+resultType+"】【方法执行时间:"+time+"ms】");
		
		
		HttpServletRequest request = (HttpServletRequest) context.getAttribute(REQUEST_LOG);
		AdminUser adminUser = (AdminUser) context.getAttribute(USER_LOG);
		System.out.println(adminUser.getUsername()+"-----------登录用户");
		System.out.println(adminUser.getId()+"------------+用户ID");
		System.out.println("--------------========================================"+TmIpUtil.getIpAddress(request));
		System.out.println(TmIpUtil.ipLocation(request)+"LOCATION00--------------");
		return object;
	}

	@Override
	public void setServletContext(ServletContext arg0) {
	     this.context = arg0;
		
	}
	
}
