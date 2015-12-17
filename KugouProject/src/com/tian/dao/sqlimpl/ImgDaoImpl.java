package com.tian.dao.sqlimpl;

import java.util.*;
import com.tian.dao.ImgDao;
import com.tian.entity.Img;

public class ImgDaoImpl extends BaseDao implements ImgDao{

	public List<Img> getImgInfo() {
		// TODO Auto-generated method stub
		List<Img> list = new ArrayList<Img>();
		try {
			String sql = "select * from img";
			super.rs = super.executeQuery(sql);
			while (super.rs.next()) {
				Img img = new Img(super.rs.getInt(1),super.rs.getString(2),super.rs.getString(3),super.rs.getString(4));
				list.add(img);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			super.closeConn(con, pstmt, rs);
		}
		return list;
	}

}
