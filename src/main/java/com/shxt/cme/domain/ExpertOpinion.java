/**
 * 
 */
package com.shxt.cme.domain;

/** 
 * CopyRright (c)2014-:   大连校联科技有限公司 
 * Project:                                         
 * Module ID: ExpertOpinion
 * Comments:                                             
 * JDK version used:      JDK1.7                              
 * Author：       曹尧               
 * Create Date：  2015年1月10日 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */
public class ExpertOpinion {
	private String  expertOpinionKey ;       // 意见主键
	private String  projectKey;              //所评价的项目
	private String  ynAgree;                 //是否同意立项，0同意，1不同意
	private String  opinionDetail;           //专家意见（存文字）
	private String  definedOpinion;          //自定义专家意见
	private String  expertKey;               //专家（哪个专家写的）
	private String  createDate;              //创建这条记录的时间
	private String  modifierKey;             //修改者
	private String  modifyDate;              //修改时间
	private String  deleteFlag;              //删除标记，0保留，1删除
	private String  projectRemark;           //填写：学术活动、培训班
	private String  opinionState;            //专家意见提交状态0，未提交，1提交
	private String expertName;
	private String expertPhone;
	
	public String getExpertName() {
		return expertName;
	}
	public void setExpertName(String expertName) {
		this.expertName = expertName;
	}
	public String getExpertPhone() {
		return expertPhone;
	}
	public void setExpertPhone(String expertPhone) {
		this.expertPhone = expertPhone;
	}
	public String getExpertOpinionKey() {
		return expertOpinionKey;
	}
	public void setExpertOpinionKey(String expertOpinionKey) {
		this.expertOpinionKey = expertOpinionKey;
	}
	public String getProjectKey() {
		return projectKey;
	}
	public void setProjectKey(String projectKey) {
		this.projectKey = projectKey;
	}
	public String getYnAgree() {
		return ynAgree;
	}
	public void setYnAgree(String ynAgree) {
		this.ynAgree = ynAgree;
	}
	public String getOpinionDetail() {
		return opinionDetail;
	}
	public void setOpinionDetail(String opinionDetail) {
		this.opinionDetail = opinionDetail;
	}
	public String getDefinedOpinion() {
		return definedOpinion;
	}
	public void setDefinedOpinion(String definedOpinion) {
		this.definedOpinion = definedOpinion;
	}
	public String getExpertKey() {
		return expertKey;
	}
	public void setExpertKey(String expertKey) {
		this.expertKey = expertKey;
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
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public String getProjectRemark() {
		return projectRemark;
	}
	public void setProjectRemark(String projectRemark) {
		this.projectRemark = projectRemark;
	}
	public String getOpinionState() {
		return opinionState;
	}
	public void setOpinionState(String opinionState) {
		this.opinionState = opinionState;
	}
	
	

}
