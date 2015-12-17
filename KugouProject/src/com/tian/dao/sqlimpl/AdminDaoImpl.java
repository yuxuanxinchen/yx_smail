package com.tian.dao.sqlimpl;


import com.tian.dao.AdminDao;
import com.tian.entity.Admins;

public class AdminDaoImpl extends BaseDao implements AdminDao{

	public Admins getAllAdminInfo(String name, String pwd) {
		// TODO Auto-generated method stub
		try {
			String sql = "select * from Admins where AdminName= ? and AdminPwd= ? ";
			super.rs = super.executeQuery(sql, name,pwd);
			while (super.rs.next()) {
				return new Admins(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return null;
	}

}
