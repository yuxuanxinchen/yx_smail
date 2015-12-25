package com.yuxuan.po;

import java.util.Date;


/**
 * ContactsInfo entity. @author MyEclipse Persistence Tools
 */
public class ContactsInfo extends AbstractContactsInfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public ContactsInfo() {
    }

    
    /** full constructor */
    public ContactsInfo(CustomerInfo customerInfo, String contactsName, String contactsSex, Date contactsBirthday, String contactsJob, String contactsOfficePhone, String contactsPhone, String contactsEmail, Date contactsRegister, String contactsQq, String contactsDescription) {
        super(customerInfo, contactsName, contactsSex, contactsBirthday, contactsJob, contactsOfficePhone, contactsPhone, contactsEmail, contactsRegister, contactsQq, contactsDescription);        
    }
   
}
