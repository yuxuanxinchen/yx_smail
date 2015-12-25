package com.yuxuan.po;

import java.util.HashSet;
import java.util.Set;


/**
 * AbstractRoleInfo entity provides the base persistence definition of the RoleInfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractRoleInfo  implements java.io.Serializable {


    // Fields    

     private Integer roleId;
     private String roleName;
     private Set roleRelations = new HashSet(0);


    // Constructors

    /** default constructor */
    public AbstractRoleInfo() {
    }

    
    /** full constructor */
    public AbstractRoleInfo(String roleName, Set roleRelations) {
        this.roleName = roleName;
        this.roleRelations = roleRelations;
    }

   
    // Property accessors

    public Integer getRoleId() {
        return this.roleId;
    }
    
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return this.roleName;
    }
    
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Set getRoleRelations() {
        return this.roleRelations;
    }
    
    public void setRoleRelations(Set roleRelations) {
        this.roleRelations = roleRelations;
    }
   








}