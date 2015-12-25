package com.yuxuan.po;



/**
 * AbstractUser entity provides the base persistence definition of the User entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUser  implements java.io.Serializable {


    // Fields    

     private Integer userId;
     private RoleInfo roleInfo;
     private String userName;
     private String userAdminName;
     private String userPassword;
     private String userPhone;
     private String userEmail;
     private Integer userParentId;


    // Constructors

    /** default constructor */
    public AbstractUser() {
    }

    
    /** full constructor */
    public AbstractUser(RoleInfo roleInfo, String userName, String userAdminName, String userPassword, String userPhone, String userEmail, Integer userParentId) {
        this.roleInfo = roleInfo;
        this.userName = userName;
        this.userAdminName = userAdminName;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userParentId = userParentId;
    }

   
    // Property accessors

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public RoleInfo getRoleInfo() {
        return this.roleInfo;
    }
    
    public void setRoleInfo(RoleInfo roleInfo) {
        this.roleInfo = roleInfo;
    }

    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAdminName() {
        return this.userAdminName;
    }
    
    public void setUserAdminName(String userAdminName) {
        this.userAdminName = userAdminName;
    }

    public String getUserPassword() {
        return this.userPassword;
    }
    
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return this.userPhone;
    }
    
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return this.userEmail;
    }
    
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getUserParentId() {
        return this.userParentId;
    }
    
    public void setUserParentId(Integer userParentId) {
        this.userParentId = userParentId;
    }
   








}