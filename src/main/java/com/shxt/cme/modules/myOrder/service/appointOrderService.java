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
import com.shxt.cme.modules.myOrder.repository.appointOrderDao;

@Service
@Transactional
public class appointOrderService {
	Logger logger = LoggerFactory.getLogger(appointOrderService.class);
	@Autowired
	private appointOrderDao appointOrderDao;
	public Page<Order> findWithPage(Pageable pageable
			 ,User user) {

		return appointOrderDao.findWithPage(pageable,user);
	}

}

