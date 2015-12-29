package com.yx.entity;


public class Spider implements java.io.Serializable{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	private String html;
	private String img;
	private String id;
	private String eClass;
	private String url;
	private String charset;
	private String label;
	private String property;
	
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getCharset() {
		return charset;
	}
	public void setCharset(String charset) {
		this.charset = charset;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String geteClass() {
		return eClass;
	}
	public void seteClass(String eClass) {
		this.eClass = eClass;
	}
	
	
	
	
}
