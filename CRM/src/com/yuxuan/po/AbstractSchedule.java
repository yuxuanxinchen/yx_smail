package com.yuxuan.po;

import com.yuxuan.po.User;
import java.util.Date;


/**
 * AbstractSchedule entity provides the base persistence definition of the Schedule entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSchedule  implements java.io.Serializable {


    // Fields    

     private Integer scheduleId;
     private User user;
     private MessionInfo mession;
     private String scheduleName;
     private Date scheduleCreateTime;
     private String scheduleStatus;
     private Date scheduleResultDate;
     private String scheduleDescription;
     private String remarks1;
     private String remarks2;
     private String remarks3;


    // Constructors

    /** default constructor */
    public AbstractSchedule() {
    }

    
    /** full constructor */
    public AbstractSchedule(User user, MessionInfo mession, String scheduleName, Date scheduleCreateTime, String scheduleStatus, Date scheduleResultDate, String scheduleDescription, String remarks1, String remarks2, String remarks3) {
        this.user = user;
        this.mession = mession;
        this.scheduleName = scheduleName;
        this.scheduleCreateTime = scheduleCreateTime;
        this.scheduleStatus = scheduleStatus;
        this.scheduleResultDate = scheduleResultDate;
        this.scheduleDescription = scheduleDescription;
        this.remarks1 = remarks1;
        this.remarks2 = remarks2;
        this.remarks3 = remarks3;
    }

   
    // Property accessors

    public Integer getScheduleId() {
        return this.scheduleId;
    }
    
    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public MessionInfo getMession() {
        return this.mession;
    }
    
    public void setMession(MessionInfo mession) {
        this.mession = mession;
    }

    public String getScheduleName() {
        return this.scheduleName;
    }
    
    public void setScheduleName(String scheduleName) {
        this.scheduleName = scheduleName;
    }

    public Date getScheduleCreateTime() {
        return this.scheduleCreateTime;
    }
    
    public void setScheduleCreateTime(Date scheduleCreateTime) {
        this.scheduleCreateTime = scheduleCreateTime;
    }

    public String getScheduleStatus() {
        return this.scheduleStatus;
    }
    
    public void setScheduleStatus(String scheduleStatus) {
        this.scheduleStatus = scheduleStatus;
    }

    public Date getScheduleResultDate() {
        return this.scheduleResultDate;
    }
    
    public void setScheduleResultDate(Date scheduleResultDate) {
        this.scheduleResultDate = scheduleResultDate;
    }

    public String getScheduleDescription() {
        return this.scheduleDescription;
    }
    
    public void setScheduleDescription(String scheduleDescription) {
        this.scheduleDescription = scheduleDescription;
    }

    public String getRemarks1() {
        return this.remarks1;
    }
    
    public void setRemarks1(String remarks1) {
        this.remarks1 = remarks1;
    }

    public String getRemarks2() {
        return this.remarks2;
    }
    
    public void setRemarks2(String remarks2) {
        this.remarks2 = remarks2;
    }

    public String getRemarks3() {
        return this.remarks3;
    }
    
    public void setRemarks3(String remarks3) {
        this.remarks3 = remarks3;
    }
   








}