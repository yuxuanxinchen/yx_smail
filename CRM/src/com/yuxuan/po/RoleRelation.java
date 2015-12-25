package com.yuxuan.po;



/**
 * RoleRelation entity. @author MyEclipse Persistence Tools
 */
public class RoleRelation extends AbstractRoleRelation implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public RoleRelation() {
    }

    
    /** full constructor */
    public RoleRelation(MenuInfo menuInfo, RoleInfo roleInfo, Integer roleRelactionAccess) {
        super(menuInfo, roleInfo, roleRelactionAccess);        
    }
   
}
