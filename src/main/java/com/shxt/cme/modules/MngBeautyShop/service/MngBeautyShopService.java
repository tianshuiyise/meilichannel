package com.shxt.cme.modules.MngBeautyShop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.MngBeautyShop.repository.MngBeautyShopDao;

/** 
	* @Project:  美丽频道    
	* @author：   ASus
	* @class： MngBeautyShopService   
	* @Description:   类描述  TODO
	* @date： 2015-7-15 下午5:03:14 
	* @version： 1.0 
 */
@Service
public class MngBeautyShopService {

	@Autowired
	private MngBeautyShopDao mngBeautyShopDao;
	
	/**
	 * @Description: TODO
	 * @param pageable
	 * @param shop
	 * @param user
	 * @return  
	 * @return Page<Shop>
	 */
	public Page<Shop> findWithPage(Pageable pageable, Shop shop, User user) {
		
		return mngBeautyShopDao.findWithPage( pageable,  shop,  user) ;
	}
	
	/**
	 * @Description: TODO
	 * @param shop_id
	 * @return  
	 * @return Shop
	 */
	public Shop getShopById(String shop_id) {
		return mngBeautyShopDao.getShopById( shop_id);
	}

	/**
	 * @Description: TODO
	 * @param shop
	 * @return  
	 * @return int
	 */
	public int modifyShop(Shop shop) {
		
		return mngBeautyShopDao.modifyShop( shop) ;
	}

	/**
	 * @Description: TODO
	 * @param shop_id
	 * @return  
	 * @return int
	 */
	public int delete(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.delete( shop_id);
	}

	/**
	 * @Description: TODO
	 * @param shop_id
	 * @return  
	 * @return Shop
	 */
	public Shop detail(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.getShopById(shop_id);
	}

	/**
	 * @Description: TODO
	 * @param shop
	 * @param user
	 * @return  
	 * @return int
	 */
	public int add(Shop shop, User user) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.add(shop,user);
	}


}
