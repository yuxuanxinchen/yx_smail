package com.yuxuan.po;

import com.yuxuan.po.User;
import java.util.Date;


/**
 * MessionInfo entity. @author MyEclipse Persistence Tools
 */
public class MessionInfo extends AbstractMessionInfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public MessionInfo() {
    }

    
    /** full constructor */
    public MessionInfo(User user, ContactsInfo contactsInfo, CustomerInfo customerInfo, String missionSubject, Date missionCompleteDate, Integer missionPrecedence, String missionDescription) {
        super(user, contactsInfo, customerInfo, missionSubject, missionCompleteDate, missionPrecedence, missionDescription);        
    }
   
}
