package com.shxt.cme.modules.MngBeautyShop.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.MngBeautyShop.service.MngBeautyShopService;
import com.shxt.framework.utils.UploadPhotoTest;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;


@Controller
@RequestMapping(value = "beautyShopMng")
public class MngBeautyShopController extends BaseController{
	
	Logger logger = LoggerFactory.getLogger(MngBeautyShopController.class);
	
	@Autowired
	private MngBeautyShopService mngBeautyShopService;
	

	@RequestMapping("/{shopType}")
	public String list(Model model,@PathVariable("shopType") String shopType, Pageable pageable, ServletRequest request,HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		User user=getCurrentUser(session);
		// 将接受的Map对象转化成实体对象
		Shop shop = BeanMapper.convertMap(Shop.class, searchParams);
	    int type = Integer.parseInt(shopType);
		shop.setShopType(type);
		// 获取分页对象
		Page<Shop> productList = mngBeautyShopService.findWithPage(pageable, shop,user);
		model.addAttribute("productList", productList);
		model.addAttribute("shopType", shopType);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		return "beautyShopMng/listBeautyShop";
	}
	
	@RequestMapping("/{shopType}/preModify" )   
    public String preModify(Model model,@PathVariable("shopType") String shopType,String shopId) { 
		
    	Shop shop = mngBeautyShopService.getShopById(shopId);
		model.addAttribute("shop", shop);
		model.addAttribute("shopType", shopType);
		
        return "beautyShopMng/modifyBeautyShop";  
    }  
	
    @RequestMapping("/{shopType}/modify")
	public String modify(Model model,@PathVariable("shopType") String shopType,Shop shop,HttpSession session){
        
		int i= mngBeautyShopService.modifyShop(shop);
		model.addAttribute("message", i==1?MODIFY_SUCCEED:MODIFY_FAIL);
		return "forward:/beautyShopMng/"+shopType;
	}
    
    
    @RequestMapping("/{shopType}/preAdd" )   
    public String preAdd(Model model,@PathVariable("shopType") String shopType) { 
		model.addAttribute("shopType", shopType);
        return "beautyShopMng/addBeautyShop";  
    }  
	
    @RequestMapping("/{shopType}/add")
	public String add(Model model,@PathVariable("shopType") String shopType,Shop shop,HttpSession session){
    	User user=getCurrentUser(session);
    	
		int i= mngBeautyShopService.add(shop,user);
		model.addAttribute("message", i==1?ADD_SUCCEED:ADD_FAIL);
		return "forward:/beautyShopMng/"+shopType;
	}
    
    @RequestMapping("/{shopType}/delete")
	public String delete(Model model,@PathVariable("shopType") String shopType,String shopId,HttpSession session){
        
		int i= mngBeautyShopService.delete(shopId);
		model.addAttribute("message", i==1?MODIFY_SUCCEED:MODIFY_FAIL);
		return "forward:/beautyShopMng/"+shopType;
	}
    
    @RequestMapping("/{shopType}/detail")
	public String detail(Model model,@PathVariable("shopType") String shopType,String shopId){
        
		Shop shop= mngBeautyShopService.detail(shopId);
		
		model.addAttribute("shop", shop);
		model.addAttribute("shopType", shopType);
		
		return "beautyShopMng/showDetailBeautyShop";
	}
    
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
	
	@RequestMapping("/photoSave")
	public void photoSave(HttpServletRequest request,
			String data,
			HttpServletResponse response){
		
		String x1="";
		String y1="";
		String x2="";
		String y2="";
		String src="";
		
		String[] str=data.split(",");
		
		if(str!=null){
			x1=str[0];
			y1=str[1];
			x2=str[2];
			y2=str[3];
			src=str[4];
		}
		
		try {
			response.getWriter().write(src);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
    
    
    
    
    
    
    
    
    
    
}
