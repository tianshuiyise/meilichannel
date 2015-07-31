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
	
	
	public boolean insertShop1(Shop shop,Merchont merchont){
		shopDao.insertShop1(shop,merchont);
		return true;
		
	}
	public boolean insertShop2(Shop shop,Merchont merchont){
		shopDao.insertShop2(shop,merchont);
		return true;
		
	}
	public boolean insertShop3(Shop shop,Merchont merchont){
		shopDao.insertShop3(shop,merchont);
		return true;
		
	}
	public Merchont findMerchontType(User user){
		return shopDao.findMerchontType(user);
	}
	public Shop findShop1(Merchont merchont){
		
		Shop shop=shopDao.findShop1(merchont);
		float shopCordX=0;
		float shopCordY=0;
		String shopCord=shop.getShopCord();
		if(shopCord!=null && !("").equals(shopCord)){
			String[] code=shopCord.split(",");
			shopCordX=Float.parseFloat(code[0]);
			shopCordY=Float.parseFloat(code[1]);
		}
		shop.setShopCordX(shopCordX);
		shop.setShopCordY(shopCordY);
		
		return shop;
	}
	public Shop findShop2(Merchont merchont){
		return shopDao.findShop2(merchont);
	}
	public Shop findShop3(Merchont merchont){
		return shopDao.findShop3(merchont);
	}
	
	/**
	 * @Description: 修改店铺
	 * @param shop
	 * @param user
	 * @return: int
	 */
	public int updateShop(Shop shop, User user) {
		return shopDao.updateShopInfo(shop,user);
	} 
}
