package yygl.base.action.converters;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.WebRequest;

import yygl.base.pojo.vo.ActiveUser;
import yygl.base.process.context.Config;

  /**
   * 
   * Simple to Introduction  
   * @ProjectName:  [yyglproject] 
   * @Package:      [yygl.base.action.converters.UserArgumentResolver.java]  
   * @ClassName:    [UserArgumentResolver]   
   * @Description:  当前用户身份ActiveUser参数解析器 
   * @Author:       [yuxuan]   
   * @CreateDate:   [2015年11月29日 下午6:10:59]   
   * @UpdateUser:   [yuxuan]   
   * @UpdateDate:   [2015年11月29日 下午6:10:59]   
   * @UpdateRemark: [说明本次修改内容]  
   * @Version:      [v1.0]
   */
public class UserArgumentResolver implements WebArgumentResolver {

	//methodParameter存储action方法的参数信息
	//webRequest是springmvc封装对象，通过此对象获取request和session等域的值
	@Override
	public Object resolveArgument(MethodParameter methodParameter,
			NativeWebRequest webRequest) throws Exception {
		
		//如果参数的类型是activeUser从session中取当前用户信息设置到action方法形参上
		if(methodParameter.getParameterType().equals(ActiveUser.class)){
			
			//从session中取当前用户信息
			ActiveUser activeUser = (ActiveUser) webRequest.getAttribute(Config.ACTIVEUSER_KEY, WebRequest.SCOPE_SESSION);
			
			return activeUser;//将参数值向action的方法形参赋值
		}
		
		return UNRESOLVED;
	}

}
