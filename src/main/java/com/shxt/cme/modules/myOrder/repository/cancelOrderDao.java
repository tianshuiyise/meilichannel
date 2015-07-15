package com.shxt.cme.modules.myOrder.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.Order;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;

@Repository
public class cancelOrderDao extends BaseDao {
	public Page<Order> findWithPage(Pageable pageable
		 ,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_order ");
	    sql.append(" where order_state=5 ");
	//	sql.append(" order by projectType,declareState");

		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new OrderRowMapper(), args);

	}
	
	

	private class OrderRowMapper implements
			ParameterizedRowMapper<Order> {
		@Override
		public Order mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Order order = new Order();
			order.setOrder_id(rs.getString("order_id"));
			order.setOrder_state(rs.getString("order_state"));
			order.setOrder_time(rs.getString("order_time"));
			order.setAppoint_time(rs.getString("appoint_time"));
			order.setOrder_price(rs.getString("order_price"));
			order.setPro_id(rs.getString("pro_id"));
			order.setMember_id(rs.getString("member_id"));
			order.setUser_id(rs.getString("user_id"));
			return order;
		}
	}



}

