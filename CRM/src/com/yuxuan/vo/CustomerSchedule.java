package com.yuxuan.vo;

import com.yuxuan.po.Schedule;

public class CustomerSchedule extends Schedule{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private String beginTime;
	private String resultTime;
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getResultTime() {
		return resultTime;
	}
	public void setResultTime(String resultTime) {
		this.resultTime = resultTime;
	}
}
