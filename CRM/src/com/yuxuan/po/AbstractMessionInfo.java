package com.yuxuan.po;

import com.yuxuan.po.User;
import java.util.Date;


/**
 * AbstractMessionInfo entity provides the base persistence definition of the MessionInfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractMessionInfo  implements java.io.Serializable {


    // Fields    

     private Integer missionId;
     private User user;
     private ContactsInfo contactsInfo;
     private CustomerInfo customerInfo;
     private String missionSubject;
     private Date missionCompleteDate;
     private Integer missionPrecedence;
     private String missionDescription;


    // Constructors

    /** default constructor */
    public AbstractMessionInfo() {
    }

    
    /** full constructor */
    public AbstractMessionInfo(User user, ContactsInfo contactsInfo, CustomerInfo customerInfo, String missionSubject, Date missionCompleteDate, Integer missionPrecedence, String missionDescription) {
        this.user = user;
        this.contactsInfo = contactsInfo;
        this.customerInfo = customerInfo;
        this.missionSubject = missionSubject;
        this.missionCompleteDate = missionCompleteDate;
        this.missionPrecedence = missionPrecedence;
        this.missionDescription = missionDescription;
    }

   
    // Property accessors

    public Integer getMissionId() {
        return this.missionId;
    }
    
    public void setMissionId(Integer missionId) {
        this.missionId = missionId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public ContactsInfo getContactsInfo() {
        return this.contactsInfo;
    }
    
    public void setContactsInfo(ContactsInfo contactsInfo) {
        this.contactsInfo = contactsInfo;
    }

    public CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }
    
    public void setCustomerInfo(CustomerInfo customerInfo) {
        this.customerInfo = customerInfo;
    }

    public String getMissionSubject() {
        return this.missionSubject;
    }
    
    public void setMissionSubject(String missionSubject) {
        this.missionSubject = missionSubject;
    }

    public Date getMissionCompleteDate() {
        return this.missionCompleteDate;
    }
    
    public void setMissionCompleteDate(Date missionCompleteDate) {
        this.missionCompleteDate = missionCompleteDate;
    }

    public Integer getMissionPrecedence() {
        return this.missionPrecedence;
    }
    
    public void setMissionPrecedence(Integer missionPrecedence) {
        this.missionPrecedence = missionPrecedence;
    }

    public String getMissionDescription() {
        return this.missionDescription;
    }
    
    public void setMissionDescription(String missionDescription) {
        this.missionDescription = missionDescription;
    }
   








}