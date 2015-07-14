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
import com.shxt.cme.domain.review_Order;
import com.shxt.cme.domain.review;
import com.shxt.cme.domain.TrainingCourse;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.myOrder.repository.non_commentsOrderDao;

@Service
@Transactional
public class non_commentsOrderService {
	Logger logger = LoggerFactory.getLogger(non_commentsOrderService.class);
	@Autowired
	private non_commentsOrderDao non_commentsOrderDao;
	public Page<review_Order> findWithPage(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {

		return (Page<review_Order>) non_commentsOrderDao.findWithPage(pageable, subTrainingCourseInfo,user);
	}

}


