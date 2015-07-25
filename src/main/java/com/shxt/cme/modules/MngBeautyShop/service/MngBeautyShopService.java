package com.shxt.cme.modules.MngBeautyShop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.IService;
import com.shxt.cme.modules.MngBeautyShop.repository.MngBeautyShopDao;

@Service
public class MngBeautyShopService implements IService<Shop>{

	@Autowired
	private MngBeautyShopDao mngBeautyShopDao;
	
	@Override
	public Page<Shop> findWithPage(Pageable pageable, Shop shop, User user,String... str) {
		
		return mngBeautyShopDao.findWithPage( pageable,  shop,  user) ;
	}
	@Override
	public Shop getById(String shop_id) {
		return mngBeautyShopDao.getById( shop_id);
	}
	@Override
	public int modify(Shop shop) {
		
		return mngBeautyShopDao.modify( shop) ;
	}
	@Override
	public int delete(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.delete( shop_id);
	}
	@Override
	public Shop detail(String shop_id) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.getById(shop_id);
	}
	@Override
	public int add(Shop shop, User user) {
		// TODO Auto-generated method stub
		return mngBeautyShopDao.add(shop,user);
	}


}
