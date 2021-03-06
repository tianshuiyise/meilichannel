package com.shxt.cme.modules.mainPage.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Order;
import com.shxt.cme.domain.OrderBean;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.ReviewBean;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.mainPage.service.MainPageService;
import com.shxt.framework.utils.DbUtils;
import com.shxt.framework.utils.UploadPhotoTest;
import com.shxt.framework.web.base.BaseController;

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
public class MainPageController  extends BaseController{
	
	@Autowired
	private MainPageService mainPageService;
	
	/**
	 * @Description: 首页
	 * @param model
	 * @return: String
	 */
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
	
	/** @Description: 首页
	 * @return: String
	*/
	@RequestMapping(value = "/mainPage/shouye")
	public String mainPage(){
		//跳回首页
		return "redirect:/";
	}
	
	/**
	 * @Description: 查询
	 * @param model
	 * @param pageable
	 * @param shopName
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/search")
	public String mainPageSearch(Model model,Pageable pageable,@RequestParam("shopName") String shopName,HttpServletRequest request){
		//String en=request.getCharacterEncoding();
		shopName=DbUtils.encodeStr(shopName);
		String jspLocation="/staticPage/meirong";
		// 获取分页对象、得到所有的店铺
		Page<Shop> shops = mainPageService.findWithPageByName(pageable, shopName);
		model.addAttribute("shops", shops);
		return jspLocation;
	}
	
	
	
	/**
	 * @Description: 美容、美发、美夹
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/{shopType}")
	public String meirongShop(Model model, Pageable pageable,@PathVariable("shopType") String shopType){
		String jspLocation="/staticPage/meirong";
		// 获取分页对象、得到所有的店铺
		Page<Shop> shops = mainPageService.findWithPage(pageable, null,null,shopType);
		model.addAttribute("shops", shops);
		return jspLocation;
	}
	
	/**
	 * @Description: 进入店铺详情
	 * @param model
	 * @param shopId
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/shopDetail")
	public String shopDetail(Model model,@RequestParam("shopId") String shopId){
		Shop shop=mainPageService.detail(shopId);
		model.addAttribute("shop", shop);
		return "/staticPage/shopDetail";
	}
	
	/** @Description: 通过ajax得到所有Product
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
		List<Product> products=mainPageService.getAllProduct( product.getShopId());
		return products;
	}
	
	/**
	 * @Description: 通过ajax得到所有评价
	 * @param review
	 * @return  
	 * @return: List<ReviewBean>
	 */
	@RequestMapping(value = "/mainPage/review")
	public @ResponseBody List<ReviewBean> getAllReview(@RequestBody ReviewBean review){
		List<ReviewBean> reviews=mainPageService.getAllReview(review);
		return reviews;
	}
	
	/**
	 * @Description: 通过ajax得到所有订单
	 * @param orderBean
	 * @return  
	 * @return: List<OrderBean>
	 */
	@RequestMapping(value = "/mainPage/order")
	public @ResponseBody List<OrderBean> getAllOrder(@RequestBody OrderBean orderBean){
		List<OrderBean> orders=mainPageService.getAllOrder( orderBean);
		return orders;
	}
	
	/**
	 * @Description: 通过ajax得到所有member
	 * @param review
	 * @return  
	 * @return: List<ReviewBean>
	 */
	@RequestMapping(value = "/mainPage/member")
	public @ResponseBody List<Member> getAllMember(@RequestBody Product product){
		List<Member> members=mainPageService.getMemberByProduct(product.getProId() );
		return members;
	}
	/**
	 * @Description: 得到产品详情
	 * @param model
	 * @param proId
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/productDetail")
	public String productionDetail(Model model,@RequestParam("proId") String proId){
		Product production=mainPageService.getProductiondetail(proId);
		model.addAttribute("production", production);
		return "/staticPage/productDetail";
	}
	
	/**
	 * @Description: 预订产品
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/reserveProduct")
	public String reserveProduct(Model model,HttpSession session,OrderBean order){
		User user=getCurrentUser(session);
		int i=mainPageService.reserveProduct(order,user);
		String proid=order.getProId();
		return "redirect:/mainPage/productDetail?proId="+proid;
	}
	/**
	 * @Description: 收藏
	 * @param model
	 * @param session
	 * @param order
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/collectionProduction")
	public String collectionProduction(Model model,HttpSession session,@RequestParam("proId") String proId){
		User user=getCurrentUser(session);
		int i=mainPageService.collectionProduction(proId,user);
		return "redirect:/mainPage/productDetail?proId="+proId;
	}
	
	/**
	 * @Description: 图片上传
	 * @param model
	 * @param shop
	 * @param session
	 * @param request
	 * @param response
	 * @param file
	 * @throws IllegalStateException
	 * @throws IOException  
	 * @return: void
	 */
	@RequestMapping("/upload")
	public void upload(Model model, Shop shop, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "file") MultipartFile file)
			throws IllegalStateException, IOException {
		/*
		 * contextPath =”/项目名称”; //获取的是项目的相对路径
		 * realPath = F:\tomcat_home\webapps\项目名称\ //获取的是项目的绝对路径
		 */
		String realPath = request.getSession().getServletContext().getRealPath("/"); 
		String contextPath= request.getContextPath();
		response.getWriter().write(UploadPhotoTest.uploadPhoto( file, realPath, contextPath ));
		
	}
	/**
	 * @Description: TODO图片上传,保存
	 * @param request
	 * @param data
	 * @param response  
	 * @return: void
	 */
	@RequestMapping("/photoSave")
	public void photoSave(HttpServletRequest request,
			String data,
			HttpServletResponse response){
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
	
	/***
	 * @Description: 进入我的频道
	 * @param roleType
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/intoMyChannel/{roleType}")
	public String intoMyChannel(@PathVariable("roleType") String roleType){
		/*String myChannel="redirect:/personalCenter/personalInfo";
		if(null!=roleType && ("2").equals(roleType)){
			myChannel="redirect:/personalCenter/personalInfo";
		}*/
		return "/myChannelIndex";
	}
	
	/**
	 * @Description: 进入我的店铺
	 * @return  
	 * @return: String
	 */
	@RequestMapping(value = "/mainPage/intoMyShop")
	public String intoMyShop(){
		return "/myShopIndex";
	}
}
