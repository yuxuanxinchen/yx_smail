package com.yx.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder;
import com.yx.utils.TmStringUtils;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.tag.LinkTag.java]  
 * @ClassName:    [LinkTag]   
 * @Description:  封装a标签
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午10:32:24]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class LinkTag extends BodyTagSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private String href = "http://www.baidu.com";
	private String onclick;
	private String id;
	private String className;
	private String title;
	private String text = "点我";
	
	
	@Override
	public int doStartTag() throws JspException {
		StringBuilder buffer  = new StringBuilder();
		buffer.append("<a ");
		if(TmStringUtils.isNotEmpty(href)){
			buffer.append(" href=\""+href+"\"");
		}
		if(TmStringUtils.isNotEmpty(onclick)){
			buffer.append(" onclick=\""+onclick+"\"");
		}
		if(TmStringUtils.isNotEmpty(id)){
			buffer.append(" id=\""+id+"\"");
		}
		if(TmStringUtils.isNotEmpty(className)){
			buffer.append(" className=\""+className+"\"");
		}
		if(TmStringUtils.isNotEmpty(title)){
			buffer.append(" title=\""+title+"\"");
		}
	       buffer.append(">");
	       buffer.append(text);
	       buffer.append("</a>");
		System.out.println(buffer.toString());
		return SKIP_BODY;
	}
	
	public void setHref (String href){
		if(TmStringUtils.isNotEmpty(href)){
			
		}
		
	}
	
	public static void main(String[] args) throws JspException {
		new LinkTag().doStartTag();
	}
	public String getText() {
		return text;
	}
	public String getHref() {
		return href;
	}
	public String getOnclick() {
		return onclick;
	}
	public String getId() {
		return id;
	}
	public String getClassName() {
		return className;
	}
	public String getTitle() {
		return title;
	}
	
	
	
	
	
	

}
