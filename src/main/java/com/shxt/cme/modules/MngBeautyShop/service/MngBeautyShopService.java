package com.shxt.cme.modules.MngBeautyShop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.MngBeautyShop.repository.MngBeautyShopDao;

@Service
public class MngBeautyShopService {

	@Autowired
	private MngBeautyShopDao mngBeautyShopDao;
	public Page<Shop> findWithPage(Pageable pageable, Shop shop, User user) {
		
		return mngBeautyShopDao.findWithPage( pageable,  shop,  user) ;
	}
	
	public Shop getShopById(String shop_id) {
		return mngBeautyShopDao.getShopById( shop_id);
	}

	public int modifyShop(Shop shop) {
		
		return mngBeautyShopDao.modifyShop( shop) ;
	}

	public int delete(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.delete( shop_id);
	}

	public Shop detail(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.getShopById(shop_id);
	}

	public int add(Shop shop, User user) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.add(shop,user);
	}


}
