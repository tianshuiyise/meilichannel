package com.shxt.cme.modules.shop.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
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
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.domain.UserInfo;
import com.shxt.cme.modules.shop.service.ShopService;
import com.shxt.framework.utils.UploadPhotoTest;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "shop")
public class ShopController extends BaseController implements ServletContextAware {
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
	public String list(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		
		return "approInc/apMain";
	}

    @RequestMapping("meirongShopUpload" )   
    public String meirongShopUpload(Model model, User user,String experts, HttpSession session) {  
    	
    		String str="approInc/apMain";
    		Merchont merchont= shopService.findMerchontType(user);
    		Shop shop= shopService.findShop1(merchont);
    		if(shop == null) {
    		if(merchont.getMerchontType()==1||merchont.getMerchontType()==4||merchont.getMerchontType()==5||merchont.getMerchontType()==7){     // 1.商家有开美发店铺的权限
    			str="shopUpload/meirongShopUpload";
    		}else if(merchont.getMerchontType()==2||merchont.getMerchontType()==3||merchont.getMerchontType()==6){  // 2.商家无开美发店铺的权限
    			str="shopUpload/shop";
    		}else {  //3.无任何权限值
    			str="approInc/apMain";
    		}
    		}else{ 
    			session.setAttribute("shop", shop);
    			str="shopUpload/shopModify"; }
    		
        return str;  
    }   
    @RequestMapping("meifaShopUpload" )   
    public String meifaShopUpload(Model model, User user,String experts, HttpSession session) {  
	
    		String str="approInc/apMain";
    		Merchont merchont= shopService.findMerchontType(user);
    		Shop shop= shopService.findShop2(merchont);
    		if(shop == null) {
    		if(merchont.getMerchontType()==2||merchont.getMerchontType()==4||merchont.getMerchontType()==6||merchont.getMerchontType()==7){     // 1.商家有开美发店铺的权限
    			str="shopUpload/meifaShopUpload";
    		}else if(merchont.getMerchontType()==1||merchont.getMerchontType()==3||merchont.getMerchontType()==5){  // 2.商家无开美发店铺的权限
    			str="shopUpload/shop";
    		}else {  //3.无任何权限值
    			str="approInc/apMain";
    		}
    		}else{ 
    			session.setAttribute("shop", shop);
    			str="shopUpload/shopModify"; }
    		
        return str;  
    }  
    @RequestMapping("meijiaShopUpload" )     
    public String meijiaShopUpload(Model model, User user,String experts, HttpSession session) {  
	
    		String str="approInc/apMain";
    		Merchont merchont= shopService.findMerchontType(user);
    		Shop shop= shopService.findShop3(merchont);
    		if(shop == null) {
    		if(merchont.getMerchontType()==3||merchont.getMerchontType()==5||merchont.getMerchontType()==6||merchont.getMerchontType()==7){     // 1.商家有开美发店铺的权限
    			str="shopUpload/meijiaShopUpload";
    		}else if(merchont.getMerchontType()==1||merchont.getMerchontType()==2||merchont.getMerchontType()==4){  // 2.商家无开美发店铺的权限
    			str="shopUpload/shop";
    		}else {  //3.无任何权限值
    			str="approInc/apMain";
    		}
    		}else{ 
    			session.setAttribute("shop", shop);
    			str="shopUpload/shopModify"; }
        return str;  
    }   
    @RequestMapping("/shopQuery" )   
    public String shopQuery() {  
          
        return "shop/shopQuery";  
    }  
    @RequestMapping("meirongUploadTo")
	public String editMeirongShopInfo(Model model,Shop shop,User user,HttpSession session,HttpServletRequest request,HttpServletResponse response)
				throws IllegalStateException, IOException{
        //创建一个通用的多部分解析器  
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
        String path = this.servletContext.getRealPath("");  //获取本地存储路径;
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
                        String fileName =  file.getOriginalFilename();  
                        //定义上传路径  
                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
                        shop.setImageAddress(pathSys);
                        shop.setImageName(fileName);
                        File localFile = new File(pathSys);  
                        file.transferTo(localFile);  
                    }  
                }  
                //记录上传该文件后的时间  
                int finaltime = (int) System.currentTimeMillis();
                System.out.println(finaltime - pre);  
            }  
              
        }  
        
		String message="";
		boolean i= shopService.insertShop1(shop,user);
		if(i==true){
			message="上传成功";
		}else{
			message="上传失败";
		}
		model.addAttribute("message", message);
		return "approInc/apMain";
	}
    @RequestMapping("meifaUploadTo")
	public String editMeifaShopInfo(Model model,Shop shop,User user,HttpSession session,HttpServletRequest request,HttpServletResponse response)
				throws IllegalStateException, IOException{
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
                        shop.setImageAddress(pathSys);
                        shop.setImageName(fileName);
                        File localFile = new File(pathSys);  
                        file.transferTo(localFile);  
                    }  
                }  
                //记录上传该文件后的时间  
                int finaltime = (int) System.currentTimeMillis();  
                System.out.println(finaltime - pre);  
            }  
              
        }  
        
		String message="";
		boolean i= shopService.insertShop2(shop,user);
		if(i==true){
			message="上传成功";
		}else{
			message="上传失败";
		}
		model.addAttribute("message", message);
		return "approInc/apMain";
	}
    @RequestMapping("meijiaUploadTo")
	public String editMeijiaShopInfo(Model model,Shop shop,User user,HttpSession session,HttpServletRequest request,HttpServletResponse response)
				throws IllegalStateException, IOException{
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
                        shop.setImageAddress(pathSys);
                        shop.setImageName(fileName);
                        File localFile = new File(pathSys);  
                        file.transferTo(localFile);  
                    }  
                }  
                //记录上传该文件后的时间  
                int finaltime = (int) System.currentTimeMillis();  
                System.out.println(finaltime - pre);  
            }  
              
        }  
        
		String message="";
		boolean i= shopService.insertShop3(shop,user);
		if(i==true){
			message="上传成功";
		}else{
			message="上传失败";
		}
		model.addAttribute("message", message);
		return "approInc/apMain";
	}
	@RequestMapping("/testFileUpload")
		public String handleUploadData(String name,
				@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request,
				HttpServletResponse response){
				if (!file.isEmpty()) {
					   String path = this.servletContext.getRealPath("/upload/");  //获取本地存储路径
					   System.out.println(path);
					   String fileName = file.getOriginalFilename();
					   String fileType = fileName.substring(fileName.lastIndexOf("."));
					   System.out.println(fileType); 
					   File file2 = new File(path,new Date().getTime() + fileType); //新建一个文件
					   try {
						    file.getFileItem().write(file2); //将上传的文件写入新建的文件中
					   } catch (Exception e) {
						    e.printStackTrace();
					   }
					   return "redirect:/meifaProduct";
					}else{
						return "redirect:upload_error.jsp";
					}
	}
	@RequestMapping("/testFileUploadDuo")
    public String upload2(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
        //创建一个通用的多部分解析器  
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
        String path = this.servletContext.getRealPath("");  //获取本地存储路径
      //  String path = this.servletContext.getContextPath(); //获取本地存储路径
       // String path1 = this.servletContext.getContextPath(); //获取本地存储路径
        System.out.println("本地路径=="+path);
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
                        String fileName =  file.getOriginalFilename();  
                        //定义上传路径  
                        String pathSys = path+"/" + "static"+"/"+"photo"+"/"+fileName ;
                        System.out.println("pathsys="+pathSys);
                        File localFile = new File(pathSys);  
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
	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext  = servletContext;
	}
	@RequestMapping("shopModifyTo")
	public String shopModifyTo(Model model, Shop shop,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
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
                        shop.setImageAddress(pathSys);
                        shop.setImageName(fileName);
                        File localFile = new File(pathSys);  
                        file.transferTo(localFile);  
                    }  
                }  
            }  
              
        }
		try {
			if(shop==null){
				
			}
			  
			String str =shopService.updateShop(shop);
			request.setAttribute("InfoMessage", str);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
	
	}
	
	@RequestMapping("/upload")
	public void upload(Model model, Shop shop, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "file") MultipartFile file)
			throws IllegalStateException, IOException {
		
		String realPath = request.getSession().getServletContext().getRealPath("/"); 
		String contextPath= request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath+"/";
		response.getWriter().write(UploadPhotoTest.uploadPhoto( file, realPath, contextPath ));
	}

@RequestMapping("/photoSave")
	public void photoSave(HttpServletRequest request,
			String data,
			HttpServletResponse response){
		String realPath = request.getSession().getServletContext().getRealPath("/"); 
		String contextPath= request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath+"/"; 
		String src =UploadPhotoTest.cutPhoto(realPath,data);
		try {
			response.getWriter().write(src);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
