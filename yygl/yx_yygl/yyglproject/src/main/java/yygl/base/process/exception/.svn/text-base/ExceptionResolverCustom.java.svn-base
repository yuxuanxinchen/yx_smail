package yygl.base.process.exception;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.core.Config;

import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import yygl.base.process.result.ExceptionResultInfo;
import yygl.base.process.result.ResultInfo;
import yygl.base.process.result.ResultUtil;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.base.process.exception.ExceptionResolverCustom.java]  
 * @ClassName:    [ExceptionResolverCustom]   
 * @Description:  全局异常处理器 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月23日 下午9:04:37]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月23日 下午9:04:37]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ExceptionResolverCustom implements HandlerExceptionResolver {

	/*
	  json 转化器
	   前端控制器调用此方法处理异常
	*/ 
	ResultInfo resultInfo = new ResultInfo();
	
	private HttpMessageConverter<ExceptionResultInfo> jsonMessageConverter;
	
	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
			ex.printStackTrace();
			//转成springMVC的底层方法，是对action方法的封装对象 只有一个方法
			HandlerMethod handlerMethod = (HandlerMethod) handler;
		    Method method = handlerMethod.getMethod(); //取出方法
		    ResponseBody responseBody = AnnotationUtils.findAnnotation(method,ResponseBody.class);
			if(responseBody!=null){
				//讲异常信息装欢成json输出
				return this.resolvejsonException(request, response, handlerMethod, ex);
			}
			
			//将异常信息在异常页面显示
		    ExceptionResultInfo exceptionResultInfo = resolveExceptionResultInfo(ex);

		    String view = "/base/error";
		    int messageCode = exceptionResultInfo.getResultInfo().getMessageCode();
		    if(messageCode == 106){
		    	view = "/base/login";
		    }
		    ModelAndView modelAndView = new ModelAndView();
		    modelAndView.addObject("exceptionResultInfo",exceptionResultInfo.getResultInfo());
		    modelAndView.setViewName(view);
		    
		return modelAndView;
	}

	
	//讲异常信息转json
	public ModelAndView resolvejsonException(HttpServletRequest request,HttpServletResponse response, Object handler, Exception ex) {

		// 异常解析
		ExceptionResultInfo exceptionResultInfo = resolveExceptionResultInfo(ex);

		// 装成json
		HttpOutputMessage outputMessage = new ServletServerHttpResponse(response);

		try {
			jsonMessageConverter.write(exceptionResultInfo,
					MediaType.APPLICATION_JSON, outputMessage);
		} catch (HttpMessageNotWritableException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView();
	}
	
	
	private ExceptionResultInfo resolveExceptionResultInfo(Exception e){
		if (e instanceof ExceptionResultInfo) {
			// 抛出的是系统自定义异常
			resultInfo = ((ExceptionResultInfo) e).getResultInfo();
		} else {
			// 重新构造“未知错误”异常
			resultInfo = new ResultInfo();
			resultInfo.setType(ResultInfo.TYPE_RESULT_FAIL);
			resultInfo.setMessage("未知错误！");
		}

		return new ExceptionResultInfo(resultInfo);
	}
	
	
	public HttpMessageConverter<ExceptionResultInfo> getJsonMessageConverter() {
		return jsonMessageConverter;
	}
	public void setJsonMessageConverter(
			HttpMessageConverter<ExceptionResultInfo> jsonMessageConverter) {
		this.jsonMessageConverter = jsonMessageConverter;
	}
}
