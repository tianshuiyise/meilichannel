package com.shxt.cme.modules.blog.web;
 

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.common.collect.Maps;
import com.shxt.framework.web.Servlets;
import com.shxt.framework.web.base.BaseController;
import com.shxt.cme.domain.Blog;
import com.shxt.cme.domain.BlogForm;
import com.shxt.cme.modules.blog.service.BlogExcelView;
import com.shxt.cme.modules.blog.service.BlogService;
@Controller
@RequestMapping(value="blog")
public class BlogController extends BaseController {
	
	Logger logger =  LoggerFactory.getLogger(BlogController.class);
	
	/**
	 * 
	 * 
	 * 
	 * 
	 */
	@Autowired
	private BlogService blogService;
	/**
	 * 默认列表页面
	 * @throws IOException 
	 */
	@RequestMapping("")
	public String list(Model model,Pageable pageable,ServletRequest request, HttpServletResponse response) throws IOException
	{
		//log使用说明：info为程序运行的信息，用于了解程序的运行过程
		logger.info("blog list method invoked");
		//从请求中取得search_开头的参数及其值，并封装到map中，供后续查询使用
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		String title = (String)searchParams.get("title");
		//log使用说明：debug为调式程序的信息，有了这个以后就别system.out啦
		logger.debug("从searchParams取title的信息为：{}",title);
		//获取所有的blog用于自动匹配
//		List<Blog> blogList = blogService.findAll();
//		response.getWriter().wr
//		model.addAttribute("blogList", blogList);
		
		Page<Blog> blogs = blogService.findByTitle(title,pageable);
		/*List<Blog> blogList = blogs.getContent();
		List<String> blogName = new ArrayList<String>();
		for(Blog tempBlog : blogList) {
			blogName.add(tempBlog.getTitle());
		}
		PrintWriter out = response.getWriter();
		out.print(blogName);
		out.flush();
		out.close();*/
		
		model.addAttribute("blogs",blogs);
		model.addAttribute("searchParams", Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		return "blog/blogList";
	}
	
	/**
	* @Description:	ftp文件上传demo 
	* @param myfiles
	* @param request void
	 * @throws IOException 
	 */
	@RequestMapping("upload")
	public void upload(@RequestParam MultipartFile[] myfiles, HttpServletRequest request) throws IOException {
		for(MultipartFile myfile : myfiles){  
			//如果文件非空，进行上传
            if(!myfile.isEmpty()){
            	InputStream input = myfile.getInputStream();
            	//文件在ftp服务器端地址
                String ftpPath = "/material/";
                //教师图片名称
                String fileName = myfile.getOriginalFilename();
                
//                FTPUtils.uploadFile(ftpPath, fileName, input);
//                FTPUtils.downloadFile(ftpPath, fileName, "c://");
            } 
        }  
	}
	@RequestMapping(value="add")
	public String add(Model model,Blog blog,ServletRequest request) throws IOException
	{
		blog.setId(request.getParameter("id"));
		blog.setContent(request.getParameter("content")) ;
		blog.setTitle(request.getParameter("title"));
		boolean flag=blogService.update(blog);
		model.addAttribute("message", true == flag ? ADD_SUCCEED : ADD_FAIL);
		return "blog/blog";
	}
	@RequestMapping(value="input")
	public String input() throws IOException
	{
		return "blog/blog";
	}

	@RequestMapping("export")
	public ModelAndView export(){
		
		 List<Blog> blogs = blogService.findAll();
		
		 Map<String,List<Blog>> model = Maps.newHashMap();
		 
		 model.put("blogs", blogs);
		
		 return new ModelAndView(new BlogExcelView(),model);
		
	}
	
	@RequestMapping("autoComplete") 
	@ResponseBody
	public List<Blog> getBlogTitles() {
		List<Blog> blogList = blogService.findAll();
		return blogList;
	}
	
	@RequestMapping("submitAllLine")
	public String submitAllLine(BlogForm blogForm, Model model) {
		blogService.updateBlogInfo(blogForm);
		return "forward:/blog";
	}
	
}
