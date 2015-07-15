package com.shxt.cme.modules.myOrder.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Order_state;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.myOrder.repository.Order_stateDao;

@Service
@Transactional
public class Order_stateService {
	Logger logger = LoggerFactory.getLogger(Order_stateService.class);
	@Autowired
	private Order_stateDao Order_stateDao;
	public Page<Order_state> findWithPage(Pageable pageable,
			 User user) {

		return Order_stateDao.findWithPage(pageable,user);
	}

}


