package com.tian.service;

import java.util.List;
import com.tian.entity.Users;

/**
 * �û���Ϣҵ���߼���
 * @author Administrator
 *
 */
public interface UserService {
	/**
	 * ��ѯȫ����Ϣ
	 * @return ���ز�ѯ���
	 */
	public List<Users> getAllUserInfo();
	
	/**
	 * �����û��˺Ų�����Ϣ
	 * @param name �û��˺�
	 * @return ���ز��ҵĽ��
	 */
	public boolean getAllUserInfoById(String name);
	
	/**
	 * �޸��û���Ϣ
	 * @param u Ҫ�޸ĵ��û���Ϣ
	 * @return �����޸Ľ��
	 */
	public boolean updateUserInfo(Users u);
	
	
	/**
	 * �û���½
	 * @param name �û���
	 * @param pwd �û�����
	 * @return �����Ƿ�ɹ�
	 */
	public Users getAllUserInfoByName(String name,String pwd);
	
	/**
	 * ע���û�
	 * @param u �û���Ϣ
	 * @return ����ִ�н��
	 */
	public boolean insertUserInfo(Users u);
}
