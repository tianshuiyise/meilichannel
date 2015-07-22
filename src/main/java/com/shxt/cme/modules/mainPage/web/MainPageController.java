package com.shxt.cme.modules.mainPage.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shxt.cme.domain.OrderBean;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.ReviewBean;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.modules.mainPage.service.MainPageService;

/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： ShouyeController   
 * @Description:   类描述  TODO
 * @date： 2015-7-16 下午5:52:49 
 * @version： 1.0 
 */
@Controller
@RequestMapping(value = "")
public class MainPageController {
	
	@Autowired
	private MainPageService mainPageService;
	
	@RequestMapping(value = "")
	public String mainPage0(Model model){
		
		List<Shop> meirongShops=mainPageService.getShops(1);
		List<Shop> meifaShops=mainPageService.getShops(2);
		List<Shop> meijiaShops=mainPageService.getShops(3);
		
		model.addAttribute("meirongShops", meirongShops);
		model.addAttribute("meifaShops", meifaShops);
		model.addAttribute("meijiaShops", meijiaShops);
		
		
		
		return "/staticPage/shouye";
	}
	/** @Description: TODO
	 * @return  
	 * @return: String
	*/
	@RequestMapping(value = "/mainPage/shouye")
	public String mainPage(Model model){
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/mainPage/meirong")
	public String meirongShop(){
		
		return "/staticPage/meirong";
	}
	
	@RequestMapping(value = "/mainPage/shopDetail/{shopId}")
	public String shopDetail(Model model,@PathVariable("shopId") String shopId){
		
		Shop shop=mainPageService.detail(shopId);
		model.addAttribute("shop", shop);
		
		
		return "/staticPage/shopDetail";
	}
	
	/** @Description: TODO
	 * @param request
	 * @param shopId
	 * @param response
	 * @return  
	 * @return: List<Product>
	*/
	@ResponseBody
	@RequestMapping(value = "/mainPage/product")
	public List<Product> getAllProduct(HttpServletRequest request,@RequestBody Product product,
			HttpServletResponse response){
		//@RequestParam("shopId") String shopId
		List<Product> products=mainPageService.getAllProduct( product.getShopId());
		
		return products;
	}
	
	
	@RequestMapping(value = "/mainPage/review")
	public @ResponseBody List<ReviewBean> getAllReview(@RequestBody ReviewBean review){
		//@RequestParam("shopId") String shopId
		List<ReviewBean> reviews=mainPageService.getAllReview( review.getShopId());
		
		return reviews;
	}
	
	
	@RequestMapping(value = "/mainPage/order")
	public @ResponseBody List<OrderBean> getAllOrder(@RequestBody OrderBean orderBean){
		//@RequestParam("shopId") String shopId
		List<OrderBean> orders=mainPageService.getAllOrder( orderBean.getShopId());
		
		return orders;
	}
	
	
	
	
	@RequestMapping(value = "/mainPage/productDetail/{proId}")
	public String productionDetail(Model model,@PathVariable("proId") String proId){
		
		//Product production=mainPageService.detail(proId);
		//model.addAttribute("Product", production);
		
		return "/staticPage/productDetail";
	}
	
	
	@RequestMapping(value = "/mainPage/intoMyChannel/{roleType}")
	public String intoMyChannel(@PathVariable("roleType") String roleType){
		/*String myChannel="redirect:/personalCenter/personalInfo";
		
		if(null!=roleType && ("2").equals(roleType)){
			myChannel="redirect:/personalCenter/personalInfo";
		}*/
		return "/myChannelIndex";
	}
	
	
	
	@RequestMapping(value = "/mainPage/intoMyShop")
	public String intoMyShop(){
		return "/myShopIndex";
	}
}
