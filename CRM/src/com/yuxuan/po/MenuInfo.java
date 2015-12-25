package com.yuxuan.po;

import java.util.Set;


/**
 * MenuInfo entity. @author MyEclipse Persistence Tools
 */
public class MenuInfo extends AbstractMenuInfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public MenuInfo() {
    }

    
    /** full constructor */
    public MenuInfo(String menuName, Set roleRelations) {
        super(menuName, roleRelations);        
    }
   
}
