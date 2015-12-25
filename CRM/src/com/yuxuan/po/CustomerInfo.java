package com.yuxuan.po;

import java.io.Serializable;

public class CustomerInfo extends AbstractCustomerInfo implements Serializable {
	public CustomerInfo() {
	}

	public CustomerInfo(Sjzdxx sjzdxxByCustomerKhyh, DataLevel dataLevel,
			Sjzdxx sjzdxxByCustomerXz, Sjzdxx sjzdxxByCustomerLy,
			Sjzdxx sjzdxxByCustomerLx, String customerMc, String customerWz,
			String customerDh, String customerDjr, String customerAddress,
			String customerSssf, String customerSscs, String customerYb,
			Integer customerYh, String customerYhzh, String customerBz) {
		super(sjzdxxByCustomerKhyh, dataLevel, sjzdxxByCustomerXz,
				sjzdxxByCustomerLy, sjzdxxByCustomerLx, customerMc, customerWz,
				customerDh, customerDjr, customerAddress, customerSssf,
				customerSscs, customerYb, customerYh, customerYhzh, customerBz);
	}
}