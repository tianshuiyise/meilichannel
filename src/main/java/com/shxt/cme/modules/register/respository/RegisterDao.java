package com.shxt.cme.modules.register.respository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
@Repository
public class RegisterDao extends BaseDao {
	
	public  String usernameCheck(String username){
		String sql="SELECT user_name FROM t_user WHERE user_name=?";
		Object[] args=new Object[]{username};
		List<User> list=query(sql, args, new RegistRowMapper());
		if(list.size()==0){
			System.out.println("sql语句查询为空");
			return "用户名可用";
		}
		else{
			System.out.println("sql语句查询不为空");
			return "用户名已被注册";
		}
		
	}
	public int regist(User user){
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf =
		new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTime = sdf.format(dt);
		
		String sql="INSERT INTO  t_user(user_id,user_name,PASSWORD,phone,deleteFlag,type,createKey,createDate) VALUES(?,?,?,?,?,?,?,?) ";
		System.out.println("userphone="+user.getPhone());
		String creatKey=UUID.randomUUID().toString();
		Object[] args=new Object[]{creatKey,
				user.getUserName(),user.getPassword(),user.getPhone(),"0","1",creatKey,currentTime};
		int i=update(sql, args);
		System.out.println("i="+i);
		return i;
	}
	private class RegistRowMapper implements
	ParameterizedRowMapper<User> {
@Override
public User mapRow(ResultSet rs, int rowNum)
		throws SQLException {
	User user = new User();
	user.setUserName(rs.getString("user_name"));
	
	return user;
}
}
}
