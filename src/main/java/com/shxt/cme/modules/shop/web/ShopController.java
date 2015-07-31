package com.shxt.cme.modules.shop.web;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxt.cme.domain.Merchont;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.shop.service.ShopService;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "uploadShopInfo")
public class ShopController extends BaseController {
	Logger logger = LoggerFactory.getLogger(ShopController.class);
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

	/**
	 * 
	 * @Description: 点击“上传美容店铺信息”的跳转控制
	 * @param model
	 * @return String
	 */
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

	/**
	 * 
	 * @Description: 点击“上传美发店铺信息”的跳转控制
	 * @param model
	 * @return String
	 */
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

	/**
	 * 
	 * @Description: 点击“上传美甲店铺信息”的跳转控制
	 * @param model
	 * @return String
	 */
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

	/**
	 * 
	 * @Description: 上传美容店铺信息的跳转控制
	 * @param model
	 * @return String
	 */
	@RequestMapping("meirongUploadTo")
	public String editMeirongShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		Merchont merchont = shopService.findMerchontType(user);
		boolean i = shopService.insertShop1(shop, merchont);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}


	/**
	 * 
	 * @Description: 上传美发店铺信息的跳转控制
	 * @param model
	 * @return String
	 */
	@RequestMapping("meifaUploadTo")
	public String editMeifaShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		Merchont merchont = shopService.findMerchontType(user);
		boolean i = shopService.insertShop2(shop, merchont);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}


	/**
	 * 
	 * @Description: 上传美甲店铺信息的跳转控制
	 * @param model
	 * @return String
	 */
	@RequestMapping("meijiaUploadTo")
	public String editMeijiaShopInfo(Model model, Shop shop, User user, HttpSession session, 
		HttpServletRequest request,HttpServletResponse response ) throws IllegalStateException,IOException{
		String message = "";
		Merchont merchont = shopService.findMerchontType(user);
		boolean i = shopService.insertShop3(shop, merchont);
		if (i == true) {
			message = "上传成功";
		} else {
			message = "上传失败";
		}
		model.addAttribute("message", message);
		return "shopUpload/shop";
	}


	/**
	 * 
	 * @Description: 保存店铺信息修改的跳转控制
	 * @param model
	 * @return String
	 */
	@RequestMapping("shopModifyTo")
	public String shopModifyTo(Model model, Shop shop, HttpSession session ) {
		//得到进行修改操作的用户信息
		User user=getCurrentUser(session);
		//修改店铺
		int i = shopService.updateShop(shop,user);
		model.addAttribute("message", i>0?MODIFY_SUCCEED:MODIFY_FAIL);
		//shopUpload/shop
		//先暂时跳到这个页面
		return "/myShopIndex";

	}
}
