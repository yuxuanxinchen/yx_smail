package com.yx.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
@SuppressWarnings("serial")
public class StaticTags extends BodyTagSupport{
	
	
	
	@Override
	public void doInitBody() {
			JspWriter writer = this.getPreviousOut();
			try {
				writer.write("11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	
	@Override
	public void release() {
		// TODO Auto-generated method stub
		super.release();
	}
}
