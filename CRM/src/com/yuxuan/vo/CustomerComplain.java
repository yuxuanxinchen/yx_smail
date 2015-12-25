package com.yuxuan.vo;

import com.yuxuan.po.CustomerComplainInfo;

public class CustomerComplain extends CustomerComplainInfo{

	private String sDate; //字符型
	private Integer maxSjzdxxByComplainStatus;
	private String maxMS;
	
	

	public Integer getMaxSjzdxxByComplainStatus() {
		return maxSjzdxxByComplainStatus;
	}

	public void setMaxSjzdxxByComplainStatus(Integer maxSjzdxxByComplainStatus) {
		this.maxSjzdxxByComplainStatus = maxSjzdxxByComplainStatus;
	}

	public String getMaxMS() {
		return maxMS;
	}

	public void setMaxMS(String maxMS) {
		this.maxMS = maxMS;
	}

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	
	
	
	
}
