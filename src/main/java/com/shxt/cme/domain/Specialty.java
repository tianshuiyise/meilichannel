package com.shxt.cme.domain;

/** 
* CopyRright (c)2012-2013:   大连四海兴唐科技有限公司 
* Project:  nankai                                       
* Module ID: Specialty
* Comments:   专业bean                                          
* JDK version used:      JDK1.7                              
* Author：        栾喜员                 
* Create Date：  2013-7-23 
* Modified By：                                           
* Modified Date:                                      
* Why & What is modified      
* Version: 1.0                       
*/
public class Specialty {
	private String specialtyKey;	//专业标识
	private String specialtyID;		//专业代码
	private String nameCh;			//专业名称
	private String nameEn;			//专业英文名
	private String eduType;			//教育类型，默认1（学历教育）
	private String degreeType;		//学位类型
	private String creatorKey;		//创建人
	private String createDate;		//创建时间
	private String modifierKey;		//修改人
	private String modifyDate;		//修改时间
	private boolean deleteFlg;		//删除逻辑标识
	
	private boolean selected;		//判断是否被选中

	private String hid_specialtyID;	//用于唯一性校验的专业号
	private String hid_nameCh;	//用于唯一性校验的专业名称
	
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
	 * @return the hid_specialtyID
	 */
	public String getHid_specialtyID() {
		return hid_specialtyID;
	}
	/**
	 * @param hid_specialtyID the hid_specialtyID to set
	 */
	public void setHid_specialtyID(String hid_specialtyID) {
		this.hid_specialtyID = hid_specialtyID;
	}
	/**
	 * @return the hid_nameCh
	 */
	public String getHid_nameCh() {
		return hid_nameCh;
	}
	/**
	 * @param hid_nameCh the hid_nameCh to set
	 */
	public void setHid_nameCh(String hid_nameCh) {
		this.hid_nameCh = hid_nameCh;
	}
	public String getSpecialtyKey() {
		return specialtyKey;
	}
	public void setSpecialtyKey(String specialtyKey) {
		this.specialtyKey = specialtyKey;
	}
	public String getSpecialtyID() {
		return specialtyID;
	}
	public void setSpecialtyID(String specialtyID) {
		this.specialtyID = specialtyID;
	}
	public String getNameCh() {
		return nameCh;
	}
	public void setNameCh(String nameCh) {
		this.nameCh = nameCh;
	}
	public String getNameEn() {
		return nameEn;
	}
	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	public String getEduType() {
		return eduType;
	}
	public void setEduType(String eduType) {
		this.eduType = eduType;
	}
	public String getDegreeType() {
		return degreeType;
	}
	public void setDegreeType(String degreeType) {
		this.degreeType = degreeType;
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
	public boolean isDeleteFlg() {
		return deleteFlg;
	}
	public void setDeleteFlg(boolean deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
	
}
