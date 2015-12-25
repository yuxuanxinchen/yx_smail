package com.yuxuan.po;

import java.io.Serializable;

public abstract class AbstractDataLevel implements Serializable {
	private Integer levelId;
	private Double levelYwl;
	private String levelMc;

	public AbstractDataLevel() {
	}

	public AbstractDataLevel(Double levelYwl, String levelMc) {
		this.levelYwl = levelYwl;
		this.levelMc = levelMc;
	}

	public Integer getLevelId() {
		return this.levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public Double getLevelYwl() {
		return this.levelYwl;
	}

	public void setLevelYwl(Double levelYwl) {
		this.levelYwl = levelYwl;
	}

	public String getLevelMc() {
		return this.levelMc;
	}

	public void setLevelMc(String levelMc) {
		this.levelMc = levelMc;
	}
}