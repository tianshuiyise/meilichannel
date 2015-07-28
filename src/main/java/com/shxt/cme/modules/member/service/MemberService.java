package com.shxt.cme.modules.member.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.modules.member.repository.MemberDao;

@Service
@Transactional
public class MemberService {
	Logger logger = LoggerFactory.getLogger(MemberService.class);
	@Autowired
	private MemberDao memberDao;
	public Merchont findMerchontType(User user) {
		return memberDao.findMerchontType(user);
	}
	
	public Page<Member> findWithPage(Pageable pageable, User user) {

		return memberDao.findWithPage(pageable, user);
	}

	public Page<Member> findWithPage1(Pageable pageable, User user) {

		return memberDao.findWithPage1(pageable, user);
	}

	public Page<Member> findWithPage2(Pageable pageable, User user) {

		return memberDao.findWithPage2(pageable, user);
	}

	public Page<Member> findWithPage3(Pageable pageable, User user) {

		return memberDao.findWithPage3(pageable, user);
	}

	public boolean addInfo1(Member member, User user) {
		memberDao.insertSelective1(member, user);
		return true;
	}

	public boolean addInfo2(Member member, User user) {
		memberDao.insertSelective2(member, user);
		return true;
	}

	public boolean addInfo3(Member member, User user) {
		memberDao.insertSelective3(member, user);
		return true;
	}

	public Member findInfoMem(Member member) {

		return memberDao.findInfoMem(member);
	}

	public String update(Member member) {
		if (memberDao.updateByPrimaryKeySelective(member) == 1) {
			return "更新成功";
		}
		return "更新失败";
	}

	public String delete(Member member) {
		if (memberDao.deleteByPrimaryKeySelective(member) == 1) {
			return "删除成功";
		}
		return "删除失败";
	}

}
