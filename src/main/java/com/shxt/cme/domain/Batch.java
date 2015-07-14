package com.shxt.cme.domain;

/** 
 * CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
 * Project:  nankai                                       
 * Module ID: Batch
 * Comments:   招生批次bean                          
 * JDK version used:      JDK1.7                              
 * Author：        董振朋                 
 * Create Date：  2013-7-23 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */
public class Batch {
	private String enrollBatchKey;	//学籍批次标识
	private String batchID;			//批次编号    
	private String batchName;		//批次名称
	private String startDate;		//开始时间
	private String eduType;			//教育类型，默认1（学历教育）
	private String creatorKey;		//创建人
	private String createDate;		//创建时间
	private String modifierKey;		//修改人
	private String modifyDate;		//修改时间
	private Boolean deleteFlg;		//逻辑删除标识
	
	private String hid_batchID;		//用于表单唯一性校验的batchID
	private String hid_batchName;	//用户表单唯一性校验的batchName
	
	private boolean selected;		//判断是否被选中
	
	/**
	 * @return the selected
	 */
	public boolean isSelected() {
		return selected;
	}
	/**
	 * @param selected the selected to set
	 */
	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	/**
	 * @return the hid_batchID
	 */
	public String getHid_batchID() {
		return hid_batchID;
	}
	/**
	 * @param hid_batchID the hid_batchID to set
	 */
	public void setHid_batchID(String hid_batchID) {
		this.hid_batchID = hid_batchID;
	}
	/**
	 * @return the hid_batchName
	 */
	public String getHid_batchName() {
		return hid_batchName;
	}
	/**
	 * @param hid_batchName the hid_batchName to set
	 */
	public void setHid_batchName(String hid_batchName) {
		this.hid_batchName = hid_batchName;
	}
	public String getEnrollBatchKey() {
		return enrollBatchKey;
	}
	public void setEnrollBatchKey(String enrollBatchKey) {
		this.enrollBatchKey = enrollBatchKey;
	}
	public String getBatchID() {
		return batchID;
	}
	public void setBatchID(String batchID) {
		this.batchID = batchID;
	}
	public String getBatchName() {
		return batchName;
	}
	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEduType() {
		return eduType;
	}
	public void setEduType(String eduType) {
		this.eduType = eduType;
	}
	public String getCreatorKey() {
		return creatorKey;
	}
	public void setCreatorKey(String creatorKey) {
		this.creatorKey = creatorKey;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getModifierKey() {
		return modifierKey;
	}
	public void setModifierKey(String modifierKey) {
		this.modifierKey = modifierKey;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public Boolean getDeleteFlg() {
		return deleteFlg;
	}
	public void setDeleteFlg(Boolean deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
}
