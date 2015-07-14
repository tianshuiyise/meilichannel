package com.shxt.cme.modules.expert.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.Experts;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

/**
 * CopyRright (c)2014-: 大连校联科技有限公司 Project: Module ID: ${type_name} Comments:
 * JDK version used: JDK1.7 Author： 邓千 Create Date： ${date} Modified By：
 * Modified Date: Why & What is modified Version: 1.0
 */
@Repository
public class expertDao extends BaseDao {
              
	/**
	 * 注释：查询数据库中所有专家信息通过expertRowMapper映射,两个SQL语句分别对应有学科的专家和没有添加学科的专家 返回一个分页类型对象
	 */

	public List<Experts> list() {

		String sql = "SELECT tb_expert.expertKey,expertName,expertPhone,expertBank,expertEmail,expertQQ,expertAccounts,workUnit,createrKey,createDate,modifierKey,modifyDate,deleteFlag,expertYear,expertUserName,expertPassword,expertUserState,GROUP_CONCAT(subjectName) AS subjectname FROM tb_expert,tb_subject,tb_subject_expert WHERE tb_expert.expertKey=tb_subject_expert.expertKey AND tb_subject_expert.subjectKey=tb_subject.subjectKey AND tb_expert.deleteFlag=0 GROUP BY tb_expert.expertKey ";
		List<Experts> experts = query(sql, new expertRowMapper());
		String sql2 = "SELECT * FROM tb_expert WHERE deleteFlag=0 AND expertKey NOT IN (SELECT DISTINCT expertKey FROM tb_subject_expert)";
		List<Experts> expertsnoSub = query(sql2, new expertRowMapperNoSub());
		for (Experts x : expertsnoSub) {
			experts.add(x);
		}

		return experts;
	}

	public List<Experts> queryList(Experts experts) {
		// 定义一个stringBuffer用于后面查询语句的拼接
		StringBuffer sql = new StringBuffer();
		// 这是一个连表查询，将专家表，学科表，专家学科表联系起来，查询出专家们的学科，和其专家信息
		sql.append("SELECT tb_expert.expertKey,expertName,expertPhone,expertBank,expertEmail,expertQQ,expertAccounts,workUnit,createrKey,createDate,modifierKey,modifyDate,deleteFlag,expertYear,expertUserName,expertPassword,expertUserState,GROUP_CONCAT(subjectName) AS subjectname FROM tb_expert,tb_subject,tb_subject_expert WHERE tb_expert.expertKey=tb_subject_expert.expertKey AND tb_subject_expert.subjectKey=tb_subject.subjectKey AND tb_expert.deleteFlag=0 ");
		// 如果前台传来的expertsName值不为空则将之加入查询条件中
		if (experts.getExpertName() != null
				&& !experts.getExpertName().isEmpty())
			sql.append("AND expertName LIKE '%" + experts.getExpertName()
					+ "%'");

		if (experts.getExpertYear() != null
				&& !experts.getExpertYear().isEmpty())
			sql.append("AND expertYear LIKE '%" + experts.getExpertYear()
					+ "%'");

		if (experts.getExpertAccounts() != null
				&& !experts.getExpertAccounts().isEmpty())
			sql.append("AND expertAccounts LIKE '%"
					+ experts.getExpertAccounts() + "%'");

		if (experts.getSubjectName() != null
				&& !experts.getSubjectName().isEmpty())
			sql.append("AND tb_subject.subjectName LIKE '%"
					+ experts.getSubjectName() + "%'");

		sql.append("	GROUP BY tb_expert.expertKey ");
		// 用户存放已有学科且满足查询条件的专家
		List<Experts> expertsList = query(sql.toString(), new expertRowMapper());

		// 功能同上，但是针对的是没有被设置学科的专家们
		StringBuffer sql2 = new StringBuffer();
		sql2.append("SELECT * FROM tb_expert WHERE deleteFlag=0 AND expertKey NOT IN (SELECT DISTINCT expertKey FROM tb_subject_expert)");

		if (experts.getExpertName() != null
				&& !experts.getExpertName().isEmpty())
			sql2.append("AND expertName LIKE '%" + experts.getExpertName()
					+ "%'");

		if (experts.getExpertYear() != null
				&& !experts.getExpertYear().isEmpty())
			sql2.append("AND expertYear LIKE '%" + experts.getExpertYear()
					+ "%'");

		if (experts.getExpertAccounts() != null
				&& !experts.getExpertAccounts().isEmpty())
			sql2.append("AND expertAccounts LIKE '%"
					+ experts.getExpertAccounts() + "%'");

		List<Experts> expertsList2 = query(sql2.toString(),
				new expertRowMapperNoSub());
		// 将没有被设置学科的专家们的List遍历并且加入到有学科专家的List中
		if (experts.getSubjectName() == null
				|| experts.getSubjectName().equals(""))
			for (Experts x : expertsList2)
				expertsList.add(x);

		experts.setSubjectName("");
		// 返回一个所有满足查询条件的专家
		return expertsList;
	}

