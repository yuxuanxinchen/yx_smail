package com.ksd.service;

import java.util.List;

import com.ksd.entity.Agent;
import com.ksd.entity.City;
import com.ksd.entity.Course;
import com.ksd.entity.Message;
import com.ksd.entity.Photo;

public interface ICity {

	public List<City> findAll();
	public List<Agent> findAgentAll();
	public List<Course> findCourseAll();
	public List<Message> findMessageAll();
	public List<Photo> findPhotoAll();
}
