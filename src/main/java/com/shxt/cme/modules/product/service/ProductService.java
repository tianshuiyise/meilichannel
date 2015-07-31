package com.shxt.cme.modules.product.service;

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
import com.shxt.cme.modules.product.repository.ProductDao;

@Service
@Transactional
public class ProductService {
	Logger logger = LoggerFactory.getLogger(ProductService.class);
	@Autowired
	private ProductDao productDao;
	
	public Merchont findMerchontType(User user) {
		return productDao.findMerchontType(user);
	}
	public Page<Product> findWithPage(Pageable pageable, Shop shop) {

		return productDao.findWithPage(pageable, shop);
	}

	public Shop findShopInfo1(Merchont merchont) {

		return productDao.findShopInfo1(merchont);
	}
	public Shop findShopInfo2(Merchont merchont) {

		return productDao.findShopInfo2(merchont);
	}
	public Shop findShopInfo3(Merchont merchont) {

		return productDao.findShopInfo3(merchont);
	}
	public Product findInfoPro(Product product) {

		return productDao.findInfoPro(product);
	}

	public boolean addInfo(Product product, Shop shop) {
		productDao.insertSelective(product, shop);
		return true;
	}
	
	public String update(Product product) {
		if (productDao.updateByPrimaryKeySelective(product) == 1) {
			return "更新成功";
		}
		return "更新失败";
	}

	public String delete(Product product) {
		if (productDao.deleteByPrimaryKeySelective(product) == 1) {
			return "删除成功";
		}
		return "删除失败";
	}
}
