package com.yuxuan.service;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.DataLevel;
import com.yuxuan.po.Sjzdxx;

import java.util.List;
import java.util.concurrent.ExecutionException;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.CustomerInfoService.java]  
 * @ClassName:    [CustomerInfoService]   
 * @Description: 客户信息接口类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午8:50:52]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface CustomerInfoService{
	
  /**
   * @Title: getAllKhjb 
   * @Description: 获取所有级别信息
   * @return
   * @throws Exception  
   * @return List<DataLevel> 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:49:45]  
   * @throws  
   */
  public abstract List<DataLevel> getAllKhjb() throws Exception;

  /**
   * @Title: getAllCustomerType 
   * @Description: 获取客户类型 
   * @return
   * @throws Exception  
   * @return List<Sjzdxx> 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:51:01]  
   * @throws  
   */
  public abstract List<Sjzdxx> getAllCustomerType() throws Exception;

  /**
   * @Title: getAllKhly 
   * @Description:获取客户来源
   * @return
   * @throws Exception  
   * @return List<Sjzdxx> 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:51:13]  
   * @throws  
   */
  public abstract List<Sjzdxx> getAllKhly() throws Exception;

  /**
   * @Title: getAllKhxz 
   * @Description: 获取客户性质
   * @return
   * @throws Exception  
   * @return List<Sjzdxx> 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:51:27]  
   * @throws  
   */
  public abstract List<Sjzdxx> getAllKhxz()  throws Exception;

  /**
   * @Title: getAllKhyh 
   * @Description: 获取开户银行信息
   * @return
   * @throws Exception  
   * @return List<Sjzdxx> 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:51:54]  
   * @throws  
   */
  public abstract List<Sjzdxx> getAllKhyh()  throws Exception;

  /**
   * @Title: save 
   * @Description: 保存用户数据
   * @param paramCustomerInfo
   * @throws Exception  
   * @return void 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:52:10]  
   * @throws  
   */
  public abstract void save(CustomerInfo paramCustomerInfo) throws Exception;
  
  /**
   * @Title: findCustomerName 
   * @Description:判断名是否存在
   * @param customerName
   * @return
   * @throws Exception  
   * @return CustomerInfo 
   * @Author:[yuxuan]
   * @Date:[2014-上午8:52:19]  
   * @throws  
   */
   public CustomerInfo findCustomerName(String customerName) throws Exception;

   /**
    * @Title: findAllCustomerInfos 
    * @Description: 返回所有的客户信息
    * @return
    * @throws Exception  
    * @return List<CustomerInfo> 
    * @Author:[yuxuan]
    * @Date:[2014-上午10:30:55]  
    * @throws  
    */
   public List<CustomerInfo> findAllCustomerInfos() throws Exception ;

   /**
    * @Title: findPageAll 
    * @Description: 分页
    * @param page
    * @return
    * @throws Exception  
    * @return List<CustomerInfo> 
    * @Author:[yuxuan]
    * @Date:[2014-下午12:21:55]  
    * @throws  
    */
   public PageResult findPageAll(Page page) throws Exception;
   
   /**
    * @Title: findByCustomerInfoDatils 
    * @Description: 根据ID获取客户信息
    * @param customerId
    * @return
    * @throws Exception  
    * @return CustomerInfo 
    * @Author:[yuxuan]
    * @Date:[2014-下午1:20:28]  
    * @throws  
    */
   public CustomerInfo findByCustomerInfoDatils(Integer customerId) throws Exception;
   
   
   /**
    * @Title: updateCustomerInfo 
    * @Description: 更新客户信息
    * @param customerInfo
    * @throws Exception  
    * @return void 
    * @Author:[yuxuan]
    * @Date:[2014-下午3:26:58]  
    * @throws  
    */
   public void updateCustomerInfo(CustomerInfo customerInfo) throws Exception;
   
   /**
    * @Title: deleteCustomerInfo 
    * @Description: 删除
    * @param cuctomerId
    * @throws Exception  
    * @return void 
    * @Author:[yuxuan]
    * @Date:[2014-下午3:52:07]  
    * @throws  
    */
   public void deleteCustomerInfo(Integer cuctomerId) throws Exception;
   
   /**
    * @Title: queryByProperty 
    * @Description: 分类搜索
    * @param proName
    * @param value
    * @return
    * @throws Exception  
    * @return List<CustomerInfo> 
    * @Author:[yuxuan]
    * @Date:[2014-下午5:35:25]  
    * @throws  
    */
   public List<CustomerInfo> queryByProperty(String proName,String value) throws Exception;
   
   /**
    * @Title: findByPropertyPage 
    * @Description: 分页
    * @param propertyName
    * @param value
    * @param page
    * @return
    * @throws Exception  
    * @return List 
    * @Author:[yuxuan]
    * @Date:[2014-下午6:11:28]  
    * @throws  
    */
   public PageResult findByPropertyPage(String propertyName, Object value,Page page) throws Exception;
   
   /**
    * @Title: queryCustomerInfoById 
    * @Description:根据ID查询
    * @param id
    * @return
    * @throws Exception  
    * @return CustomerInfo 
    * @Author:[yuxuan]
    * @Date:[2014-下午7:00:05]  
    * @throws  
    */
   public CustomerInfo queryCustomerInfoById(Integer id) throws Exception;
   
}

