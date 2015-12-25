package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.ContactsInfo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.ContactsService.java]  
 * @ClassName:    [ContactsService]   
 * @Description:  联系人信息 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午8:12:01]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface ContactsService {

	
	/**
	 * @Title: saveContacts 
	 * @Description:保存
	 * @param contactsInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:33:52]  
	 * @throws  
	 */
	public void saveContacts(ContactsInfo contactsInfo) throws Exception;
	
	/**
	 * @Title: queryContacts 
	 * @Description: 查询联系人
	 * @return  
	 * @return List<ContactsInfo> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午1:27:53]  
	 * @throws  
	 */
	public List<ContactsInfo> queryAllContacts()  throws Exception;
	
	/**
	 * @Title: queryContactsPage 
	 * @Description: 分页
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:13:56]  
	 * @throws  
	 */
	public PageResult queryContactsPage(Page page) throws Exception;
	
	/**
	 * @Title: queryContactsById 
	 * @Description: 根据ID查询联系人 
	 * @param contactsId
	 * @return
	 * @throws Exception  
	 * @return ContactsInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:50:11]  
	 * @throws  
	 */
	public ContactsInfo queryContactsById(Integer contactsId) throws Exception;
	
	/**
	 * @Title: updataContacts 
	 * @Description: 更新联系人信息
	 * @param contactsInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:22:19]  
	 * @throws  
	 */
	public void updataContacts(ContactsInfo contactsInfo) throws Exception;
	
	/**
	 * @Title: deleteContacts 
	 * @Description: 删除联系人
	 * @param cId
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:17:25]  
	 * @throws  
	 */
	public void deleteContacts(Integer cId) throws Exception;
	
	/**
	 * @Title: queryConditionContactsPage 
	 * @Description: 条件查询
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:20:31]  
	 * @throws  
	 */
	public PageResult queryConditionContactsPage(String propertyName,String value,Page page) throws Exception;
		
		

	
}
