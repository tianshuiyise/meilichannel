package com.shxt.cme.modules.myOrder.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Order;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.myOrder.repository.non_payOrderDao;

@Service
@Transactional
public class non_payOrderService {
	Logger logger = LoggerFactory.getLogger(non_payOrderService.class);
	@Autowired
	private non_payOrderDao non_payOrderDao;
	public Page<Order> findWithPage(Pageable pageable,User user) {

		return non_payOrderDao.findWithPage(pageable,user);
	}

}

