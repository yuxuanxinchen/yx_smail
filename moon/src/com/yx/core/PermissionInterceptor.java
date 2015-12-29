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

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yx.entity.*;
import com.yx.utils.SysConstant;
import com.yx.utils.TmStringUtils;

/**
 * 
 * LoginIntercetor
 * 创建人:xuchengfei 
 * 时间：2015年11月13日-下午9:51:18 
 * @version 1.0.0
 * 
 */
public class PermissionInterceptor implements HandlerInterceptor{

	
	List<HashMap<String,Object>> maps  = null;
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		 maps = (List<HashMap<String, Object>>) request.getSession().getAttribute(SysConstant.SESSION_USER_PERMISSION);//this代表当前jsp
	     if(isPermission(request)){
	    	 return true;
	     }else{
	    	 	String requestType = request.getHeader("X-Requested-With");  
				if(TmStringUtils.isNotEmpty(requestType) && requestType.equalsIgnoreCase("XMLHttpRequest")){
					response.getWriter().print("nopermission");
				}else{
//					response.sendRedirect(request.getContextPath()+"/userlogin");	
					response.sendRedirect(request.getContextPath()+"/index.jsp");
				}
	    	 //跳转到没有权限的页面
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
	
	private boolean isPermission(HttpServletRequest request) {
		String url = request.getRequestURI();
		String arrString[] = url.split("/");
		String res = arrString[arrString.length-1];
		String resTwo = arrString[arrString.length-2];
		///moon/admin/role/list
		boolean mark = false;
		if (null != maps && maps.size() > 0) {
			for (HashMap<String, Object> hashMap : maps) {
				String model = (String) hashMap.get("model");
				String method = (String) hashMap.get("method");
				if(/*TmStringUtils.isNotEmpty(method) &&*/ TmStringUtils.isNotEmpty(model)){
					if(model.equalsIgnoreCase(resTwo) /*&& method.equalsIgnoreCase(res)*/){
						mark = true;
						break;
					}
				}
			}
		}
		return mark;
	}
	public static void main(String[] args) {
		String uString = "/moon/admin/role/list";
		String u1 = uString.substring(1,uString.length());
		
		String arrString[] = uString.split("/");
		String res = arrString[arrString.length-1];
		String resTwo = arrString[arrString.length-2];
		System.out.println(resTwo);
//		System.out.println(u1.substring(u1.indexOf("/"),u1.length()));
		
		
	}

}