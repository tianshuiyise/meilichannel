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
import com.shxt.cme.modules.member.service.MemberService;
import com.shxt.framework.utils.mapper.BeanMapper;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;

@Controller
@RequestMapping(value = "member")
public class MemberController extends BaseController implements ServletContextAware {

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
	public String list(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		// 获取分页对象
		Page<Member> memberList = memberService.findWithPage(pageable,user);
		System.out.println("memberList===="+memberList);
		model.addAttribute("memberList", memberList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "member/meirongMember";
	}
	@RequestMapping("meirongMember")
	public String listMeirong(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		// 获取分页对象
		Page<Member> memberList = memberService.findWithPage1(pageable,user);
		System.out.println("memberList===="+memberList);
		model.addAttribute("memberList", memberList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "member/meirongMember";
	}
	
	@RequestMapping("meifaMember")
	public String listMeifa(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		
		// 获取分页对象
		Page<Member> memberList = memberService.findWithPage2(pageable,user);
		System.out.println("memberList===="+memberList);
		model.addAttribute("memberList", memberList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "member/meifaMember";
	}
	
	/**
	 * @Description: TODO
	 * @param model
	 * @param pageable
	 * @param request
	 * @param session
	 * @return  
	 * @return: String
	 */
	@RequestMapping("meijiaMember")
	public String listMeijia(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		//
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		
		// 获取分页对象
		Page<Member> memberList = memberService.findWithPage3(pageable,user);
		System.out.println("memberList===="+memberList);
		model.addAttribute("memberList", memberList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "member/meijiaMember";
	}
	@RequestMapping("testFileUpload1")
	public String upload(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		// 从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		User user=getCurrentUser(session);
		
		
		// 获取分页对象
		Page<Member> memberList = memberService.findWithPage(pageable,user);
System.out.println("memberList===="+memberList);
		model.addAttribute("productList", memberList);
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "member/meirongMemberUploadTest";
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
					   return "redirect:/meirongMember";
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
	
	@RequestMapping("inselectMeirongMemb")
	public String inselectMeirongMemb(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "member/meirongMemberUpload";
	
	}
	@RequestMapping("inselectMeifaMemb")
	public String inselectMeifaMemb(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "member/meifaMemberUpload";
	
	}
	@RequestMapping("inselectMeijiaMemb")
	public String inselectMeijiaMemb(Model model, Pageable pageable, ServletRequest request,
			HttpSession session) {
		  
		return "member/meijiaMemberUpload";
	
	}
	@RequestMapping("/meirongInfoUpload")
    public String meirongInfoUpload(Model model,Member member,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
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
	                        member.setImageAddress(pathSys);
	                        member.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = memberService.addInfo1(member,user);
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
    public String meifaInfoUpload(Model model,Member member,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
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
	                        member.setImageAddress(pathSys);
	                        member.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = memberService.addInfo2(member,user);
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
    public String meijiaInfoUpload(Model model,Member member,User user,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		try {
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
	                        member.setImageAddress(pathSys);
	                        member.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			boolean str = memberService.addInfo3(member,user);
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
	@RequestMapping("modifyMemb")
	public String modifyMemb(Model model, Member member, ServletRequest request,
			HttpSession session) {
		Member memberInfo=memberService.findInfoMem(member);
		session.setAttribute("memberInfo", memberInfo);
		return "member/memberModify";
	
	}
	@RequestMapping("membInfoModify")
	public String proInfoModify(Model model, Member member, HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
		  
		try {
			if(member==null){
				
			}
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
	                        member.setImageAddress(pathSys);
	                        member.setImageName(fileName);
	                        File localFile = new File(pathSys);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
			String str =memberService.update(member);
			request.setAttribute("InfoMessage", str);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
	
	}
	@RequestMapping("deleteMemb")
	public String deleteMemb(Model model, Member member, ServletRequest request,
			HttpSession session) {
		  
		try {
			if(member==null){
				
			}
			String str =memberService.delete(member);
			request.setAttribute("InfoMessage", str);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage",
					"信息载入失败！具体异常信息：" + e.getMessage());
		} 
    
        return "approInc/apMain";  
	
	}
}
