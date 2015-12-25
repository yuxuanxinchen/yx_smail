package com.yuxuan.po;

import com.yuxuan.po.User;
import java.util.Date;


/**
 * AbstractCustomerComplainInfo entity provides the base persistence definition of the CustomerComplainInfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCustomerComplainInfo  implements java.io.Serializable {


    // Fields    

     private Integer complainId;
     private User user;
     private Sjzdxx sjzdxxByPleasedLevel;
     private CustomerInfo customerInfo;
     private Sjzdxx sjzdxxByComplainStatus;
     private String complainPersion;
     private String complainTheme;
     private String complainText;
     private Date complainDate;
     private String complainManage;
     private String complainRemarks;


    // Constructors

    /** default constructor */
    public AbstractCustomerComplainInfo() {
    }

    
    /** full constructor */
    public AbstractCustomerComplainInfo(User user, Sjzdxx sjzdxxByPleasedLevel, CustomerInfo customerInfo, Sjzdxx sjzdxxByComplainStatus, String complainPersion, String complainTheme, String complainText, Date complainDate, String complainManage, String complainRemarks) {
        this.user = user;
        this.sjzdxxByPleasedLevel = sjzdxxByPleasedLevel;
        this.customerInfo = customerInfo;
        this.sjzdxxByComplainStatus = sjzdxxByComplainStatus;
        this.complainPersion = complainPersion;
        this.complainTheme = complainTheme;
        this.complainText = complainText;
        this.complainDate = complainDate;
        this.complainManage = complainManage;
        this.complainRemarks = complainRemarks;
    }

   
    // Property accessors

    public Integer getComplainId() {
        return this.complainId;
    }
    
    public void setComplainId(Integer complainId) {
        this.complainId = complainId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Sjzdxx getSjzdxxByPleasedLevel() {
        return this.sjzdxxByPleasedLevel;
    }
    
    public void setSjzdxxByPleasedLevel(Sjzdxx sjzdxxByPleasedLevel) {
        this.sjzdxxByPleasedLevel = sjzdxxByPleasedLevel;
    }

    public CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }
    
    public void setCustomerInfo(CustomerInfo customerInfo) {
        this.customerInfo = customerInfo;
    }

    public Sjzdxx getSjzdxxByComplainStatus() {
        return this.sjzdxxByComplainStatus;
    }
    
    public void setSjzdxxByComplainStatus(Sjzdxx sjzdxxByComplainStatus) {
        this.sjzdxxByComplainStatus = sjzdxxByComplainStatus;
    }

    public String getComplainPersion() {
        return this.complainPersion;
    }
    
    public void setComplainPersion(String complainPersion) {
        this.complainPersion = complainPersion;
    }

    public String getComplainTheme() {
        return this.complainTheme;
    }
    
    public void setComplainTheme(String complainTheme) {
        this.complainTheme = complainTheme;
    }

    public String getComplainText() {
        return this.complainText;
    }
    
    public void setComplainText(String complainText) {
        this.complainText = complainText;
    }

    public Date getComplainDate() {
        return this.complainDate;
    }
    
    public void setComplainDate(Date complainDate) {
        this.complainDate = complainDate;
    }

    public String getComplainManage() {
        return this.complainManage;
    }
    
    public void setComplainManage(String complainManage) {
        this.complainManage = complainManage;
    }

    public String getComplainRemarks() {
        return this.complainRemarks;
    }
    
    public void setComplainRemarks(String complainRemarks) {
        this.complainRemarks = complainRemarks;
    }
   








}