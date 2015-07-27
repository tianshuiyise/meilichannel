package com.shxt.cme.modules.register.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.User;
import com.shxt.cme.modules.register.respository.RegisterDao;


@Service
@Transactional
public class RegisterService {
	Logger logger = LoggerFactory.getLogger(RegisterService.class);
	@Autowired
	RegisterDao registerDao;
	public String usernameCheck(String name){
		
		return registerDao.usernameCheck(name);
	}
	public int userRegist(User user){
		
		return registerDao.regist(user);
	}
}