	/**
	 * 注释：根据前台获取的对象添加一个专家信息 布尔型数据表示添加是否成功
	 */

	public boolean insert(Experts experts, String current) {
		boolean flag = true;
		experts.setExpertUserState("0");
		// 判断用户名是否已经存在
		String check = "SELECT * FROM tb_expert WHERE deleteFlag=0";
		Object argss[] = {};
		List<Experts> checklist = query(check, argss,
				new expertRowMapperNoSub());
		for (Experts x : checklist) {
			if (x.getExpertUserName().equals(experts.getExpertUserName()))
				flag = false;
		}
		// 用户名不存在则进行插入操作
		if (flag) {
			if (experts.getExpertYear().equals(""))
				;
			experts.setExpertYear(getCurrentYear());
			String sql = "INSERT INTO tb_expert "
					+ "(expertKey,expertName,expertPhone,expertBank,expertAccounts,createrKey,createDate,deleteFlag,expertYear,expertUserName,expertPassword,expertUserState) "
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
			Object args[] = { UUID.randomUUID().toString(),
					experts.getExpertName(), experts.getExpertPhone(),
					experts.getExpertBank(), experts.getExpertAccounts(),
					current, getCurrentDate(), "0", experts.getExpertYear(),
					experts.getExpertUserName(),
					DbUtils.NankaiEncrypt(experts.getExpertPassword()),
					experts.getExpertUserState() };

			flag = update(sql, args) != -1;
		}
		return flag;
	}

	/**
	 * 注释：查询一个专家信息 一个专家信息bean
	 */
	public Experts queryForObject(String expertKey) {
		Object args[] = new Object[0];
		String sql = "SELECT * FROM tb_expert WHERE expertKey='" + expertKey
				+ "'";
		queryForObject(sql, args, new expertRowMapperNoSub());

		return queryForObject(sql, args, new expertRowMapperNoSub());
	}

	/**
	 * 注释：更新一个专家信息 一个专家信息bean
	 */

	public boolean update(Experts experts) {
		boolean flag = true;
		// 判断用户名是否已经存在
		String check = "SELECT * FROM tb_expert WHERE deleteFlag=0";
		Object argss[] = {};
		List<Experts> checklist = query(check, argss,
				new expertRowMapperNoSub());
		for (Experts x : checklist) {
			if (x.getExpertUserName().equals(experts.getExpertUserName()))
				flag = false;
		}
		// 用户名不存在则进行插入操作
		if (flag) {
			String sql = "UPDATE tb_expert SET expertUserName=? , expertYear=? ,expertPassword=?,expertBank=?,expertName=?,expertAccounts=?,expertPhone=? WHERE expertKey=?";
			Object args[] = { experts.getExpertUserName(),
					experts.getExpertYear(), experts.getExpertPassword(),
					experts.getExpertBank(), experts.getExpertName(),
					experts.getExpertAccounts(), experts.getExpertPhone(),
					experts.getExpertKey() };
			update(sql, args);
		}
		return flag;
	}

