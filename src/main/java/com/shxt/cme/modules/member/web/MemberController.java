package com.shxt.cme.modules.member.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.modules.member.service.MemberService;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "serviceInfo")
public class MemberController extends BaseController implements
		ServletContextAware {

	Logger logger = LoggerFactory.getLogger(MemberController.class);
	private ServletContext servletContext;
	@Autowired
	private MemberService memberService;

	/**
	 * 
	 * @Description:
	 * @param model
	 * @return String
	 */
	@RequestMapping("")
	public String list() {
		return "member/member";
	}

	@RequestMapping("beautyServiceInfo")
	public String listMeirong(Model model, Pageable pageable,
			ServletRequest request, HttpSession session) {
		String str = "member/member";
		User user = getCurrentUser(session);
		Merchont merchont = memberService.findMerchontType(user);
		if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 4
				|| merchont.getMerchontType() == 5
				|| merchont.getMerchontType() == 7) { // 1.商家有查看美容工作人员的权限
			Page<Member> memberList = memberService.findWithPage1(pageable, user);
			model.addAttribute("memberList", memberList);
			str ="member/meirongMember";
		} else if (merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 6) { // 2.商家无查看美容工作人员的权限
			str = "member/member";
		} else { // 3.无任何权限值
			str = "member/member";
		}
		return str;
	}

	@RequestMapping("hairdressServiceInfo")
	public String listMeifa(Model model, Pageable pageable,
			ServletRequest request, HttpSession session) {
		String str = "member/member";
		User user = getCurrentUser(session);
		Merchont merchont = memberService.findMerchontType(user);
		if (merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 4
				|| merchont.getMerchontType() == 6
				|| merchont.getMerchontType() == 7) { // 1.商家有查看美发工作人员的权限
			Page<Member> memberList = memberService.findWithPage1(pageable, user);
			model.addAttribute("memberList", memberList);
			str ="member/meifaMember";
		} else if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 5) { // 2.商家无查看美发工作人员的权限
			str = "member/member";
		} else { // 3.无任何权限值
			str = "member/member";
		}
		return str;
	}

	@RequestMapping("manicureServiceInfo")
	public String listMeijia(Model model, Pageable pageable,
			ServletRequest request, HttpSession session) {
		String str = "member/member";
		User user = getCurrentUser(session);
		Merchont merchont = memberService.findMerchontType(user);
		if (merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 5
				|| merchont.getMerchontType() == 6
				|| merchont.getMerchontType() == 7) { // 1.商家有查看美甲工作人员的权限
			Page<Member> memberList = memberService.findWithPage1(pageable, user);
			model.addAttribute("memberList", memberList);
			str ="member/meijiaMember";
		} else if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 4) { // 2.商家无查看美甲工作人员的权限
			str = "member/member";
		} else { // 3.无任何权限值
			str = "member/member";
		}
		return str;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;

	}

	@RequestMapping("inselectMeirongMemb")
	public String inselectMeirongMemb() {
		return "member/meirongMemberUpload";
	}

	@RequestMapping("inselectMeifaMemb")
	public String inselectMeifaMemb() {
		return "member/meifaMemberUpload";
	}

	@RequestMapping("inselectMeijiaMemb")
	public String inselectMeijiaMemb() {
		return "member/meijiaMemberUpload";
	}

	@RequestMapping("/meirongInfoUpload")
	public String meirongInfoUpload(Model model, Member member, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
		try {
			boolean str = memberService.addInfo1(member, user);
			String message = "";
			if (str == true) {
				message = "上传成功";
			} else {
				message = "上传失败";
			}
			model.addAttribute("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		}

		return "member/member";
	}

	@RequestMapping("/meifaInfoUpload")
	public String meifaInfoUpload(Model model, Member member, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
		try {
			boolean str = memberService.addInfo2(member, user);
			String message = "";
			if (str == true) {
				message = "上传成功";
			} else {
				message = "上传失败";
			}
			model.addAttribute("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		}

		return "member/member";
	}

	@RequestMapping("/meijiaInfoUpload")
	public String meijiaInfoUpload(Model model, Member member, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
		try {
			boolean str = memberService.addInfo3(member, user);
			String message = "";
			if (str == true) {
				message = "上传成功";
			} else {
				message = "上传失败";
			}
			model.addAttribute("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		}

		return "member/member";
	}

	@RequestMapping("modifyMemb")
	public String modifyMemb(Model model, Member member,
			ServletRequest request, HttpSession session) {
		Member memberInfo = memberService.findInfoMem(member);
		model.addAttribute("memberInfo", memberInfo);
		return "member/memberModify";

	}

	@RequestMapping("membInfoModify")
	public String proInfoModify(Model model, Member member,
			HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws IllegalStateException,
			IOException {

		try {
			if (member == null) {

			}else{
			String str = memberService.update(member);
			request.setAttribute("InfoMessage", str);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		}

		return "member/member";

	}

	@RequestMapping("deleteMemb")
	public String deleteMemb(Model model, Member member,
			ServletRequest request, HttpSession session) {

		try {
			if (member == null) {

			}else{
			String str = memberService.delete(member);
			request.setAttribute("InfoMessage", str);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		}

		return "member/member";

	}
}
