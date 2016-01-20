package com.ksd.dao;

import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.bson.BSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.druid.support.json.JSONUtils;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.QueryOperators;

public class Mic {

	@Autowired
	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws UnknownHostException, MongoException {
		
		Mongo m = new Mongo("192.168.1.240",27017);
		DB db = m.getDB("ksd");
		
		
//		  for (String name : m.getDatabaseNames()) {
//	            System.out.println("dbName: " + name);
//	        }
		
		
		DBCollection dc = db.getCollection("Agent");
		long cus = dc.getCount();
		
//		System.out.println(dd.get("name"));
//		Map maps   = new HashMap();
//		maps.put("gender", "女");
//		maps.put("name", "明晶晶");
//		DBCursor dd = dc.find(new BasicDBObject(maps));
			DBCursor dd = dc.find(new BasicDBObject("principalId",new BasicDBObject("$gt",50))).skip(9).limit(10).sort(new BasicDBObject("memberId",1));
			//( DBObject key , DBObject cond , DBObject initial , String reduce
			DBObject ds = dc.group(new BasicDBObject("gender",true),new BasicDBObject("gender","男"),new BasicDBObject("count",0),"function Reduce(doc,out){out.count++}");
//			System.out.println(ds);
			System.out.println(ds.toString());	
			@SuppressWarnings("rawtypes")
			List<HashMap<String,Object>> lsits = (List<HashMap<String,Object>>) JSONUtils.parse(ds.toString());
			for (HashMap j : lsits) {
				System.out.println(j.get("gender"));
				System.out.println(j.get("count"));
			}
			
//			while(dd.hasNext()){
//			System.out.println(dd.next().get("name"));
//		}
			
			
		//https://github.com/yuxuanxinchen/yx_smail.git
		/*连接名*/
//		 for (String name : db.getCollectionNames()) {
//	            System.out.println("collectionName: " + name);
//	        }
		 
//		    DBCursor cur = dc.find();
//	        while (cur.hasNext()) {
//	            System.out.println(cur.next());
//	        }
//	        System.out.println(cur.count());
//	        System.out.println(cur.getCursorId());
//		 
		 
		
//		System.out.println(cus);
//		while(cus.hasNext()){
//		System.out.println(cus.next().get("name"));
//		}
		
		
	}
	
	
}

