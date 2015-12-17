package com.tian.dao.sqlimpl;

import java.sql.*;
/**
 * ���ݷ��ʲ㸸��
 * @author Administrator
 *
 */
public class BaseDao {
	//��������
	private static final String DRIVER =  "com.mysql.jdbc.Driver";
	//�������ݿ��ַ
	private static final String URL = "jdbc:mysql://localhost:3306/kugou";
	//���ݿ��˺�
	private static final String USER = "yx";
	//���ݿ�����
	private static final String PASS = "121000";
	
	
	//����һ��������������������ݿ�
	public Connection con;
	//����һ����������������ݿ����
	public PreparedStatement pstmt;
	//����һ������������Ų�ѯ�����
	public ResultSet rs;
	
	/**
	 * �ͷ���Դ
	 * @param con ���ӵ�ַ
	 * @param pstmt ���ݿ����
	 * @param rs ��ѯ�����
	 */
	public void closeConn(Connection con,PreparedStatement pstmt,ResultSet rs){
		try {
			if(rs != null){
				rs.close();
				rs = null;
			}
			if(pstmt != null){
				pstmt.close();
				pstmt = null;
			}
			if(con != null){
				con.close();
				con = null;
			}
		} catch (Exception e) {
			// TODO: handle exception'
			e.printStackTrace();
		}
	}

	/**
	 * �������ݿ�
	 * @return
	 */
	public Connection getConn(){
		try {
			//��������
			Class.forName(DRIVER);
			//�������ݿ�
			return DriverManager.getConnection(URL,USER,PASS);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ִ����ɾ�Ĳ���
	 * @param sql sql���
	 * @param objects �ɱ�����б�
	 * @return ����ִ�н��
	 */
	public int executeUpdate(String sql,Object...objects){
		try {
			this.con = this.getConn();
			this.pstmt = this.con.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				this.pstmt.setObject(i + 1, objects[i]);
			}
			return this.pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.closeConn(con, pstmt, rs);
		}
		return 0;
	}

	/**
	 * ִ�в�ѯ����
	 * @param sql sql���
	 * @param objects �ɱ�����б�
	 * @return ����ִ�н��
	 */
	public ResultSet executeQuery(String sql , Object...objects){
		try {
			this.con = this.getConn();
			this.pstmt = this.con.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				this.pstmt.setObject(i + 1, objects[i]);
			}
			return this.pstmt.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

}
