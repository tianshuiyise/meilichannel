package com.shxt.cme.modules.shop.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.modules.shop.repository.ShopDao;

@Service
@Transactional
public class ShopService {
	@Autowired
	private ShopDao shopDao;
	Logger logger = LoggerFactory.getLogger(ShopService.class);
	
	
	public boolean insertShop1(Shop shop,User user){
		shopDao.insertShop1(shop,user);
		return true;
		
	}
	public boolean insertShop2(Shop shop,User user){
		shopDao.insertShop2(shop,user);
		return true;
		
	}
	public boolean insertShop3(Shop shop,User user){
		shopDao.insertShop3(shop,user);
		return true;
		
	}
	public Merchont findMerchontType(User user){
		return shopDao.findMerchontType(user);
	}
	public Shop findShop1(Merchont merchont){
		return shopDao.findShop1(merchont);
	}
	public Shop findShop2(Merchont merchont){
		return shopDao.findShop2(merchont);
	}
	public Shop findShop3(Merchont merchont){
		return shopDao.findShop3(merchont);
	}
	public String updateShop(Shop shop) {
		if (shopDao.updateShopInfo(shop) == 1) {
			return "更新成功";
		}
		return "更新失败";
	} 
}
