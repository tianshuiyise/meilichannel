package com.shxt.cme.domain;

import java.util.List;

public class Product {
	private String proId;
	private String proName;
	private String proPrice;
	private String disPrice;
	private int proType;
	private String introduction;
	private String shopId;
	private String imageAddress;
	private String imageName;
	private List<Member> memberName;
	private String shopQQ;
	

	/**
	 * @return the shopQQ
	 */
	public String getShopQQ() {
		return shopQQ;
	}
	/**
	 * @param shopQQ the shopQQ to set
	 */
	public void setShopQQ(String shopQQ) {
		this.shopQQ = shopQQ;
	}
	/**
	 * @return the memberName
	 */
	public List<Member> getMemberName() {
		return memberName;
	}
	/**
	 * @param memberName the memberName to set
	 */
	public void setMemberName(List<Member> memberName) {
		this.memberName = memberName;
	}
	public String getProId() {
		return proId;
	}
	public void setProId(String proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProPrice() {
		return proPrice;
	}
	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
	}
	public String getDisPrice() {
		return disPrice;
	}
	public void setDisPrice(String disPrice) {
		this.disPrice = disPrice;
	}
	public int getProType() {
		return proType;
	}
	public void setProType(int proType) {
		this.proType = proType;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	public String getImageAddress() {
		return imageAddress;
	}
	public void setImageAddress(String imageAddress) {
		this.imageAddress = imageAddress;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	

	
	
}
