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
import com.shxt.cme.modules.product.service.ProductService;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "product")
public class ProductController extends BaseController implements ServletContextAware {
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
	public String list(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		// 获取分页对象
		Page<Product> productList = productService.findWithPage1(pageable,user);
		model.addAttribute("productList", productList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "production/meirongProduct";
	}
	@RequestMapping("meirongProduct")
	public String list1(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		// 获取分页对象
		Page<Product> productList = productService.findWithPage1(pageable,user);
		model.addAttribute("productList", productList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));
		return "production/meirongProduct";
	}
	@RequestMapping("meifaProduct")
	public String list2(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);	
		// 获取分页对象
		Page<Product> productList = productService.findWithPage2(pageable,user);
		model.addAttribute("productList", productList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "production/meifaProduct";
	}
	@RequestMapping("meijiaProduct")
	public String list3(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		// 获取分页对象
		Page<Product> productList = productService.findWithPage3(pageable,user);
		model.addAttribute("productList", productList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "production/meijiaProduct";
	}
	@RequestMapping("testFileUpload1")
	public String upload(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		// 获取分页对象
		Page<Product> productList = productService.findWithPage1(pageable,user);
		model.addAttribute("productList", productList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "production/meirongProductUploadTest";
	}
	@RequestMapping("/testFileUpload")
		public String handleUploadData(String name,
				@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request,
				HttpServletResponse response){
				if (!file.isEmpty()) {
					   String path = this.servletContext.getRealPath("/upload/");  //获取本地存储路径
					   String fileName = file.getOriginalFilename();
					   String fileType = fileName.substring(fileName.lastIndexOf("."));
					   System.out.println(fileType); 
					   File file2 = new File(path,new Date().getTime() + fileType); //新建一个文件
					   try {
						    file.getFileItem().write(file2); //将上传的文件写入新建的文件中
					   } catch (Exception e) {
						    e.printStackTrace();
					   }
					   return "redirect:/meirongProduct";
					}else{
						return "redirect:upload_error.jsp";
					}
	}
	@RequestMapping("/testFileUploadDuo")
    public String upload2(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
        //创建一个通用的多部分解析器  
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
        //判断 request 是否有文件上传,即多部分请求  
        if(multipartResolver.isMultipart(request)){  
            //转换成多部分request    
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
            //取得request中的所有文件名  
            Iterator<String> iter = multiRequest.getFileNames();  
            while(iter.hasNext()){  
                //记录上传过程起始时的时间，用来计算上传时间  
                int pre = (int) System.currentTimeMillis();  
                //取得上传文件  
                MultipartFile file = multiRequest.getFile(iter.next());  
                if(file != null){  
                    //取得当前上传文件的文件名称  
                    String myFileName = file.getOriginalFilename();  
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
                    if(myFileName.trim() !=""){  
                        System.out.println("myFileName"+myFileName);  
                        //重命名上传后的文件名  
                        String fileName = "demoUpload/" + file.getOriginalFilename();  
                        //定义上传路径  
                        String path = "E:/" + fileName;  
                        System.out.println("path="+path);
                        File localFile = new File(path);  
                        file.transferTo(localFile);  
                    }  
                }  
                //记录上传该文件后的时间  
                int finaltime = (int) System.currentTimeMillis();  
                System.out.println(finaltime - pre);  
            }  
              
        }  
        return "/success";  
    }  
      
    @RequestMapping("/toUpload" )   
    public String toUpload() {  
          
        return "/upload";  
    }  
	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext  = servletContext;
		
	}
	
	@RequestMapping("inselectMeirongPro")
	public String inselectMeirongPro(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "production/meirongProductUpload";
	
	}
	@RequestMapping("inselectMeifaPro")
	public String inselectMeifaPro(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "production/meifaProductUpload";
	
	}
	@RequestMapping("inselectMeijiaPro")
	public String inselectMeijiaPro(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "production/meijiaProductUpload";
	
	}
	@RequestMapping("/meirongInfoUpload")
    public String proInfoUpload1(Model model,Product product,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
			 //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        String path = this.servletContext.getRealPath("");  //获取本地存储路径
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                        //重命名上传后的文件名  
	                        String fileName =  file.getOriginalFilename();  
	                        //定义上传路径  
	                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
	                        product.setImageAddress(pathSys);
	                        product.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = productService.addInfo1(product,user);
			String message="";
			if(str==true){
				message="上传成功";
			}else{
				message="上传失败";
			}
			model.addAttribute("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
    }  
	@RequestMapping("/meifaInfoUpload")
    public String proInfoUpload2(Model model,Product product,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
			 //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        String path = this.servletContext.getRealPath("");  //获取本地存储路径
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                        //重命名上传后的文件名  
	                        String fileName =  file.getOriginalFilename();  
	                        //定义上传路径  
	                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
	                        product.setImageAddress(pathSys);
	                        product.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = productService.addInfo2(product,user);
			String message="";
			if(str==true){
				message="上传成功";
			}else{
				message="上传失败";
			}
			model.addAttribute("message", message);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
    }
	@RequestMapping("/meijiaInfoUpload")
    public String proInfoUpload3(Model model,Product product,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
			 //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        String path = this.servletContext.getRealPath("");  //获取本地存储路径
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                        //重命名上传后的文件名  
	                        String fileName =  file.getOriginalFilename();  
	                        //定义上传路径  
	                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
	                        product.setImageAddress(pathSys);
	                        product.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = productService.addInfo3(product,user);
			String message="";
			if(str==true){
				message="上传成功";
			}else{
				message="上传失败";
			}
			model.addAttribute("message", message);;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"添加信息失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
    }
	@RequestMapping("modifyPro")
	public String modifyPro(Model model, Product product, ServletRequest request,
			HttpSession session) {
		Product productInfo=productService.findInfoPro(product);
		session.setAttribute("productInfo", productInfo);
		return "production/productModify";
	
	}
	@RequestMapping("proInfoModify")
	public String proInfoModify(Model model, Product product, HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
		  
		  
		try {
			if(product==null){
				
			}
			 //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        String path = this.servletContext.getRealPath("");  //获取本地存储路径
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                        //重命名上传后的文件名  
	                        String fileName =  file.getOriginalFilename();  
	                        //定义上传路径  
	                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
	                        product.setImageAddress(pathSys);
	                        product.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	                System.out.println(finaltime - pre);  
	            }  
	              
	        } 
			String str =productService.update(product);
			request.setAttribute("InfoMessage", str);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		} 
  
      return "approInc/apMain";  
	
	}
	@RequestMapping("deletePro")
	public String deletePro(Model model, Product product, ServletRequest request,
			HttpSession session) {
		  
		  
		try {
			if(product==null){
				
			}
			String str =productService.delete(product);
			request.setAttribute("InfoMessage", str);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		} 
  
      return "approInc/apMain";  
	
	}
}

