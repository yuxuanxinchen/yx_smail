package yygl.base.filter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import yygl.base.pojo.vo.ActiveUser;
import yygl.base.process.context.Config;
import yygl.base.process.result.ResultUtil;
import yyglutil.util.ResourcesUtil;

public class LoginInterceptor  implements HandlerInterceptor{
     //进入action方法之前
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		 
		//判断用户身份是否合法
		   HttpSession session = request.getSession();
		   ActiveUser activeUser = (ActiveUser) session.getAttribute(Config.ACTIVEUSER_KEY);
		   if(activeUser != null){
			    //用户已经登录 放行
			   return true;
		   }
		
		    //公开资源的地址    http://localhost/yyglproject/first.action   login.action
		   List<String> openUrList = ResourcesUtil.gekeyList(Config.ANONYMOUS_ACTIONS); 
		   String url = request.getRequestURL().toString();
		   for(String ou :openUrList){
			   if(url.indexOf(ou)>=0){
				   return true;
			   }
		   }
		   
		   //拦截用户操作  ，跳转到登录页面
//		   request.getRequestDispatcher("/WEB-INF/jsp/base/login.jsp").forward(request, response);
		   ResultUtil.throwExcepion(ResultUtil.createWarning(yygl.base.process.context.Config.MESSAGE, 106, null));
		   return false;
	}

	//返回ModelAndView之前执行
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		    
		 
	}
    
	//统一处理系统一样  记录系统日志,
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
