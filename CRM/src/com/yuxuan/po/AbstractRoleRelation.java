package com.yuxuan.po;



/**
 * AbstractRoleRelation entity provides the base persistence definition of the RoleRelation entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractRoleRelation  implements java.io.Serializable {


    // Fields    

     private Integer roleRelationId;
     private MenuInfo menuInfo;
     private RoleInfo roleInfo;
     private Integer roleRelactionAccess;


    // Constructors

    /** default constructor */
    public AbstractRoleRelation() {
    }

    
    /** full constructor */
    public AbstractRoleRelation(MenuInfo menuInfo, RoleInfo roleInfo, Integer roleRelactionAccess) {
        this.menuInfo = menuInfo;
        this.roleInfo = roleInfo;
        this.roleRelactionAccess = roleRelactionAccess;
    }

   
    // Property accessors

    public Integer getRoleRelationId() {
        return this.roleRelationId;
    }
    
    public void setRoleRelationId(Integer roleRelationId) {
        this.roleRelationId = roleRelationId;
    }

    public MenuInfo getMenuInfo() {
        return this.menuInfo;
    }
    
    public void setMenuInfo(MenuInfo menuInfo) {
        this.menuInfo = menuInfo;
    }

    public RoleInfo getRoleInfo() {
        return this.roleInfo;
    }
    
    public void setRoleInfo(RoleInfo roleInfo) {
        this.roleInfo = roleInfo;
    }

    public Integer getRoleRelactionAccess() {
        return this.roleRelactionAccess;
    }
    
    public void setRoleRelactionAccess(Integer roleRelactionAccess) {
        this.roleRelactionAccess = roleRelactionAccess;
    }
   








}