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
import com.shxt.cme.domain.AcademicActivity;
import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Subject;
import com.shxt.cme.domain.TrainingCourse;
import com.shxt.cme.domain.Unit;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

@Repository
public class MemberDao extends BaseDao {
	public Page<Member> findWithPage(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_member ");
		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new MemberRowMapper(), args);

	}
	public Page<Member> findWithPage1(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE member_type=1 and merchont_id='"+user.getUserId()+"' ");
		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new MemberRowMapper(), args);

	}
	public Page<Member> findWithPage2(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE member_type=2 and merchont_id='"+user.getUserId()+"' ");
		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new MemberRowMapper(), args);

	}
	public Page<Member> findWithPage3(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE member_type=3 and merchont_id='"+user.getUserId()+"' ");
		Object[] args=new Object[]{};
		return queryForPage(sql.toString(), pageable,
				new MemberRowMapper(), args);

	}
	private class MemberRowMapper implements
			ParameterizedRowMapper<Member> {
		@Override
		public Member mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Member member = new Member();
			member.setMemberId(rs.getString("member_id"));
			member.setMemberName(rs.getString("member_name"));
			member.setIntroduction(rs.getString("introduction"));
			member.setMemberType(rs.getInt("member_type"));
			member.setMerchontId(rs.getString("merchont_id"));
			member.setImageAddress(rs.getString("image_address"));
			member.setImageName(rs.getString("image_name"));
			return member;
		}
	}
	public void insertSelective1(Member member,User user){
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_member(member_id,member_name,member_type,image_address,image_name,introduction,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?) ");
		Object[] args=new Object[]{DbUtils.getKey(),member.getMemberName(),1,member.getImageAddress(),member.getImageName(),member.getIntroduction(),
				user.getUserId()};
		update(sql.toString(), args);
	}
	public void insertSelective2(Member member,User user){
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_member(member_id,member_name,member_type,image_address,image_name,introduction,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?) ");
		Object[] args=new Object[]{DbUtils.getKey(),member.getMemberName(),2,member.getImageAddress(),member.getImageName(),member.getIntroduction(),
				user.getUserId()};
		update(sql.toString(), args);
	}
	public void insertSelective3(Member member,User user){
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_member(member_id,member_name,member_type,image_address,image_name,introduction,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?) ");
		Object[] args=new Object[]{DbUtils.getKey(),member.getMemberName(),3,member.getImageAddress(),member.getImageName(),member.getIntroduction(),
				user.getUserId()};
		update(sql.toString(), args);
	}
	public Member findInfoMem(Member member){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_member ");
		sql.append(" WHERE member_id='"+member.getMemberId()+"' ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new MemberRowMapper());
	}
	public int updateByPrimaryKeySelective(Member member){
		String sql= "UPDATE  t_member " + "SET "+ "member_name='"+member.getMemberName()+"'"
				+ ",image_address='"+member.getImageAddress()+"'" 
				+ ",image_name='"+member.getImageName()+"'" 
				+ ",introduction='"+member.getIntroduction()+"'" 
				+ "WHERE member_id='"+member.getMemberId()+"'";
    	int ss=update(sql, null);
    	return ss;
	}
	public int deleteByPrimaryKeySelective(Member member){
		String sql= "DELETE FROM t_member " 
				+ "WHERE member_id='"+member.getMemberId()+"'";
    	int ss=update(sql, null);
    	return ss;
	}
}
