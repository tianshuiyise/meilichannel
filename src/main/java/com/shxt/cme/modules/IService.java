package com.shxt.cme.modules;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;

/** 
	* @Project:  美丽频道    
	* @author：   ASus
	* @class： IService   
	* @Description:   所有的service需要实现的接口，需要实现的方法
	* @date： 2015-7-16 上午10:34:38 
	* @version： 1.0 
 */
public interface IService<T> {

	/**
	 * @Description: 分页的时候，需要传递的参数
	 * @param pageable
	 * @param t
	 * @param user
	 * @return  
	 * @return: Page<T>
	 */
	public Page<T> findWithPage(Pageable pageable, T t, User user,String... str);
	
	/**
	 * @Description: 根据key，得到 T
	 * @param id
	 * @return  
	 * @return: T
	 */
	public T getById(String id);
	
	/**
	 * @Description: 修改
	 * @param t
	 * @return  
	 * @return: int
	 */
	public int modify(T t);
	
	/**
	 * @Description: 根据key，删除
	 * @param id
	 * @return  
	 * @return: int
	 */
	public int delete(String id);
	
	/**
	 * @Description: 根据key得到，详情
	 * @param id
	 * @return  
	 * @return: Shop
	 */
	public Shop detail(String id);
	
	/**
	 * @Description: 添加
	 * @param t
	 * @param user
	 * @return  
	 * @return: int
	 */
	public int add(T t, User user) ;
	
	
}
