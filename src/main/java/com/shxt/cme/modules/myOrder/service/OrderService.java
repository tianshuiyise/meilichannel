package com.shxt.cme.modules.myOrder.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.shxt.cme.domain.Order;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.myOrder.repository.OrderDao;

@Service
@Transactional
public class OrderService {
	Logger logger = LoggerFactory.getLogger(OrderService.class);
	@Autowired
	private OrderDao OrderDao;
	public Page<Order> findWithPage(Pageable pageable
			 ,User user) {

		return OrderDao.findWithPage(pageable,user);
	}

}
