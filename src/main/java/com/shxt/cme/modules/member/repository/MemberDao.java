package com.shxt.cme.modules.member.repository;

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
import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

@Repository
public class MemberDao extends BaseDao {

	public Page<Member> findWithPage(Pageable pageable, Shop shop) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE shop_id='" + shop.getShopId()
				+ "' ");
		Object[] args = new Object[] {};
		return queryForPage(sql.toString(), pageable, new MemberRowMapper(),
				args);

	}

	private class MemberRowMapper implements ParameterizedRowMapper<Member> {
		@Override
		public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
			Member member = new Member();
			member.setMemberId(rs.getString("member_id"));
			member.setMemberName(rs.getString("member_name"));
			member.setIntroduction(rs.getString("introduction"));
			member.setShopId(rs.getString("shop_id"));
			member.setMerchontId(rs.getString("User_id"));
			member.setImageAddress(rs.getString("image_address"));
			return member;
		}
	}
	public Merchont findMerchontType(User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_merchont ");
		sql.append(" WHERE user_id='" + user.getUserId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new MerchontRowMapper());
	}
	
	private class MerchontRowMapper implements ParameterizedRowMapper<Merchont> {
		@Override
		public Merchont mapRow(ResultSet rs, int rowNum) throws SQLException {
			Merchont merchont = new Merchont();
			merchont.setMerchontId(rs.getString("merchont_Id"));
			merchont.setAccoutNum(rs.getString("accout_Num"));
			merchont.setRealName(rs.getString("real_Name"));
			merchont.setMerchontType(rs.getInt("merchont_Type"));
			merchont.setId(rs.getString("id"));
			merchont.setUserId(rs.getString("user_id"));
			merchont.setPhone(rs.getString("telephone"));
			return merchont;
		}
	}
	public void insertSelective(Member member, Shop shop) {
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_member(member_id,member_name,image_address,introduction,shop_id) ");
		sql.append(" values(?,?,?,?,?) ");
		Object[] args = new Object[] { DbUtils.getKey(),
				member.getMemberName(), member.getImageAddress(),
			        member.getIntroduction(),
				shop.getShopId() };
		update(sql.toString(), args);
	}

	public Member findInfoMem(Member member) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE member_id='" + member.getMemberId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new MemberRowMapper());
	}

	public int updateByPrimaryKeySelective(Member member) {
		String sql = "UPDATE  t_member " + "SET " + "member_name='"
				+ member.getMemberName() + "'" + ",image_address='"
				+ member.getImageAddress() + "'" + ",introduction='"
				+ member.getIntroduction() + "'" + "WHERE member_id='"
				+ member.getMemberId() + "'";
		int ss = update(sql, null);
		return ss;
	}

	public int deleteByPrimaryKeySelective(Member member) {
		String sql = "DELETE FROM t_member " + "WHERE member_id='"
				+ member.getMemberId() + "'";
		int ss = update(sql, null);
		return ss;
	}
	
	public Shop findShopInfo1(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=1 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	
	public Shop findShopInfo2(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=2 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public Shop findShopInfo3(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=3 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	private class ShopRowMapper implements
			ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Shop shop =new Shop();
			shop.setImageAddress(rs.getString("image_address"));
			shop.setIntroduction(rs.getString("introduction"));
			shop.setShopId(rs.getString("shop_id"));
			shop.setShopType(rs.getInt("shop_type"));
			shop.setShopName(rs.getString("shop_name"));
			shop.setShopQq(rs.getString("shop_qq"));
			shop.setMerchontId(rs.getString("merchont_id"));
			return shop;
		}
	}
}
