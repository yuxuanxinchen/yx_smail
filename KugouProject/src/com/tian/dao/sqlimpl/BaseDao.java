package com.tian.dao.sqlimpl;

import java.sql.*;
/**
 * 数据访问层父类
 * @author Administrator
 *
 */
public class BaseDao {
	//加载驱动
	private static final String DRIVER =  "com.mysql.jdbc.Driver";
	//链接数据库地址
	private static final String URL = "jdbc:mysql://localhost:3306/kugou";
	//数据库账号
	private static final String USER = "yx";
	//数据库密码
	private static final String PASS = "121000";
	
	
	//声明一个变量用来存放链接数据库
	public Connection con;
	//声明一个变量用来存放数据库操作
	public PreparedStatement pstmt;
	//生命一个变量用来存放查询结果集
	public ResultSet rs;
	
	/**
	 * 释放资源
	 * @param con 链接地址
	 * @param pstmt 数据库操作
	 * @param rs 查询结果集
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
	 * 链接数据库
	 * @return
	 */
	public Connection getConn(){
		try {
			//加载驱动
			Class.forName(DRIVER);
			//链接数据库
			return DriverManager.getConnection(URL,USER,PASS);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 执行增删改操作
	 * @param sql sql语句
	 * @param objects 可变参数列表
	 * @return 返回执行结果
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
	 * 执行查询操作
	 * @param sql sql语句
	 * @param objects 可变参数列表
	 * @return 返回执行结果
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
