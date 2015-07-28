package com.shxt.cme.modules.product.web;

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

import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.modules.product.service.ProductService;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "uploadProductInfo")
public class ProductController extends BaseController implements
		ServletContextAware {
	Logger logger = LoggerFactory.getLogger(ProductController.class);
	private ServletContext servletContext;
	@Autowired
	private ProductService productService;

	/**
	 * 
	 * @Description:
	 * @param model
	 * @return String
	 */
	@RequestMapping("")
	public String list() {
		return  "production/product";
	}

	@RequestMapping("beautyProductInfo")
	public String list1(Model model,Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		String str = "production/product";
		User user = getCurrentUser(session);
		Merchont merchont = productService.findMerchontType(user);
		if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 4
				|| merchont.getMerchontType() == 5
				|| merchont.getMerchontType() == 7) { // 1.商家有查看美容服务的权限
			Page<Product> productList = productService
					.findWithPage1(pageable, user);
			model.addAttribute("productList", productList);
			str ="production/meirongProduct";
		} else if (merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 6) { // 2.商家无查看美容服务的权限
			str = "production/product";
		} else { // 3.无任何权限值
			str = "production/product";
		}
		return str;
	}

	@RequestMapping("hairdressProductInfo")
	public String list2(Model model,Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		String str = "production/product";
		User user = getCurrentUser(session);
		Merchont merchont = productService.findMerchontType(user);
		if (merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 4
				|| merchont.getMerchontType() == 6
				|| merchont.getMerchontType() == 7){ // 1.商家有查看美发服务的权限
			Page<Product> productList = productService
					.findWithPage1(pageable, user);
			model.addAttribute("productList", productList);
			str ="production/meifaProduct";
		} else if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 5) { // 2.商家无查看美发服务的权限
			str = "production/product";
		} else { // 3.无任何权限值
			str = "production/product";
		}

		// 
		return str;
	}

	@RequestMapping("manicureProductInfo")
	public String list3(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		String str = "production/product";
		User user = getCurrentUser(session);
		Merchont merchont = productService.findMerchontType(user);
		if (merchont.getMerchontType() == 3
				|| merchont.getMerchontType() == 5
				|| merchont.getMerchontType() == 6
				|| merchont.getMerchontType() == 7) { // 1.商家有查看美甲服务的权限
			Page<Product> productList = productService
					.findWithPage1(pageable, user);
			model.addAttribute("productList", productList);
			str ="production/meijiaProduct";
		} else if (merchont.getMerchontType() == 1
				|| merchont.getMerchontType() == 2
				|| merchont.getMerchontType() == 4) { // 2.商家无查看美甲服务的权限
			str = "production/product";
		} else { // 3.无任何权限值
			str = "production/product";
		}

		// 
		return str;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;

	}

	@RequestMapping("inselectMeirongPro")
	public String inselectMeirongPro() {
		return "production/meirongProductUpload";
	}

	@RequestMapping("inselectMeifaPro")
	public String inselectMeifaPro() {
		return "production/meifaProductUpload";
	}

	@RequestMapping("inselectMeijiaPro")
	public String inselectMeijiaPro() {
		return "production/meijiaProductUpload";
	}

	@RequestMapping("/meirongInfoUpload")
	public String proInfoUpload1(Model model, Product product, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
	try{	
		boolean str = productService.addInfo1(product, user);
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

		return  "production/product";
	}

	@RequestMapping("/meifaInfoUpload")
	public String proInfoUpload2(Model model, Product product, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
	try{	
		boolean str = productService.addInfo2(product, user);
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

		return  "production/product";
	}

	@RequestMapping("/meijiaInfoUpload")
	public String proInfoUpload3(Model model, Product product, User user,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
	try{	
		boolean str = productService.addInfo3(product, user);
			String message = "";
			if (str == true) {
				message = "上传成功";
			} else {
				message = "上传失败";
			}
			model.addAttribute("message", message);
			;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		}

		return  "production/product";
	}

	@RequestMapping("modifyPro")
	public String modifyPro(Model model, Product product,
			ServletRequest request, HttpSession session) {
		Product productInfo = productService.findInfoPro(product);
		model.addAttribute("productInfo", productInfo);
		return "production/productModify";

	}

	@RequestMapping("proInfoModify")
	public String proInfoModify(Model model, Product product,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {

		try {
			if (product == null) {

			}else{
			String str = productService.update(product);
			request.setAttribute("InfoMessage", str);}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		}

		return  "production/product";

	}

	@RequestMapping("deletePro")
	public String deletePro(Model model, Product product,
			ServletRequest request, HttpSession session) {

		try {
			if (product == null) {

			}else{
			String str = productService.delete(product);
			request.setAttribute("InfoMessage", str);}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		}

		return  "production/product";

	}
}
