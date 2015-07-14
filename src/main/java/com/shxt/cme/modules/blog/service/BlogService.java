package com.shxt.cme.modules.blog.service;
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
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Maps;
import com.shxt.framework.serivce.BusinessLogger;
import com.shxt.cme.domain.Blog;
import com.shxt.cme.domain.BlogForm;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.blog.repository.BlogDao;

@Service
@Transactional
public class BlogService {
	
	Logger logger =  LoggerFactory.getLogger(BlogService.class);
	
	@Autowired
	private BlogDao blogDao;
	
	private BusinessLogger businessLogger;
	
	/**
	 * 查询所有
	 * @return blog列表集合
	 */
	@Transactional(readOnly=true)
	public List<Blog> findAll(){
		logger.info("service: the method findAll invoked");
		//TODO:这里是业务逻辑的代码
		return blogDao.findAll();
	}
	/**
	 * 查询符合条件的分页博客列表
	 * @param pageable 分页pageable实例
	 * @param title 标题
	 * @return
	 */
	public Page<Blog> findByTitle(String title , Pageable pageable){
		logger.info("service: the method findByTitle invoked");
		
		//TODO:这里是业务逻辑的代码
		
		// 业务日志演示
		/*if (businessLogger != null) {
			Map map = Maps.newHashMap();
			User user = new User();
			user.setBirthday("2013-1-1");
			user.setCreateDate("123123");
			map.put("user", user);
			map.put("user", 1);
			businessLogger.log("UPDATE", "当前用户", map);
		}*/
		
		
//		logger.debug("service: the method findByTitle invoked and by title:{}",title);
		
//		blogDao.update();
//		
//		blogDao.update2();
//		blogDao.update2();
//		blogDao.update3();
		
		return blogDao.findByTitle(pageable);
	}
	public boolean update(Blog blog){
		Boolean flag=false;
		int i=blogDao.update(blog);
		if(i>=1){
			flag=true;
		}
		return flag;
	}

	@Autowired(required = false)
	public void setBusinessLogger(BusinessLogger businessLogger) {
		this.businessLogger = businessLogger;
	}
	
	/**
	* @Description:	更新行操作的所有数据 
	* @param blogForm void
	 */
	public void updateBlogInfo(BlogForm blogForm) {
		for(Map.Entry<String, Blog> blog : blogForm.getBlogMap().entrySet()) {
			blogDao.updateBlogInfo(blog);
		}
	}
}
