package com.yx.core;
import static com.yx.utils.SysConstant.SESSION_USER;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.AdminUser;
import com.yx.service.adminstat.IAdminStatService;
import com.yx.utils.SysConstant;
import com.yx.utils.TmStringUtils;

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
			String url = request.getRequestURI();
			String arrString[] = url.split("/");
			String res = arrString[arrString.length-1];
			String resTwo = arrString[arrString.length-2];
			SysConstant.reqs.put(SysConstant.MAP_REQUEST_URI_MODE,resTwo);
			return true;
		}else{
			//执行是一个ajax请求还是一个普通请求
			String requestType = request.getHeader("X-Requested-With");  
			if(TmStringUtils.isNotEmpty(requestType) && requestType.equalsIgnoreCase("XMLHttpRequest")){
				response.getWriter().print("logout");
			}else{
				response.sendRedirect(request.getContextPath()+"/userlogin");	
			}
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
