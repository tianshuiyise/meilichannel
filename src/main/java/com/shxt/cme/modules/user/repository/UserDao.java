package com.shxt.cme.modules.user.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.google.common.collect.Maps;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.serivce.BusinessLogger;
import com.shxt.framework.utils.DbUtils;

/** 
 * CopyRright (c)2014-2015:   大连校联有限公司 
 * Project:  cme                                       
 * Module ID: User
 * Comments:   用户管理模块的数据持久层                          
 * JDK version used:      JDK1.7                              
 * Author：                    
 * Create Date：  
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */

@Repository
public class UserDao extends BaseDao{

	Logger logger = LoggerFactory.getLogger(UserDao.class);
	
	BusinessLogger businessLogger = new BusinessLogger();
	
	
	/**
	* @Description:	获取管理员身份的用户 
	* @return List<User>
	 */
	public List<User> findUserWithTypeAdmin() {
		String sql = " select UserKey,OrginizationKey,UserName,Password,UserID,IDCard,NameCh,NameEn, " +
				" GenderCode,Birthday,HomeTel,OfficeTel,Mobile,Fax,Email,Remark,CreatorKey,CreateDate, " +
				" ModifierKey,ModifyDate,PermissionCode,DeleteFlg " +
				" from t_gt_User " +
				" where DeleteFlg = 0 and UserType&1 = 1 ";
		return query(sql, User.class);
	}
	
	/**
	* @Description:	获取教师身份的用户 
	* @return List<User>
	 */
	public List<User> findUserWithTypeTeacher() {
		String sql = " select UserKey,OrginizationKey,UserName,Password,UserID,IDCard,NameCh,NameEn, " +
				" GenderCode,Birthday,HomeTel,OfficeTel,Mobile,Fax,Email,Remark,CreatorKey,CreateDate, " +
				" ModifierKey,ModifyDate,PermissionCode,DeleteFlg " +
				" from t_gt_User " +
				" where DeleteFlg = 0 and UserType&2 = 2 ";
		return query(sql, User.class);
	}
	
	/**
	* @Description:	获取学生身份的用户 
	* @return List<User>
	 */
	public List<User> findUserWithTypeStudent() {
		String sql = " select UserKey,OrginizationKey,UserName,Password,UserID,IDCard,NameCh,NameEn, " +
				" GenderCode,Birthday,HomeTel,OfficeTel,Mobile,Fax,Email,Remark,CreatorKey,CreateDate, " +
				" ModifierKey,ModifyDate,PermissionCode,DeleteFlg " +
				" from t_gt_User " +
				" where DeleteFlg = 0 and UserType&4 = 4 ";
		return query(sql, User.class);
	}

	
	
	
	/**
	* @Description:	删除用户的角色 
	* @param user
	* @return int
	 */
	public int deleteUserRoles(User user) {
		String sql = " update t_gt_UserRole set deleteFlg = 1 " +
				" where User_id = ? ";
		Object[] args = {user.getUserId()};
		return update(sql, args);
	}
	
	/**
	* @Description:	删除用户的角色 
	* @param user
	* @return int
	 */
	public int deleteUserRoles(String userKey) {
		String sql = " update t_gt_UserRole set deleteFlg = 1 " +
				" where UserKey = ? ";
		Object[] args = {userKey};
		return update(sql, args);
	}
	
	/**
	* @Description:	判断该用户该角色是否存在 
	* @return int
	 */
	public int userRoleExist(User user, String roleKey) {
		String sql = " select count(1) from t_gt_UserRole " +
				" where UserKey = ? and RoleKey = ? ";
		Object[] args = {user.getUserId(), roleKey};
		return queryForInt(sql, args);
	}
	
	/**
	* @Description:	修改用户角色 
	* @param user
	* @return int
	 */
	public int modifyUserRole(User user, String rolekey) {
		String sql = " update t_gt_UserRole " +
				" set deleteFlg = 0 " +
				" where UserKey = ? and RoleKey = ? ";
		Object[] args = {user.getUserId(), rolekey};
		return update(sql, args);
	}
	
	/**
	* @Description:	添加用户角色 
	* @param user
	* @param role
	* @return int
	 */
	public int addUserRole(User user, String roleKey) {
		String sql = " insert into t_gt_UserRole(UserRoleKey, UserKey, RoleKey, CreatorKey, CreateDate, DeleteFlg )" +
				" values(?,?,?,?,?,?) ";
		Object[] args = {DbUtils.getKey(), user.getUserId(), roleKey, DbUtils.getKey(), DbUtils.getTime(), 0};
		return update(sql, args);
	}
	
	
	
	
	/**
	* @Description:删除单条用户数据 
	* @param userKey 用户标识
	* @return int
	 */
	public int deleteSingle(String userKey,User currentUser){
		logger.info("dao:the method deleteSingle invoked");
		String sql = " update t_gt_User set DeleteFlg = 'true' where Userkey = ?";
		Object[] args = new Object[]{userKey};
		int i = update(sql, args);
		
		//业务日志
		if(businessLogger != null) {
			Map map = Maps.newHashMap();
			map.put("userKey", userKey);
			businessLogger.log("deleteSingle: 删除单条用户信息", "operator：" + currentUser.getUserId(), map);
		}
		return i;
	}
	
	/**
	* @Description: 批量删除用户数据
	* @param userKey	用户标识数组
	* @return void
	 */
	public void deleteBatch(String[] userKeys,User currentUser){
		logger.info("dao:the method deleteBatch invoked");
		StringBuffer sql = new StringBuffer();
		sql.append(" update t_gt_User set DeleteFlg = 1 where UserKey = ? ");
		List<Object[]> batchArgs = new ArrayList<Object[]>();
		for(String userKey: userKeys){
			Object[] args = new Object[]{userKey};
			batchArgs.add(args);
			//业务日志
			if(businessLogger != null) {
				Map map = Maps.newHashMap();
				map.put("userKey", userKey);
				businessLogger.log("deleteBatch: 批量删除用户信息", "operator：" + currentUser.getUserId(), map);
			}
			
		}
		jdbcTemplate.batchUpdate(sql.toString(), batchArgs);
	}
	
	/**
	* @Description:	根据条件查询用户名称 
	* @param user	用户实体对象
	* @return int 
	 */
	public int userNameConfim(User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("select count(1) from t_gt_User where UserName = ? and deleteFlg = 0");
		Object[] args = {user.getUserName()};
		return queryForInt(sql.toString(),args);
	}
	
	
	
	/**
	* @Description:	查找用户密码是否存在 
	* @param user
	* @return int
	 */
	public int userPasswordExist(User user) {
		String sql = " select count(1) from t_gt_User where user_id = ? and password = ? ";
		Object[] args = {user.getUserId(), user.getPassword()};
		return queryForInt(sql, args);
	}
	
	/**
	 * @Description:用户自己修改信息
	 * @param user
	 * @return int
	 */
	public int editUserInfo(User user){
		//更新用户信息
		StringBuffer sql = new StringBuffer();
		sql.append(" update tb_user set password=? ");
		sql.append(" where user_id = ? ");
		Object[] args = new Object[]{user.getPassword(),user.getUserId()};
		
		
		
		
		
		int result1 = update(sql.toString(), args);
		
		
		return result1;
	}
	
	
	
}
