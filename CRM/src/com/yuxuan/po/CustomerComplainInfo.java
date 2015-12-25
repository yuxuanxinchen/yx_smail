package com.yuxuan.po;

import com.yuxuan.po.User;

import java.util.Date;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


/**
 * CustomerComplainInfo entity. @author MyEclipse Persistence Tools
 */
public class CustomerComplainInfo extends AbstractCustomerComplainInfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public CustomerComplainInfo() {
    }

    
    /** full constructor */
    public CustomerComplainInfo(User user, Sjzdxx sjzdxxByPleasedLevel, CustomerInfo customerInfo, Sjzdxx sjzdxxByComplainStatus, String complainPersion, String complainTheme, String complainText, Date complainDate, String complainManage, String complainRemarks) {
        super( user,  sjzdxxByPleasedLevel,  customerInfo,  sjzdxxByComplainStatus,  complainPersion,  complainTheme,  complainText,  complainDate,  complainManage,  complainRemarks);        
    }
   
}
