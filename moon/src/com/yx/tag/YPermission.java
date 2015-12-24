package com.yx.tag;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.yx.entity.AdminUser;
import com.yx.utils.SysConstant;
import com.yx.utils.TmStringUtils;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.tag.YPermission.java]  
 * @ClassName:    [YPermission]   
 * @Description:  权限标签
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午3:23:30]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class YPermission extends BodyTagSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;

	private String model;
	private String method;
	private String url;
	private AdminUser user;
	
	//获取会话对象
	//然后根据用户传递的参数进行对不
	List<HashMap<String,Object>> maps  = null;
	@SuppressWarnings("unchecked")
	@Override
	public void doInitBody() throws JspException {
		 maps = (List<HashMap<String, Object>>) this.pageContext.getSession().getAttribute(SysConstant.SESSION_USER_PERMISSION);//this代表当前jsp
//		 user =  (AdminUser) this.pageContext.getAttribute(SysConstant.SESSION_USER);
	     
	 
	}
	
	@Override
	public int doAfterBody() throws JspException {
        String content = this.getBodyContent().getString();//获取标签体中的内容
        	JspWriter out = this.getPreviousOut();
//    		if(isPermission() || user.getId() == 1){
    			if(isPermission()){
    			try {
    				out.print(content);
    			} catch (IOException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    			
    		}else{
    			try {
    				out.print("");
    			} catch (IOException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
        }
		
		
		
		return SKIP_BODY;  //跳出当前标签体，继续处理下面的内容
		  //EVAL_PAGE 都进入结束标签，忽略标签体后面的内容  
		  //SKIP_BODY 跳出标签体
		  //SKIP_PAGE 
	}

	
	private boolean isPermission() {
		boolean mark = false;
		if (null != maps && maps.size() > 0) {
			for (HashMap<String, Object> hashMap : maps) {
				String curl = (String) hashMap.get("url");
				String cmodel = (String) hashMap.get("model");
				String cmethod = (String) hashMap.get("method");
				if (TmStringUtils.isNotEmpty(url)) {
					if (curl.equalsIgnoreCase(url)) {
						mark = true;
						break;
					}
				} else {
					if (TmStringUtils.isNotEmpty(model)
							&& TmStringUtils.isNotEmpty(method)
							&& cmodel.equalsIgnoreCase(model)
							&& cmethod.equalsIgnoreCase(method)) {
						mark = true;
						break;
					}
				}
			}
		}
		return mark;
	}
	
	

	public void setModel(String model) {
		this.model = model;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
	
}
