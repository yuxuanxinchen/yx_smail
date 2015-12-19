package com.yx.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.tag.TzElseTag.java]  
 * @ClassName:    [TzElseTag]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午1:35:35]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class TzElseTag extends TagSupport{
	
	
	@Override
	public int doStartTag() throws JspException {
		TzIFTag parent = (TzIFTag)this.getParent();
		if(parent!=null && !parent.getTest()){
			return EVAL_BODY_INCLUDE;//继续去执行标签提的内容
		}else{
			return SKIP_BODY;
		}
	}
}
