package com.yuxuan.po;

import java.io.Serializable;

public abstract class AbstractCustomerInfo implements Serializable {
	private Integer customerId;
	private Sjzdxx sjzdxxByCustomerKhyh;
	private DataLevel dataLevel;
	private Sjzdxx sjzdxxByCustomerXz;
	private Sjzdxx sjzdxxByCustomerLy;
	private Sjzdxx sjzdxxByCustomerLx;
	private String customerMc;
	private String customerWz;
	private String customerDh;
	private String customerDjr;
	private String customerAddress;
	private String customerSssf;
	private String customerSscs;
	private String customerYb;
	private Integer customerYh;
	private String customerYhzh;
	private String customerBz;

	public AbstractCustomerInfo() {
	}

	public AbstractCustomerInfo(Sjzdxx sjzdxxByCustomerKhyh,
			DataLevel dataLevel, Sjzdxx sjzdxxByCustomerXz,
			Sjzdxx sjzdxxByCustomerLy, Sjzdxx sjzdxxByCustomerLx,
			String customerMc, String customerWz, String customerDh,
			String customerDjr, String customerAddress, String customerSssf,
			String customerSscs, String customerYb, Integer customerYh,
			String customerYhzh, String customerBz) {
		this.sjzdxxByCustomerKhyh = sjzdxxByCustomerKhyh;
		this.dataLevel = dataLevel;
		this.sjzdxxByCustomerXz = sjzdxxByCustomerXz;
		this.sjzdxxByCustomerLy = sjzdxxByCustomerLy;
		this.sjzdxxByCustomerLx = sjzdxxByCustomerLx;
		this.customerMc = customerMc;
		this.customerWz = customerWz;
		this.customerDh = customerDh;
		this.customerDjr = customerDjr;
		this.customerAddress = customerAddress;
		this.customerSssf = customerSssf;
		this.customerSscs = customerSscs;
		this.customerYb = customerYb;
		this.customerYh = customerYh;
		this.customerYhzh = customerYhzh;
		this.customerBz = customerBz;
	}

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Sjzdxx getSjzdxxByCustomerKhyh() {
		return this.sjzdxxByCustomerKhyh;
	}

	public void setSjzdxxByCustomerKhyh(Sjzdxx sjzdxxByCustomerKhyh) {
		this.sjzdxxByCustomerKhyh = sjzdxxByCustomerKhyh;
	}

	public DataLevel getDataLevel() {
		return this.dataLevel;
	}

	public void setDataLevel(DataLevel dataLevel) {
		this.dataLevel = dataLevel;
	}

	public Sjzdxx getSjzdxxByCustomerXz() {
		return this.sjzdxxByCustomerXz;
	}

	public void setSjzdxxByCustomerXz(Sjzdxx sjzdxxByCustomerXz) {
		this.sjzdxxByCustomerXz = sjzdxxByCustomerXz;
	}

	public Sjzdxx getSjzdxxByCustomerLy() {
		return this.sjzdxxByCustomerLy;
	}

	public void setSjzdxxByCustomerLy(Sjzdxx sjzdxxByCustomerLy) {
		this.sjzdxxByCustomerLy = sjzdxxByCustomerLy;
	}

	public Sjzdxx getSjzdxxByCustomerLx() {
		return this.sjzdxxByCustomerLx;
	}

	public void setSjzdxxByCustomerLx(Sjzdxx sjzdxxByCustomerLx) {
		this.sjzdxxByCustomerLx = sjzdxxByCustomerLx;
	}

	public String getCustomerMc() {
		return this.customerMc;
	}

	public void setCustomerMc(String customerMc) {
		this.customerMc = customerMc;
	}

	public String getCustomerWz() {
		return this.customerWz;
	}

	public void setCustomerWz(String customerWz) {
		this.customerWz = customerWz;
	}

	public String getCustomerDh() {
		return this.customerDh;
	}

	public void setCustomerDh(String customerDh) {
		this.customerDh = customerDh;
	}

	public String getCustomerDjr() {
		return this.customerDjr;
	}

	public void setCustomerDjr(String customerDjr) {
		this.customerDjr = customerDjr;
	}

	public String getCustomerAddress() {
		return this.customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerSssf() {
		return this.customerSssf;
	}

	public void setCustomerSssf(String customerSssf) {
		this.customerSssf = customerSssf;
	}

	public String getCustomerSscs() {
		return this.customerSscs;
	}

	public void setCustomerSscs(String customerSscs) {
		this.customerSscs = customerSscs;
	}

	public String getCustomerYb() {
		return this.customerYb;
	}

	public void setCustomerYb(String customerYb) {
		this.customerYb = customerYb;
	}

	public Integer getCustomerYh() {
		return this.customerYh;
	}

	public void setCustomerYh(Integer customerYh) {
		this.customerYh = customerYh;
	}

	public String getCustomerYhzh() {
		return this.customerYhzh;
	}

	public void setCustomerYhzh(String customerYhzh) {
		this.customerYhzh = customerYhzh;
	}

	public String getCustomerBz() {
		return this.customerBz;
	}

	public void setCustomerBz(String customerBz) {
		this.customerBz = customerBz;
	}
}