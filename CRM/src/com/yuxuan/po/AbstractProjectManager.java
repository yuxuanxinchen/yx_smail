package com.yuxuan.po;

import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.User;
import java.util.Date;


/**
 * AbstractProjectManager entity provides the base persistence definition of the ProjectManager entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractProjectManager  implements java.io.Serializable {


    // Fields    

     private Integer projectId;
     private User user;
     private CustomerInfo customerInfo;
     private Schedule schedule;
     private String projectName;
     private String projectStatus;
     private Date projectCreateTime;
     private String projectSort;
     private String projectRate;
     private String projectDescription;
     private String projectSummarize;
     private String projectVerify;
     private String projectBusiness;
     private String remarks1;
     private String remarks2;
     private String remarks3;
     private String remarks4;
     private String remarks5;


    // Constructors

    /** default constructor */
    public AbstractProjectManager() {
    }

    
    /** full constructor */
    public AbstractProjectManager(User user, CustomerInfo customerInfo, Schedule schedule, String projectName, String projectStatus, Date projectCreateTime, String projectSort, String projectRate, String projectDescription, String projectSummarize, String projectVerify, String projectBusiness, String remarks1, String remarks2, String remarks3, String remarks4, String remarks5) {
        this.user = user;
        this.customerInfo = customerInfo;
        this.schedule = schedule;
        this.projectName = projectName;
        this.projectStatus = projectStatus;
        this.projectCreateTime = projectCreateTime;
        this.projectSort = projectSort;
        this.projectRate = projectRate;
        this.projectDescription = projectDescription;
        this.projectSummarize = projectSummarize;
        this.projectVerify = projectVerify;
        this.projectBusiness = projectBusiness;
        this.remarks1 = remarks1;
        this.remarks2 = remarks2;
        this.remarks3 = remarks3;
        this.remarks4 = remarks4;
        this.remarks5 = remarks5;
    }

   
    // Property accessors

    public Integer getProjectId() {
        return this.projectId;
    }
    
    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }
    
    public void setCustomerInfo(CustomerInfo customerInfo) {
        this.customerInfo = customerInfo;
    }

    public Schedule getSchedule() {
        return this.schedule;
    }
    
    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public String getProjectName() {
        return this.projectName;
    }
    
    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectStatus() {
        return this.projectStatus;
    }
    
    public void setProjectStatus(String projectStatus) {
        this.projectStatus = projectStatus;
    }

    public Date getProjectCreateTime() {
        return this.projectCreateTime;
    }
    
    public void setProjectCreateTime(Date projectCreateTime) {
        this.projectCreateTime = projectCreateTime;
    }

    public String getProjectSort() {
        return this.projectSort;
    }
    
    public void setProjectSort(String projectSort) {
        this.projectSort = projectSort;
    }

    public String getProjectRate() {
        return this.projectRate;
    }
    
    public void setProjectRate(String projectRate) {
        this.projectRate = projectRate;
    }

    public String getProjectDescription() {
        return this.projectDescription;
    }
    
    public void setProjectDescription(String projectDescription) {
        this.projectDescription = projectDescription;
    }

    public String getProjectSummarize() {
        return this.projectSummarize;
    }
    
    public void setProjectSummarize(String projectSummarize) {
        this.projectSummarize = projectSummarize;
    }

    public String getProjectVerify() {
        return this.projectVerify;
    }
    
    public void setProjectVerify(String projectVerify) {
        this.projectVerify = projectVerify;
    }

    public String getProjectBusiness() {
        return this.projectBusiness;
    }
    
    public void setProjectBusiness(String projectBusiness) {
        this.projectBusiness = projectBusiness;
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

    public String getRemarks4() {
        return this.remarks4;
    }
    
    public void setRemarks4(String remarks4) {
        this.remarks4 = remarks4;
    }

    public String getRemarks5() {
        return this.remarks5;
    }
    
    public void setRemarks5(String remarks5) {
        this.remarks5 = remarks5;
    }
   








}