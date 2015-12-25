package com.yuxuan.po;

import java.io.Serializable;

public abstract class AbstractSjzdxx implements Serializable {
	private Integer sjzdxxId;
	private Sjzdfl sjzdfl;
	private String sjzdxxMc;
	private String isOk;

	public AbstractSjzdxx() {
	}

	public AbstractSjzdxx(Sjzdfl sjzdfl, String sjzdxxMc) {
		this.sjzdfl = sjzdfl;
		this.sjzdxxMc = sjzdxxMc;
	}

	public Integer getSjzdxxId() {
		return this.sjzdxxId;
	}

	public void setSjzdxxId(Integer sjzdxxId) {
		this.sjzdxxId = sjzdxxId;
	}

	public Sjzdfl getSjzdfl() {
		return this.sjzdfl;
	}

	public void setSjzdfl(Sjzdfl sjzdfl) {
		this.sjzdfl = sjzdfl;
	}

	public String getSjzdxxMc() {
		return this.sjzdxxMc;
	}

	public void setSjzdxxMc(String sjzdxxMc) {
		this.sjzdxxMc = sjzdxxMc;
	}

	public String getIsOk() {
		return this.isOk;
	}

	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}
}