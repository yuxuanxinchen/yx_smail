package com.tian.dao.sqlimpl;

import java.util.ArrayList;
import java.util.List;

import com.tian.dao.UserDao;
import com.tian.entity.Users;

public class UserDaoImpl extends BaseDao implements UserDao {

	public List<Users> getAllUserInfo() {
		List<Users> list = new ArrayList<Users>();
		try {
			String sql = "select * from Users";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Users u = new Users(super.rs.getInt(1), super.rs.getString(2),
						super.rs.getString(3), super.rs.getString(4), super.rs
								.getInt(5), super.rs.getInt(6));
				list.add(u);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public Users getAllUserInfoById(String name) {
		// TODO Auto-generated method stub
		try {
			String sql = "select * from Users where UserName = ?";
			super.rs = super.executeQuery(sql, name);
			if (super.rs.next()) {
				return new Users(super.rs.getInt(1), super.rs.getString(2),
						super.rs.getString(3), super.rs.getString(4), super.rs
								.getInt(5), super.rs.getInt(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			super.closeConn(con, pstmt, rs);
		}
		return null;
	}

	public boolean updateUserInfo(Users u) {
		// TODO Auto-generated method stub
		try {
			String sql = "";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	public Users getAllUserInfoByName(String name, String pwd) {
		// TODO Auto-generated method stub
		try {
			String sql = "select * from Users where UserName= ? and UserPwd= ? ";
			super.rs = super.executeQuery(sql, name, pwd);
			if (super.rs.next()) {
				return new Users(super.rs.getInt(1), super.rs.getString(2),
						super.rs.getString(3), super.rs.getString(4), super.rs
								.getInt(5), super.rs.getInt(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			super.closeConn(con, pstmt, rs);
		}
		return null;
	}

	public boolean insertUserInfo(Users u) {
		// TODO Auto-generated method stub
		try {
			String sql = "insert into Users values (null,?,?,?,0,1)";
			Object[] objects = {u.getUserName(),u.getUserEmail(),u.getUserPwd()};
			if(super.executeUpdate(sql, objects) > 0){
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

}
