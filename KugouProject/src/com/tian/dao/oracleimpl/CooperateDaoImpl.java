package com.tian.dao.oracleimpl;

import java.util.*;

import com.tian.dao.CooperateDao;
import com.tian.entity.Cooperate;

public class CooperateDaoImpl extends BaseDao implements CooperateDao{

	public List<Cooperate> getAllCooperateInfo() {
		// TODO Auto-generated method stub
		List<Cooperate> list = new ArrayList<Cooperate>();
		try {
			String sql = "select * from Cooperate";
			super.rs = super.executeQuery(sql);
			while(super.rs.next()){
			Cooperate cooperate = new Cooperate(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3));
			list.add(cooperate);
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return list;
	}

	
	
}
