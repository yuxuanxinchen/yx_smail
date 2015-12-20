package com.yx.core;
import static com.yx.utils.SysConstant.SESSION_USER;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminUser;
import com.yx.service.adminstat.IAdminStatService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.core.LoginIntercetor.java]  
 * @ClassName:    [LoginIntercetor]   
 * @Description:  登录拦截   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午9:24:42]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class LoginIntercetor implements HandlerInterceptor{

	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		AdminUser user =(AdminUser)request.getSession().getAttribute(SESSION_USER);
		if(user!=null){
			  
			return true;
		}else{
			response.sendRedirect(request.getContextPath()+"/userlogin");	
			return false;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("请求结束执行的方法..........");
		
	}
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("响应已经被渲染成功后执行的方法..........");
		
	}

}
