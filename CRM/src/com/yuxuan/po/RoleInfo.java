package com.yuxuan.po;

import java.util.Set;


/**
 * RoleInfo entity. @author MyEclipse Persistence Tools
 */
public class RoleInfo extends AbstractRoleInfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public RoleInfo() {
    }

    
    /** full constructor */
    public RoleInfo(String roleName, Set roleRelations) {
        super(roleName, roleRelations);        
    }
   
}
