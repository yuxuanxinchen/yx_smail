package com.ksd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.document.mongodb.MongoTemplate;
import org.springframework.data.document.mongodb.query.Query;
import org.springframework.stereotype.Service;

import com.ksd.entity.Agent;
import com.ksd.entity.City;
import com.ksd.entity.Course;
import com.ksd.entity.Message;
import com.ksd.entity.Photo;

@Service
public class CityService implements ICity{

	@Autowired
	MongoTemplate mongoTemplate; 
	
	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	@Override
	public List<City> findAll() {
		mongoTemplate.setDefaultCollectionName("City");
		return mongoTemplate.find(new Query(), City.class);
	}
	
	@Override
	public List<Agent> findAgentAll(){
		mongoTemplate.setDefaultCollectionName("Agent");
		return mongoTemplate.find(new Query(), Agent.class);
//		return mongoTemplate.find(new Query(Criteria.where("position").is("Ñ§Éú")).limit(20), Agent.class);
	}
	
	@Override
	public List<Course> findCourseAll(){
		mongoTemplate.setDefaultCollectionName("Course");
		return mongoTemplate.find(new Query(), Course.class);
	}
	
	@Override	
	public List<Message> findMessageAll(){
		mongoTemplate.setDefaultCollectionName("Message");
		return mongoTemplate.find(new Query(), Message.class);
	}
	
	@Override	
	public List<Photo> findPhotoAll(){
		mongoTemplate.setDefaultCollectionName("Photos");
		return mongoTemplate.find(new Query(), Photo.class);
	}
	
	
   
	
	
}
