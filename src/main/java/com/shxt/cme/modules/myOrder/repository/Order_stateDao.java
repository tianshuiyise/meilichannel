package com.shxt.cme.modules.myOrder.repository;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.google.common.collect.Maps;
import com.shxt.cme.domain.AcademicActivity;
import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Order;
import com.shxt.cme.domain.Order_state;
import com.shxt.cme.domain.Subject;
import com.shxt.cme.domain.TrainingCourse;
import com.shxt.cme.domain.Unit;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

@Repository
public class Order_stateDao extends BaseDao {
	public Page<Order_state> findWithPage(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("  select  order_id,order_time,appoint_time,order_price,pro_id,out_price,into_price,usefor,outstyle,state_id,state_type from (");
		sql.append(" SELECT  o.order_id as order_id ,o.order_time as order_time,o.appoint_time as appoint_time,o.order_price as order_price ,o.pro_id as pro_id ,o.out_price as out_price,o.into_price as into_price,o.usefor as usefor ,o.outstyle as outstyle ,s.state_id as state_id,s.state_type as state_type");
		sql.append(" FROM t_order o inner join t_state s");
		sql.append(" on o.order_id=s.order_id");
	
		sql.append(" ) as temp");
	//	sql.append(" order by projectType,declareState");

		Object[] args=new Object[]{};
		Page<Order_state>   a=queryForPage(sql.toString(), pageable,
				new Order_stateRowMapper(), null);
		return a;

	}
	
	

	private class Order_stateRowMapper implements
			ParameterizedRowMapper<Order_state> {
		@Override
		public Order_state mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Order_state order_state = new Order_state();
			order_state.setOrder_id(rs.getString("order_id"));
			order_state.setOrder_time(rs.getString("order_time"));
			order_state.setAppoint_time(rs.getString("appoint_time"));
			order_state.setOrder_price(rs.getString("order_price"));
			order_state.setPro_id(rs.getString("pro_id"));
/*			order_state.setMember_id(rs.getString("member_id"));
			order_state.setUser_id(rs.getString("user_id"));*/
			order_state.setOut_price(rs.getString("out_price"));
			order_state.setInto_price(rs.getString("into_price"));
			order_state.setUsefor(rs.getString("usefor"));
			order_state.setOutstyle(rs.getString("outstyle"));
			order_state.setState_id(rs.getString("state_id"));
			order_state.setState_type(rs.getString("state_type"));
			return order_state;
		}
	}



}

