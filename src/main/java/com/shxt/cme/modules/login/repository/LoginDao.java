package com.shxt.cme.modules.login.repository;
/** 
 * CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
 * Project:  nankai                                       
 * Module ID: LoginDao
 * Comments:  登录模块业务数据数据持久层                                            
 * JDK version used:      JDK1.7                              
 * Author：        栾喜员                
 * Create Date：  2013-8-29 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.tags.EscapeBodyTag;

import com.shxt.cme.domain.Menu;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;

@Repository
public class LoginDao extends BaseDao {

	Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	public List<Menu> findMenuLevel1ByRoleKey(int roleKey) {
		String sql = " select * "
				+ " from tb_menu "
				+ " where menuLevel = 1 and deleteFlag = 0  "
				+ " order by groupSequence ";
		return query(sql, new MenuNameRowMapper());
	}

	
	/**
	 * 获取用户信息
	* @Description: 
	* @param user
	* @return User
	 */
	public User findUserInfo(User user) {
		StringBuffer sql = new StringBuffer();

	    sql.append(" SELECT * ");
	     		
	    sql.append(" FROM ");
	    sql.append(" t_user WHERE user_name=? AND password=? ");
		Object[] args = {user.getUserName(), user.getPassword()};
		return queryForObject(sql.toString(), args, new UserRowMapper());
	}
	public User findUserInfo1(User user) {
		StringBuffer sql = new StringBuffer();

	    sql.append(" SELECT t.userKey,t.PASSWORD,t.unitKey,t.userName,t.userType,tu.unitName, ");
	    sql.append(" tu.unitCode,tu.postcode,tu.unitState,tu.upUnitKey,tu.telephone ,");
	    sql.append(" tu.email,tu.unitAddress,tu.createrKey,tu.createDate,");    		
	    sql.append(" tu.modifierKey,tu.modifyDate,tu.deleteFlag,t.roleType,tu.qq FROM ");
	    sql.append(" tb_user t,tb_unit tu WHERE t.unitKey=tu.unitKey and t.userKey=? ");
		Object[] args = {user.getUserType()};
		return queryForObject(sql.toString(), args, new UserRowMapper());
	}
	
	
	public class UserRowMapper implements ParameterizedRowMapper<User>{

		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();
			user.setUserType(rs.getInt("Type"));
			user.setUserName(rs.getString("user_name"));
			user.setPassword(rs.getString("password"));
			user.setUserSex(rs.getString("user_sex"));
			user.setUserId(rs.getString("user_id"));
			user.setUserEmail(rs.getString("user_email"));
			user.setMessage(rs.getString("message"));
			user.setImageAddress(rs.getString("image_address"));
			/*user.setUnitKey(rs.getString("unitKey"));
			user.setUserType(rs.getInt("userType"));
			user.setRoleType(rs.getString("roleType"));
			Unit unit=new Unit();
			unit.setUnitName(rs.getString("unitName"));
			unit.setUnitCode(rs.getString("unitCode"));
			unit.setPostcode(rs.getString("postcode"));
			unit.setUnitState(rs.getString("unitState"));
			unit.setUpUnitKey(rs.getString("upUnitKey"));
			unit.setTelephone(rs.getString("telephone"));
			unit.setEmail(rs.getString("email"));
			unit.setUnitAddress(rs.getString("unitAddress"));
			unit.setCreaterKey(rs.getString("createrKey"));
			unit.setCreateDate(rs.getString("createDate"));
			unit.setModifierKey(rs.getString("modifierKey"));
			unit.setModifyDate(rs.getString("modifyDate"));
			unit.setDeleteFlag(rs.getString("deleteFlag"));
			unit.setQq(rs.getString("qq"));
			user.setUnit(unit);*/
			
			return user;
		}
	}
	public class MenuRowMapper implements ParameterizedRowMapper<Menu>{

		@Override
		public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
			Menu menu = new Menu();
			
			menu.setCreaterKey(rs.getString("createrKey"));
			menu.setDeleteFlag(rs.getString("deleteFlag"));
			menu.setGroupSequence(rs.getString("groupSequence"));
			menu.setMenuKey(rs.getString("menuKey"));
			menu.setMenuLevel(rs.getString("menuLevel"));
			menu.setMenuName(rs.getString("menuName"));
			menu.setMenuSequence(rs.getString("menuSequence"));
			menu.setMenuURL(rs.getString("menuURL"));
			menu.setParentMenuKey(rs.getString("parentMenuKey"));
			if(rs.getString("parentMenuKey") != null && !rs.getString("parentMenuKey").equals("")) {
				menu.setParentMenuName(getMenuById(rs.getString("parentMenuKey")).getMenuName());
			}
			menu.setRoleType(rs.getInt("roleType"));
			menu.setRoleName(rs.getString("roleName"));
			return menu;
		}
	}
	public Menu getMenuById(String id) {
		// TODO Auto-generated method stub
		String sql = " select * "
				+ " from sys_menu "
				+ " where deleteFlag = 0 and menuKey = '" + id + "' ";
		return queryForObject(sql, null, new MenuNameRowMapper());
	}
	
	public List<Menu> findMenuLevel2ByRoleKey(int roleKey) {
		String sql = " SELECT menuKey,menuName,menuLevel,menuSequence,menuURL,roleType,parentMenuKey " +
				" FROM tb_menu WHERE deleteFlag=0 AND menuLevel =2 and roleType = "+roleKey+" "
				+ " order by menuSequence ";
		return query(sql, new MenuNameRowMapper());
	}
	
	public class MenuNameRowMapper implements ParameterizedRowMapper<Menu>{

		@Override
		public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
			Menu menu = new Menu();
			String menuKey=rs.getString("menuKey");
			String menuLevel=rs.getString("menuLevel");
			menu.setMenuKey(menuKey);
			menu.setMenuLevel(menuLevel);
			menu.setMenuName(rs.getString("menuName"));
			menu.setMenuSequence(rs.getString("menuSequence"));
			menu.setMenuURL(rs.getString("menuURL"));
			//menu.setParentMenuKey(parentMenuKey);
			menu.setRoleType(rs.getInt("roleType"));
			
			if(menuKey!=null && !("").equals(menuKey) && menuLevel.equals("2")){
				List<Menu> subMenuList=findSUbMenu(menuKey);
				menu.setSubMenuList(subMenuList);
			}
			
			return menu;
		}

		/** @Description: TODO
		 * @param parentMenuKey
		 * @return  
		 * @return: List<Menu>
		*/
		
		private List<Menu> findSUbMenu(String parentMenuKey) {
			
			String sql = " SELECT menuKey,menuName,menuLevel,menuSequence,menuURL,roleType,parentMenuKey " +
					" FROM tb_menu WHERE deleteFlag=0 AND menuLevel =3 and parentMenuKey = '"+parentMenuKey+"' "
					+ " order by menuSequence ";
			return query(sql, new MenuNameRowMapper());
		}
	}
	/**
	* @Description: 专家登录
	* @param user
	* @return User
	*//*
	public Experts findExpertsInfo(User user) {
		// TODO Auto-generated method stub
		String sql="SELECT expertKey,expertName,expertPhone,expertBank,"
				+ "expertEmail,expertQQ,expertAccounts,workUnit,createrKey,"
				+ "createDate,modifierKey,modifyDate,deleteFlag,expertYear,"
				+ "expertUserName,expertPassword,expertUserState FROM tb_expert "
				+ " WHERE deleteFlag=0 and expertUserName=? AND expertPassword=? ";
		Object[] args = {user.getUserName(), user.getPassword()};
		return queryForObject(sql, args, new ExpertsRowMapper());
	}
	public class ExpertsRowMapper implements ParameterizedRowMapper<Experts>{

		@Override
		public Experts mapRow(ResultSet rs, int rowNum) throws SQLException {
			Experts experts = new Experts();
			experts.setExpertKey(rs.getString("expertKey"));
			experts.setExpertName(rs.getString("expertName"));
			experts.setExpertPhone(rs.getString("expertPhone"));
			experts.setExpertBank(rs.getString("expertBank"));
			experts.setExpertAccounts(rs.getString("expertAccounts"));
			experts.setExpertEmail(rs.getString("expertEmail"));
			experts.setCreateDate(rs.getString("createDate"));
			experts.setCreaterKey(rs.getString("createrKey"));
			experts.setDeleteFlag(rs.getString("deleteFlag"));
			experts.setExpertPassword(rs.getString("expertPassword"));
			experts.setExpertQQ(rs.getString("expertQQ"));
			experts.setExpertUserName(rs.getString("expertUserName"));
			experts.setExpertUserState(rs.getString("expertUserState"));
			experts.setExpertYear(rs.getString("expertYear"));
			experts.setModifierKey(rs.getString("modifierKey"));
			experts.setModifyDate(rs.getString("modifyDate"));
			experts.setWorkUnit(rs.getString("workUnit"));
			return experts;
		}
	}
	*/
	/** @Description: TODO
	 * @return  
	 * @return: List<Menu>
	*/
	
	public List<Menu> findMenuLevel1() {
		String sql = " select * "
				+ " from tb_menu "
				+ " where menuLevel = 1 and deleteFlag = 0  "
				+ " order by groupSequence ";
		return query(sql, new MenuNameRowMapper());
	}
}
