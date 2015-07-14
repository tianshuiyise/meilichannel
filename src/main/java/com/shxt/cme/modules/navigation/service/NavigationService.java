package com.shxt.cme.modules.navigation.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.shxt.cme.domain.Navigation;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.navigation.repository.NavigationDao;
@Service
public class NavigationService {
	
	@Autowired
	private NavigationDao navigationDao;

	
	
	

	
	public Map<String,List<Navigation>> findAll(){
		Map<String,List<Navigation>> navMaps = navigationDao.findAll();

		return navMaps;
	}
	
	public Map<String,List<Navigation>> findAllCs(){
		Map<String,List<Navigation>> navMaps = navigationDao.findAllCs();
		
		return navMaps;
	}
	
	
}
