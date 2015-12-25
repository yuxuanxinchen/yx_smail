package com.yuxuan.po;

import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.User;
import java.util.Date;


/**
 * ProjectManager entity. @author MyEclipse Persistence Tools
 */
public class ProjectManager extends AbstractProjectManager implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public ProjectManager() {
    }

    
    /** full constructor */
    public ProjectManager(User user, CustomerInfo customerInfo, Schedule schedule, String projectName, String projectStatus, Date projectCreateTime, String projectSort, String projectRate, String projectDescription, String projectSummarize, String projectVerify, String projectBusiness, String remarks1, String remarks2, String remarks3, String remarks4, String remarks5) {
        super(user, customerInfo, schedule, projectName, projectStatus, projectCreateTime, projectSort, projectRate, projectDescription, projectSummarize, projectVerify, projectBusiness, remarks1, remarks2, remarks3, remarks4, remarks5);        
    }
   
}
