/**
 * tzdesk系统平台
 * tzupload
 * com.tz.core
 * LoginIntercetor.java
 * 创建人:xuchengfei 
 * 时间：2015年11月13日-下午9:51:18 
 * 2015潭州教育公司-版权所有
 */
package com.yx.core;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.*;

/**
 * 
 * LoginIntercetor
 * 创建人:xuchengfei 
 * 时间：2015年11月13日-下午9:51:18 
 * @version 1.0.0
 * 
 */
public class PermissionInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		System.out.println("进来了吗..........");
		AdminUser user =(AdminUser)request.getSession().getAttribute("user");
		if(user!=null && user.getUsername().equals("keke")){
			return true;
		}else{
			response.sendRedirect(request.getContextPath()+"/success.jsp");	
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