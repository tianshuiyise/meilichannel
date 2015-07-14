package com.shxt.cme.modules.userInfor.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.TrainingCourse;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.UserInfo;
import com.shxt.cme.modules.userInfor.repository.UserInforDao;

@Service
@Transactional
public class UserInforService {
	Logger logger = LoggerFactory.getLogger(UserInforService.class);
	@Autowired
	private UserInforDao userInforDao;

	public Page<UserInfo> findWithPage(Pageable pageable,
			TrainingCourse subTrainingCourseInfo,User user) {
		return userInforDao.findWithPage(pageable, subTrainingCourseInfo,user);
	}
	public String update(User user) {
		if (userInforDao.updateByPrimaryKeySelective(user) == 1) {
			return "更新成功";
		}
		return "更新失败";
	}
}
