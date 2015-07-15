package com.shxt.cme.modules.login.service;
/** 
 * CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
 * Project:  nankai                                       
 * Module ID: LoginService
 * Comments:   登录模块业务逻辑层                                               
 * JDK version used:      JDK1.7                              
 * Author：        栾喜员                
 * Create Date：  2013-8-29 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Menu;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.login.repository.LoginDao;
import com.shxt.framework.utils.DbUtils;

@Service
@Transactional
public class LoginService {
	Logger logger =  LoggerFactory.getLogger(LoginService.class);
	
	@Autowired
	private LoginDao loginDao;
	
	public List<Menu> findMenuLevel1ByRoleKey(int roleKey) {
		return loginDao.findMenuLevel1ByRoleKey(roleKey);
	}
	public List<Menu> findMenuLevel2ByRoleKey(int roleType,
			int groupSequence) {
		return loginDao.findMenuLevel2ByRoleKey(roleType, groupSequence);
	}
	
	/**
	 * 获取用户信息
	* @Description: 
	* @param user
	* @return User
	 */
	public User findUserInfo(User user) {
	//	user.setPassword(DbUtils.NankaiEncrypt(user.getPassword()));
		System.out.println("密码为："+DbUtils.NankaiEncrypt(user.getPassword()));
		return loginDao.findUserInfo(user);
	}
	public User findUserInfo1(User user) {
		user.setPassword(DbUtils.NankaiEncrypt(user.getPassword()));
		System.out.println("密码为："+DbUtils.NankaiEncrypt(user.getPassword()));
		return loginDao.findUserInfo1(user);
	}
	/**
	* @Description: 专家用户登录
	* @param user
	* @return User
	*//*
	public Experts findExpertsInfo(User user) {
		// TODO Auto-generated method stub
		user.setPassword(DbUtils.NankaiEncrypt(user.getPassword()));
		return loginDao.findExpertsInfo(user);
	}*/
}
