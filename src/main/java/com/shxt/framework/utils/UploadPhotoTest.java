package com.shxt.framework.utils;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
	* @Project:  美丽频道    
	* @author：   ASus
	* @class： UploadPhotoTest   
	* @Description:   类描述  TODO
	* @date： 2015-7-16 下午3:35:24 
	* @version： 1.0
 */
public class UploadPhotoTest {

	/*
	 * http://blog.csdn.net/swingpyzf/article/details/20230865
	 * 
	 * String path = request.getContextPath(); String realPath =
	 * request.getSession().getServletContext().getRealPath("/"); 
	 * String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath+"/"; 
	 * 说明： contextPath =”/项目名称”; 
	 * //获取的是项目的相对路径
	 * realPath = F:\tomcat_home\webapps\项目名称\ //获取的是项目的绝对路径 basePath =
	 * http://localhost:8080/项目名称/ //获取的是服务的访问地址
	 */
	public static String uploadPhoto(MultipartFile file, String realPath, String contextPath) {
		String pathSys = "";
		if (file != null) {
			String path = realPath;
			// 取得当前上传文件的文件名称
			String myFileName = file.getOriginalFilename();
			// 如果名称不为“”,说明该文件存在，否则说明该文件不存在
			if (myFileName.trim() != "") {
				// 定义上传路径
				pathSys = path + "/" + "static" + "/" + "photo" + "/" + myFileName;
			}
			File uploadedFile = new File(pathSys);
			if (!uploadedFile.exists()) {
				try {
					uploadedFile.createNewFile();
					file.transferTo(uploadedFile);
					pathSys = contextPath + "/static" + "/" + "photo" + "/" + myFileName;
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return pathSys;
	}

	/**
	 * @Description: TODO
	 * @param realPath
	 * @param data
	 * @return  
	 * @return: String
	 */
	public static String cutPhoto(String realPath, String data) {

		String x1 = "";
		String y1 = "";
		String x2 = "";
		String y2 = "";
		String src = "";

		String[] str = data.split(",");
		if (str != null) {
			x1 = str[0];
			y1 = str[1];
			x2 = str[2];
			y2 = str[3];
			src = str[4];
		}
		// ===剪切点x坐标
		int x = x1.equals("")?0:Integer.parseInt(x1);
		int y = y1.equals("")?0:Integer.parseInt(y1);
		// ===剪切点宽度
		int width = x2.equals("")?0:Integer.parseInt(x2) - x;
		int height = y2.equals("")?0:Integer.parseInt(y2) - y;
		
		String imgName=src.substring(src.lastIndexOf("/")+1);
		String affterImageName=System.currentTimeMillis()+"_" + imgName;
		
		String srcImageFile=realPath+ "/" + "static" + "/" + "photo" + "/" + imgName;
		String desImageFile=realPath+ "/" + "static" + "/" + "photo" + "/"+affterImageName;
		//截图
		abscut(srcImageFile,desImageFile,x,y,width,height,300,300);
		
		return "/meilichannel" + "/static" + "/" + "photo" + "/" + affterImageName;
	}



	/**
	 * @Description: TODO
	 * @param srcImageFile
	 * @param desImageFile
	 * @param x
	 * @param y
	 * @param width
	 * @param height
	 * @param finalWidth
	 * @param finalHeight  
	 * @return: void
	 */
	public static void abscut(String srcImageFile,String desImageFile, int x, int y,int width, int height, int finalWidth,int finalHeight) {           
		try {               
			Image img;               
			ImageFilter cropFilter;               
			File srcFile = new File(srcImageFile);               
			//String fileName = srcFile.getName();               
			String ext = getExtension(srcImageFile);               
			if(ext==null)ext="jpg";               
			// 读取源图像               
			BufferedImage bi = ImageIO.read(srcFile);               
			/*int srcWidth = bi.getWidth(); // 源图宽度               
			int srcHeight = bi.getHeight(); // 源图高度               
*/			if (finalWidth >= width && finalHeight >= height) {                   
				BufferedImage tag;    
				//获取缩放后的图片大小
				Image image = bi.getScaledInstance(finalWidth, finalHeight,Image.SCALE_DEFAULT);                   
				// 四个参数分别为图像起点坐标和宽高                   
				// 即: CropImageFilter(int x,int y,int width,int height)                   
				cropFilter = new CropImageFilter(x, y, width, height);                   
				img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));                   
				int type = BufferedImage.TYPE_INT_RGB;                   
				if("gif".equalsIgnoreCase(ext)||"png".equalsIgnoreCase(ext)){                       
					type = BufferedImage.TYPE_INT_ARGB;                   
					}                   
				tag = new BufferedImage(width, height,type);                   
				Graphics2D g = (Graphics2D)tag.getGraphics();                                          
				g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,RenderingHints.VALUE_INTERPOLATION_BILINEAR);                   
				g.drawImage(img, 0, 0, null); 
				// 绘制剪切后的图                   
				g.dispose();                    
				ImageIO.write(tag,ext, new File(desImageFile));                   
				srcFile.delete();
				//删除原图               
				}           
			} catch (Exception e) {              
				e.printStackTrace();           
				}       
		}              
	public static String getExtension(String srcImageFile) {          
		String ext = null;          
		if(srcImageFile!=null && srcImageFile.lastIndexOf(".")>-1){              
			ext = srcImageFile.substring(srcImageFile.lastIndexOf(".")+1);          
			}          
		return ext;      
		}      
			
		
	

}
