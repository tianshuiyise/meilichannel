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
import com.shxt.cme.domain.Shop;
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
	
	public Page<Member> findWithPage(Pageable pageable, Shop shop) {

		return memberDao.findWithPage(pageable, shop);
	}
	public Shop findShopInfo1(Merchont merchont) {

		return memberDao.findShopInfo1(merchont);
	}
	public Shop findShopInfo2(Merchont merchont) {

		return memberDao.findShopInfo2(merchont);
	}
	public Shop findShopInfo3(Merchont merchont) {

		return memberDao.findShopInfo3(merchont);
	}

	public boolean addInfo(Member member, Shop shop) {
		memberDao.insertSelective(member, shop);
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
