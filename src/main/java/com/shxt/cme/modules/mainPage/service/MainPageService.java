package com.shxt.cme.modules.mainPage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.OrderBean;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.ReviewBean;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.IService;
import com.shxt.cme.modules.mainPage.repository.MainPageDao;



/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： MainPageService   
 * @Description:   类描述  TODO
 * @date： 2015-7-17 下午1:47:07 
 * @version： 1.0 
 */
@Service
public class MainPageService implements IService<Shop>{
	@Autowired
	private MainPageDao mainPageDao;


	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#findWithPage(org.springframework.data.domain.Pageable, java.lang.Object, com.shxt.cme.domain.User, java.lang.String[])
	 */
	@Override
	public Page<Shop> findWithPage(Pageable pageable, Shop t, User user,
			String... str) {
		return mainPageDao.findWithPage(pageable, t, user, str);
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#getById(java.lang.String)
	 */
	@Override
	public Shop getById(String id) {
		return null;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#modify(java.lang.Object)
	 */
	@Override
	public int modify(Shop t) {
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#delete(java.lang.String)
	 */
	@Override
	public int delete(String id) {
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#detail(java.lang.String)
	 */
	@Override
	public Shop detail(String id) {
		Shop shop=mainPageDao.detail(id);
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

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IService#add(java.lang.Object, com.shxt.cme.domain.User)
	 */
	@Override
	public int add(Shop t, User user) {
		return 0;
	}

	/** @Description: TODO
	 * @param shopId
	 * @return  
	 * @return: List<Product>
	*/
	
	public List<Product> getAllProduct(String shopId) {
		return mainPageDao.getAllProduct(shopId);
	}

	/** @Description: TODO
	 * @param review
	 * @return  
	 * @return: List<ReviewBean>
	*/
	
	public List<ReviewBean> getAllReview(ReviewBean review) {
		return mainPageDao.getAllReview(review);
	}

	/** @Description: TODO
	 * @param shopId
	 * @return  
	 * @return: List<OrderBean>
	*/
	
	public List<OrderBean> getAllOrder(OrderBean orderBean) {
		return mainPageDao.getAllOrder(orderBean);
	}

	/** @Description: TODO
	 * @param i
	 * @return  
	 * @return: List<Shop>
	*/
	
	public List<Shop> getShops(int shopType) {
		
		
		return  mainPageDao.getShops(shopType);
	}

	/** @Description: TODO
	 * @return  
	 * @return: List<Shop>
	*/
	
	public List<Shop> getShops() {
		
		return mainPageDao.getShops();
	}

	/** @Description: TODO
	 * @param proId
	 * @return  
	 * @return: Product
	*/
	
	public Product getProductiondetail(String proId) {
		return  mainPageDao.getProductiondetail(proId);
	}

	/** @Description: TODO
	 * @param proId
	 * @return  
	 * @return: List<Member>
	*/
	
	public List<Member> getMemberByProduct(String proId) {
		return mainPageDao.getMemberByProduct(proId);
	}

	/** @Description: TODO
	 * @param pageable
	 * @param object
	 * @return  
	 * @return: Page<Shop>
	*/
	
	public Page<Shop> findWithPageByName(Pageable pageable, Object object) {
		return mainPageDao.findWithPageByName(pageable, object);
	}


}
