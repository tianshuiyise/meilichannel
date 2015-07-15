package com.shxt.cme.modules.user.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.User;
import com.shxt.cme.modules.user.repository.UserDao;
import com.shxt.framework.utils.DbUtils;

/** 
 * CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
 * Project:  nankai                                       
 * Module ID: User
 * Comments:   用户管理模块的业务逻辑层                          
 * JDK version used:      JDK1.7                              
 * Author：        董振朋                 
 * Create Date：  2013-7-31 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */

@Service
@Transactional
public class UserService {

	Logger logger =  LoggerFactory.getLogger(UserService.class);
	@Autowired
	private UserDao userDao;
	
	
	
	
	
	/**
	* @Description: 调用dao的方法
	* @param userKey 用户标识
	* @return int
	 */
	public void deleteSingle(String userKey,User currentUser){
		logger.info("service:the method deleteSingle invoked");
		userDao.deleteSingle(userKey,currentUser);
		userDao.deleteUserRoles(userKey);
	}
	
	/**
	* @Description: 调用dao的方法
	* @param userKey 用户标识
	 */
	public void deleteBatch(String[] userKeys,User currentUser){
		logger.info("service:the method deleteBatch invoked");
		for(String userKey: userKeys){
			userDao.deleteSingle(userKey,currentUser);
			userDao.deleteUserRoles(userKey);
		}
	}
	
	/**
	* @Description:	确定用户名是否存在 
	* @param user	用户类
	* @return String类型，true:不存在，false:已存在
	 */
	public String userNameConfim(User user){
		int i = userDao.userNameConfim(user);
		return 1 <= i ? "false" : "true";
	}
	
	
	/**
	* @Description:	查找用户密码是否存在 
	* @param user
	* @return int
	 */
	public int userPasswordExist(User user) {
		user.setPassword(DbUtils.NankaiEncrypt(user.getPassword()));
		return userDao.userPasswordExist(user);
	}
	
	/**
	 * @Description:用户自己修改信息
	 * @param user
	 * @return int
	 */
	public boolean editUserInfo(User user){
		user.setPassword(DbUtils.NankaiEncrypt(user.getPassword()));
		
		int i= userDao.editUserInfo(user);
		
		 return i>0 ? true :false;
		 
	}
	
	
	
}
