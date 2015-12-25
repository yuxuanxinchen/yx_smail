package com.yuxuan.po;

import java.util.HashSet;
import java.util.Set;


/**
 * AbstractMenuInfo entity provides the base persistence definition of the MenuInfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractMenuInfo  implements java.io.Serializable {


    // Fields    

     private Integer menuId;
     private String menuName;
     private Set roleRelations = new HashSet(0);


    // Constructors

    /** default constructor */
    public AbstractMenuInfo() {
    }

    
    /** full constructor */
    public AbstractMenuInfo(String menuName, Set roleRelations) {
        this.menuName = menuName;
        this.roleRelations = roleRelations;
    }

   
    // Property accessors

    public Integer getMenuId() {
        return this.menuId;
    }
    
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return this.menuName;
    }
    
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public Set getRoleRelations() {
        return this.roleRelations;
    }
    
    public void setRoleRelations(Set roleRelations) {
        this.roleRelations = roleRelations;
    }
   








}