package com.yuxuan.po;



/**
 * User entity. @author MyEclipse Persistence Tools
 */
public class User extends AbstractUser implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public User() {
    }

    
    /** full constructor */
    public User(RoleInfo roleInfo, String userName, String userAdminName, String userPassword, String userPhone, String userEmail, Integer userParentId) {
        super(roleInfo, userName, userAdminName, userPassword, userPhone, userEmail, userParentId);        
    }
   
}
