package com.yx.core;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yx.utils.SysConstant;


public class HandlerLog implements HandlerInterceptor{

	
	
	@Override
	public void afterCompletion(HttpServletRequest req,
			HttpServletResponse resp, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		String url = req.getRequestURI();
		String arrString[] = url.split("/");
		String res = arrString[arrString.length-1];
		String resTwo = arrString[arrString.length-2];
		SysConstant.reqs.put(SysConstant.MAP_REQUEST_URI_MODE,resTwo);
		System.out.println(req.getRequestURI()+"-------------------------");
		return true;
	}

}
