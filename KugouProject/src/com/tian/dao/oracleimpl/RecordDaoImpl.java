package com.tian.dao.oracleimpl;

import java.util.ArrayList;
import java.util.List;

import com.tian.dao.RecordDao;
import com.tian.entity.Record;

public class RecordDaoImpl extends BaseDao implements RecordDao{

	public boolean recordInfo(Record red) {
		// TODO Auto-generated method stub
		try {
			String sql = "insert into Record values(?,?, convert(varchar, getdate(),120))";
			if(super.executeUpdate(sql, red.getRecordIP(),red.getRecordName()) > 0){
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public List<Record> getAllRecordInfo() {
		// TODO Auto-generated method stub
		List<Record> list = new ArrayList<Record>();
		try {
			String sql = "select * from Record order by RecordDate desc";
			super.rs = super.executeQuery(sql);
			while(super.rs.next()){
				Record r = new Record(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4));
				list.add(r);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

	public int getAllRecordcount(String name) {
		// TODO Auto-generated method stub
		int count = 0;
		try {
			String sql = "select * from Record where RecordName = ?";
			super.rs = super.executeQuery(sql, name);
			while(super.rs.next()){
				count ++;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return count;
	}
}
