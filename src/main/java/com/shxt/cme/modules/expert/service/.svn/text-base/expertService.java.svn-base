package com.shxt.cme.modules.expert.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Experts;
import com.shxt.cme.modules.expert.repository.expertDao;
import com.shxt.framework.utils.DbUtils;

/** 
* CopyRright (c)2014-:   大连校联科技有限公司 
* Project:                                         
* Module ID: ${type_name}
* Comments:                                             
* JDK version used:      JDK1.7                              
* Author：      邓千                
* Create Date：  ${date} 
* Modified By：                                           
* Modified Date:                                      
* Why & What is modified      
* Version: 1.0                       
*/
@Service
@Transactional
public class expertService {
	Logger logger =  LoggerFactory.getLogger(expertService.class);
	
	@Autowired
	expertDao exDao;//定义一个Dao类型对象作为成员变量
	
	
	//用于查询
	public List<Experts> QList(Experts experts){
		return exDao.queryList(experts);
	}
	
	
	
	
	
	/*
	 * 注释：查询数据库中所有专家信息通过expertRowMapper映射
	 * 返回一个分页类型对象
	 */
	public List<Experts> list(){
		
		return exDao.list();
	}
	
	/*
	 * 注释：添加一个专家方法
	 * 返回添加是否成功
	 */
	
	public boolean add(Experts experts,String current){
		boolean flag=false;
		flag=exDao.insert(experts, current);
		return flag;
	}
	
	/*
	 * 注释：查询一个专家
	 * 一个专家类型对象
	 */
	public Experts queryForExpert(String expertKey){
		return exDao.queryForObject(expertKey);
	}
	/*
	 * 注释：更新一个专家
	 * boolean反应是否更新成功
	 */
	public boolean update(Experts experts){
		experts.setExpertPassword(DbUtils.NankaiEncrypt(experts.getExpertPassword()));

		return exDao.update(experts);
	}
	
	public boolean delete(String expertKey){
		return exDao.delete(expertKey);
	}

}
