package com.yuxuan.po;

import com.yuxuan.po.User;
import java.util.Date;


/**
 * Schedule entity. @author MyEclipse Persistence Tools
 */
public class Schedule extends AbstractSchedule implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public Schedule() {
    }

    
    /** full constructor */
    public Schedule(User user, MessionInfo mession, String scheduleName, Date scheduleCreateTime, String scheduleStatus, Date scheduleResultDate, String scheduleDescription, String remarks1, String remarks2, String remarks3) {
        super(user, mession, scheduleName, scheduleCreateTime, scheduleStatus, scheduleResultDate, scheduleDescription, remarks1, remarks2, remarks3);        
    }
   
}
