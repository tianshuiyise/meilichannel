package com.shxt.cme.modules.myOrder.repository;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.User;
import com.shxt.cme.domain.review_Order;
import com.shxt.framework.persistence.jdbc.support.BaseDao;

@Repository
public class non_commentsOrderDao extends BaseDao {
	public Page<review_Order> findWithPage(Pageable pageable,
			User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
	//	sql.append("FROM t_order");
		sql.append(" FROM t_order left outer join t_review  ");
		sql.append("ON t_order.order_id = t_review.order_id");
	    
	//	sql.append(" order by projectType,declareState");

		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new review_OrderRowMapper(), args);

	}
	
	

	private class review_OrderRowMapper implements
			ParameterizedRowMapper<review_Order> {

		@Override
		public review_Order mapRow(ResultSet rs, int rowNum)
				throws SQLException {
		
				review_Order review_Order = new review_Order();
				review_Order.setOrder_id(rs.getString("order_id"));
				review_Order.setOrder_state(rs.getString("order_state"));
				review_Order.setOrder_time(rs.getString("order_time"));
				review_Order.setAppoint_time(rs.getString("appoint_time"));
				review_Order.setOrder_price(rs.getString("order_price"));
				review_Order.setPro_id(rs.getString("pro_id"));
				review_Order.setMember_id(rs.getString("member_id"));
				review_Order.setUser_id(rs.getString("user_id"));
				review_Order.setReview_id(rs.getString("review_id"));
				review_Order.setReview1(rs.getString("review1"));
				review_Order.setReview2(rs.getString("review2"));
				review_Order.setReview3(rs.getString("review3"));
				review_Order.setReview_mes(rs.getString("review_mes"));
				return review_Order;
			}
		}

	
	
	
}


