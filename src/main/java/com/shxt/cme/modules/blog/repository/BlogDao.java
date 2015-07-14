package com.shxt.cme.modules.blog.repository;
/** 
* CopyRright (c)2008-xxxx:   <xxx软件技术开发有限公司 >                          
* Project:  <项目工程名 >                                          
* Module ID:<(模块)类编号，可以引用系统设计中的类编号>    
* Comments:  <对此类的描述，可以引用系统设计中的描述>                                           
* JDK version used:      <JDK1.6>                              
* Author：        <作者中文名或拼音缩写>                 
* Create Date：  <创建日期，格式:YYYY-MM-DD> 
* Modified By：   <修改人中文名或拼音缩写>                                         
* Modified Date:  <修改日期，格式:YYYY-MM-DD>                                    
* Why & What is modified  <修改原因描述>    
* Version: <版本号>                       
*/ 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.StringHelper;
import com.shxt.cme.domain.Blog;


@Repository
public class BlogDao extends BaseDao{
	
	
	Logger logger =  LoggerFactory.getLogger(BlogDao.class);
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Blog> findAll(){
		
		
		logger.info("dao: blog dao findAll method invoked");
		
		String findAll = "select id,title from blog";
		
		/**
		 * 两种实现方式
		 * 1.使用rowmapper的映射方式
		 * 
		 * 使用比较灵活，需要自己创建rowmapper类，推荐使用内部类。
		 * 
		 * 2.使用class
		 * 
		 * 比较简单，但要求属性和字段名要一一对应，否则会不能赋值
		 */
		//1.使用rowmapper的映射方式实现
		//return (List<Blog>)query(findAll , new BlogRowerMapper());
		//2.class方式实现
		return (List<Blog>)query(findAll , null,Blog.class);
	}
	
	/**
	 * 根据条件分页查询博客的分页列表
	 * 
	 * @param pageable 分页对象
	 * @return 博客的分页列表
	 */
	public Page<Blog> findByTitle(Pageable pageable){
		String sql = "select id,title,content1 from blog ";
		String sqlCount ="select count(1) from blog";
		String buildSql = StringHelper.sqlFormatForSQlServer2005(sql, "id");
		return queryForPage(buildSql, sqlCount, pageable, new BlogRowerMapper(), null);
		
	}
	public int update(Blog blog){
		String sql = "insert into blog values(?,?,?) ";
		Object []args={blog.getId(),blog.getTitle(),blog.getContent()};
		int i=this.update(sql, args);
		return i;
	}

	public void update2 (){
		String sql = "insert blog values('111','bb','aa') ";
		this.update(sql, null);
	}
	
	public void update3 (){
		String sql = "insert blog values('1110000','bb1','aa1') ";
		this.update(sql, null);
	}
	
	/**
	* @Description:	更新每一行的数据 
	* @param blog void
	 */
	public void updateBlogInfo(Map.Entry<String, Blog> blog) {
		String sql = "update blog set title = ?, content1 = ? where id = ? ";
		Object[] args = {blog.getValue().getTitle(), blog.getValue().getContent(), blog.getKey()};
		update(sql, args);
	}
	
	/**
	 * 内部类
	 * 字段和实体属性对应映射类
	 * @author debao.wang
	 *
	 */
	private class BlogRowerMapper implements ParameterizedRowMapper<Blog>{

		@Override
		public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {
			Blog blog = new Blog();
			blog.setId(rs.getString("id"));
			blog.setTitle(rs.getString("title"));
			blog.setContent(rs.getString("content1"));
			return blog;
		}}

}
