package com.shxt.cme.modules.shop.web;

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

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.modules.shop.service.ShopService;
import com.shxt.framework.utils.UploadPhotoTest;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "uploadShopInfo")
public class ShopController extends BaseController implements
		ServletContextAware {
	Logger logger = LoggerFactory.getLogger(ShopController.class);
	private ServletContext servletContext;
	@Autowired
	private ShopService shopService;

	/**
	 * 
	 * @Description:
	 * @param model
	 * @return String
	 */
	@RequestMapping("")
	public String list() {
		// 防止请求为空；
		return "myShopIndex";
	}

	@RequestMapping("beautyShopInfo")
	public String meirongShopUpload(Model model, Pageable pageable, ServletRequest request, HttpSession session) {
		String str = "myShopIndex";
		User user = getCurrentUser(session);
		Merchont merchont = shopService.findMerchontType(user);//根据用户ID查找店家信息
		Shop shop = shopService.findShop1(merchont);        //根据商家ID查找店铺信息
		if (shop == null) {
			if (merchont.getMerchontType() == 1
					|| merchont.getMerchontType() == 4
					|| merchont.getMerchontType() == 5
					|| merchont.getMerchontType() == 7) { // 1.商家有开美容店铺的权限
				str = "shopUpload/meirongShopUpload";     //跳转到美容店铺信息上传页面
			} else if (merchont.getMerchontType() == 2
					|| merchont.getMerchontType() == 3
					|| merchont.getMerchontType() == 6) { // 2.商家无开美容店铺的权限
				str = "shopUpload/shop";
			} else { // 3.无任何权限值
				str = "myShopIndex";
			}
		} else {
			model.addAttribute("shop", shop);
			str = "shopUpload/shopModify";
		}
		return str;
	}

	@RequestMapping("hairdressShopInfo")
	public String meifaShopUpload(Model model, ServletRequest request, HttpSession session) {
		String str = "myShopIndex";
		User user = getCurrentUser(session);
		Merchont merchont = shopService.findMerchontType(user);
		Shop shop = shopService.findShop2(merchont);
		if (shop == null) {
			if (merchont.getMerchontType() == 2
					|| merchont.getMerchontType() == 4
					|| merchont.getMerchontType() == 6
					|| merchont.getMerchontType() == 7) { // 1.商家有开美发店铺的权限
				str = "shopUpload/meifaShopUpload";
			} else if (merchont.getMerchontType() == 1
					|| merchont.getMerchontType() == 3
					|| merchont.getMerchontType() == 5) { // 2.商家无开美发店铺的权限
				str = "shopUpload/shop";
			} else { // 3.无任何权限值
				str = "myShopIndex";
			}
		} else {
			model.addAttribute("shop", shop);
			str = "shopUpload/shopModify";
		}
		return str;
	}

	@RequestMapping("manicureShopInfo")
	public String meijiaShopUpload(Model model, ServletRequest request,HttpSession session) {
		String str = "myShopIndex";
		User user = getCurrentUser(session);
		Merchont merchont = shopService.findMerchontType(user);
		System.out.println("结果ss=="+merchont.getMerchontId());
		Shop shop = shopService.findShop3(merchont);
		if (shop == null) {
			if (merchont.getMerchontType() == 3
					|| merchont.getMerchontType() == 5
					|| merchont.getMerchontType() == 6
					|| merchont.getMerchontType() == 7) { // 1.商家有开美甲店铺的权限
				str = "shopUpload/meijiaShopUpload";
			} else if (merchont.getMerchontType() == 1
					|| merchont.getMerchontType() == 2
					|| merchont.getMerchontType() == 4) { // 2.商家无开美甲店铺的权限
				str = "shopUpload/shop";
			} else { // 3.无任何权限值
				str = "myShopIndex";
			}
		} else {
			model.addAttribute("shop", shop);
			str = "shopUpload/shopModify";
		}
		return str;
	}
	
	@RequestMapping("meirongUploadTo")
	public String editMeirongShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		boolean i = shopService.insertShop1(shop, user);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}

	@RequestMapping("meifaUploadTo")
	public String editMeifaShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		boolean i = shopService.insertShop2(shop, user);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}

	@RequestMapping("meijiaUploadTo")
	public String editMeijiaShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		boolean i = shopService.insertShop3(shop, user);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}
	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;
	}

	@RequestMapping("shopModifyTo")
	public String shopModifyTo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		try {
			if (shop == null) {
			}else{
			String str = shopService.updateShop(shop);
			request.setAttribute("InfoMessage", str);
		        }

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		}

		return "shopUpload/shop";

	}

	@RequestMapping("/upload")
	public void upload(Model model, Shop shop, HttpSession session, 
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "file") MultipartFile file)
			throws IllegalStateException, IOException {

		String realPath = request.getSession().getServletContext()
				.getRealPath("/");
		String contextPath = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + contextPath + "/";
		response.getWriter().write(
				UploadPhotoTest.uploadPhoto(file, realPath, contextPath));
	}

	@RequestMapping("/photoSave")
	public void photoSave(HttpServletRequest request, String data,
			HttpServletResponse response) {
		String realPath = request.getSession().getServletContext()
				.getRealPath("/");
		String contextPath = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + contextPath + "/";
		String src = UploadPhotoTest.cutPhoto(realPath, data);
		try {
			response.getWriter().write(src);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
