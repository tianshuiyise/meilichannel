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
import com.shxt.cme.modules.product.repository.ProductDao;


@Service
@Transactional
public class ProductService {
	Logger logger = LoggerFactory.getLogger(ProductService.class);
	@Autowired
	private ProductDao productDao;
	public Page<Product> findWithPage1(Pageable pageable,User user) {

		return productDao.findWithPage1(pageable,user);
	}
	public Page<Product> findWithPage2(Pageable pageable,User user) {

		return productDao.findWithPage2(pageable,user);
	}
	public Page<Product> findWithPage3(Pageable pageable,User user) {

		return productDao.findWithPage3(pageable,user);
	}
	public Product findInfoPro(Product product) {

		return productDao.findInfoPro(product);
	}

	public boolean addInfo1(Product product,User user) {
		productDao.insertSelective1(product,user);
		return true;
	}
	public boolean addInfo2(Product product,User user) {
		productDao.insertSelective2(product,user);
		return true;
	}
	public boolean addInfo3(Product product,User user) {
		productDao.insertSelective3(product,user);
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