	/**
	 * 注释：删除一个专家信息 一个专家信息bean
	 */
	public boolean delete(String expertKey) {
		String sql = "UPDATE tb_expert SET deleteFlag=1 WHERE expertKey=?";
		Object args[] = { expertKey };
		return update(sql, args) != -1;
	}

	private class expertRowMapper implements ParameterizedRowMapper<Experts> {

		/*
		 * 注释：重写mapRow方法，对数据库中tb_expert表中数据与Experts对象作行映射 返回一个Experts类型对象
		 */
		@Override
		public Experts mapRow(ResultSet res, int rowNum) throws SQLException {
			Experts experts = new Experts();
			experts.setCreateDate(res.getString("createDate"));
			experts.setCreaterKey(res.getString("createrKey"));
			experts.setDeleteFlag(res.getString("deleteFlag"));
			experts.setExpertAccounts(res.getString("expertAccounts"));
			experts.setExpertBank(res.getString("expertBank"));
			experts.setExpertEmail(res.getString("expertEmail"));
			experts.setExpertKey(res.getString("expertKey"));
			experts.setExpertName(res.getString("expertName"));
			experts.setExpertPassword(DbUtils.NankaiDecrypt(res
					.getString("expertPassword")));
			experts.setExpertPhone(res.getString("expertPhone"));
			experts.setExpertQQ(res.getString("expertQQ"));
			experts.setExpertUserName(res.getString("expertUserName"));
			experts.setExpertUserState(res.getString("expertUserState"));
			experts.setExpertYear(res.getString("expertYear"));
			experts.setModifierKey(res.getString("modifierKey"));
			experts.setModifyDate(res.getString("modifyDate"));
			experts.setWorkUnit(res.getString("workUnit"));
			experts.setSubjectName(res.getString("subjectName"));

			return experts;
		}

	}

	private class expertRowMapperNoSub implements
			ParameterizedRowMapper<Experts> {

		/*
		 * 注释：重写mapRow方法，对数据库中tb_expert表中数据与Experts对象作行映射 返回一个Experts类型对象
		 */
		@Override
		public Experts mapRow(ResultSet res, int rowNum) throws SQLException {
			Experts experts = new Experts();
			experts.setCreateDate(res.getString("createDate"));
			experts.setCreaterKey(res.getString("createrKey"));
			experts.setDeleteFlag(res.getString("deleteFlag"));
			experts.setExpertAccounts(res.getString("expertAccounts"));
			experts.setExpertBank(res.getString("expertBank"));
			experts.setExpertEmail(res.getString("expertEmail"));
			experts.setExpertKey(res.getString("expertKey"));
			experts.setExpertName(res.getString("expertName"));
			experts.setExpertPassword(DbUtils.NankaiDecrypt(res
					.getString("expertPassword")));
			experts.setExpertPhone(res.getString("expertPhone"));
			experts.setExpertQQ(res.getString("expertQQ"));
			experts.setExpertUserName(res.getString("expertUserName"));
			experts.setExpertUserState(res.getString("expertUserState"));
			experts.setExpertYear(res.getString("expertYear"));
			experts.setModifierKey(res.getString("modifierKey"));
			experts.setModifyDate(res.getString("modifyDate"));
			experts.setWorkUnit(res.getString("workUnit"));
			experts.setSubjectName("无");

			return experts;
		}

	}

	public String getCurrentDate() {
		Date date = new Date();
		String str = null;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		str = df.format(date);
		return str;
	}

	public String getCurrentYear() {
		Date date = new Date();
		String str = null;
		SimpleDateFormat df = new SimpleDateFormat("yyyy");
		str = df.format(date);
		return str;
	}

}
