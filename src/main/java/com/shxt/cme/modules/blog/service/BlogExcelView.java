package com.shxt.cme.modules.blog.service;

import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.shxt.framework.serivce.AbstractExcelViewSupport;
import com.shxt.cme.domain.Blog;

public class BlogExcelView extends AbstractExcelViewSupport {
	

	/**
	 * 构建表头
	 */
	@Override
	protected HSSFSheet  buildExcelHeader(Map<String, Object> model,
			HSSFWorkbook workbook) {
		
		HSSFSheet sheet = workbook.createSheet("blogs");
		
		HSSFRow header = sheet.createRow(0);
		
		header.createCell(0).setCellValue("任务名称");
		
		header.createCell(1).setCellValue("任务描述");
		return sheet;
		
	}
	
	/**
	 * 构建excel内容
	 * @param model
	 * @param sheet
	 */
	@Override
	protected void buildExcelContent(Map<String, Object> model,
			HSSFSheet sheet){
		
		@SuppressWarnings("unchecked")
		List<Blog> blogs = (List<Blog>)model.get("blogs");
		int rowNum = 1;
		
		for (Blog blog : blogs){
			
			HSSFRow row = sheet.createRow(rowNum++);
			
			row.createCell(0).setCellValue(blog.getTitle());
			
			row.createCell(1).setCellValue(blog.getContent());
		}
		
	}

	/**
	 * 设置导出的文件名称
	 */
	@Override
	protected String getFileName() {
		return "博客管理导出列表.xls";
	}
	
}
