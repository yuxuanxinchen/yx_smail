package com.yuxuan.po;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public abstract class AbstractSjzdfl implements Serializable {
	private Integer sjzdflId;
	private String sjzdflMc;
	private String isOk;
	private Set sjzdxxes = new HashSet(0);

	public AbstractSjzdfl() {
	}

	public AbstractSjzdfl(String sjzdflMc, Set sjzdxxes) {
		this.sjzdflMc = sjzdflMc;
		this.sjzdxxes = sjzdxxes;
	}

	public String getIsOk() {
		return this.isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}

	public Integer getSjzdflId() {
		return this.sjzdflId;
	}

	public void setSjzdflId(Integer sjzdflId) {
		this.sjzdflId = sjzdflId;
	}

	public String getSjzdflMc() {
		return this.sjzdflMc;
	}

	public void setSjzdflMc(String sjzdflMc) {
		this.sjzdflMc = sjzdflMc;
	}

	public Set getSjzdxxes() {
		return this.sjzdxxes;
	}

	public void setSjzdxxes(Set sjzdxxes) {
		this.sjzdxxes = sjzdxxes;
	}
}