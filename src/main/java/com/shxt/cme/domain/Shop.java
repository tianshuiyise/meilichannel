package com.shxt.cme.domain;

import java.util.List;

public class Shop {
	private String shopId;
	private String shopName;
	private String introduction;
	private String imageAddress;
	private String imageName;
	private String shopCord;
	private String shopAdd;
	private int shopType;
	private String shopQq;
	private String merchontId;
	
	private float shopCordX;
	private float shopCordY;
	
	
	private List<Product> productions;
	
	
	/**
	 * @return the shopCordX
	 */
	public float getShopCordX() {
		return shopCordX;
	}
	/**
	 * @param shopCordX the shopCordX to set
	 */
	public void setShopCordX(float shopCordX) {
		this.shopCordX = shopCordX;
	}
	/**
	 * @return the shopCordY
	 */
	public float getShopCordY() {
		return shopCordY;
	}
	/**
	 * @param shopCordY the shopCordY to set
	 */
	public void setShopCordY(float shopCordY) {
		this.shopCordY = shopCordY;
	}
	/**
	 * @return the productions
	 */
	public List<Product> getProductions() {
		return productions;
	}
	/**
	 * @param productions the productions to set
	 */
	public void setProductions(List<Product> productions) {
		this.productions = productions;
	}
	public String getMerchontId() {
		return merchontId;
	}
	public void setMerchontId(String merchontId) {
		this.merchontId = merchontId;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
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
	public String getShopCord() {
		return shopCord;
	}
	public void setShopCord(String shopCord) {
		this.shopCord = shopCord;
	}
	public String getShopAdd() {
		return shopAdd;
	}
	public void setShopAdd(String shopAdd) {
		this.shopAdd = shopAdd;
	}
	public int getShopType() {
		return shopType;
	}
	public void setShopType(int shopType) {
		this.shopType = shopType;
	}
	public String getShopQq() {
		return shopQq;
	}
	public void setShopQq(String shopQq) {
		this.shopQq = shopQq;
	}
	

}
