package com.yuxuan.po;

import java.util.Date;


/**
 * AbstractContactsInfo entity provides the base persistence definition of the ContactsInfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractContactsInfo  implements java.io.Serializable {


    // Fields    

     private Integer contactsId;
     private CustomerInfo customerInfo;
     private String contactsName;
     private String contactsSex;
     private Date contactsBirthday;
     private String contactsJob;
     private String contactsOfficePhone;
     private String contactsPhone;
     private String contactsEmail;
     private Date contactsRegister;
     private String contactsQq;
     private String contactsDescription;


    // Constructors

    /** default constructor */
    public AbstractContactsInfo() {
    }

    
    /** full constructor */
    public AbstractContactsInfo(CustomerInfo customerInfo, String contactsName, String contactsSex, Date contactsBirthday, String contactsJob, String contactsOfficePhone, String contactsPhone, String contactsEmail, Date contactsRegister, String contactsQq, String contactsDescription) {
        this.customerInfo = customerInfo;
        this.contactsName = contactsName;
        this.contactsSex = contactsSex;
        this.contactsBirthday = contactsBirthday;
        this.contactsJob = contactsJob;
        this.contactsOfficePhone = contactsOfficePhone;
        this.contactsPhone = contactsPhone;
        this.contactsEmail = contactsEmail;
        this.contactsRegister = contactsRegister;
        this.contactsQq = contactsQq;
        this.contactsDescription = contactsDescription;
    }

   
    // Property accessors

    public Integer getContactsId() {
        return this.contactsId;
    }
    
    public void setContactsId(Integer contactsId) {
        this.contactsId = contactsId;
    }

    public CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }
    
    public void setCustomerInfo(CustomerInfo customerInfo) {
        this.customerInfo = customerInfo;
    }

    public String getContactsName() {
        return this.contactsName;
    }
    
    public void setContactsName(String contactsName) {
        this.contactsName = contactsName;
    }

    public String getContactsSex() {
        return this.contactsSex;
    }
    
    public void setContactsSex(String contactsSex) {
        this.contactsSex = contactsSex;
    }

    public Date getContactsBirthday() {
        return this.contactsBirthday;
    }
    
    public void setContactsBirthday(Date contactsBirthday) {
        this.contactsBirthday = contactsBirthday;
    }

    public String getContactsJob() {
        return this.contactsJob;
    }
    
    public void setContactsJob(String contactsJob) {
        this.contactsJob = contactsJob;
    }

    public String getContactsOfficePhone() {
        return this.contactsOfficePhone;
    }
    
    public void setContactsOfficePhone(String contactsOfficePhone) {
        this.contactsOfficePhone = contactsOfficePhone;
    }

    public String getContactsPhone() {
        return this.contactsPhone;
    }
    
    public void setContactsPhone(String contactsPhone) {
        this.contactsPhone = contactsPhone;
    }

    public String getContactsEmail() {
        return this.contactsEmail;
    }
    
    public void setContactsEmail(String contactsEmail) {
        this.contactsEmail = contactsEmail;
    }

    public Date getContactsRegister() {
        return this.contactsRegister;
    }
    
    public void setContactsRegister(Date contactsRegister) {
        this.contactsRegister = contactsRegister;
    }

    public String getContactsQq() {
        return this.contactsQq;
    }
    
    public void setContactsQq(String contactsQq) {
        this.contactsQq = contactsQq;
    }

    public String getContactsDescription() {
        return this.contactsDescription;
    }
    
    public void setContactsDescription(String contactsDescription) {
        this.contactsDescription = contactsDescription;
    }
   








}