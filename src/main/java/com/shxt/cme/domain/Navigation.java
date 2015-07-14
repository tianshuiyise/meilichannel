package com.shxt.cme.domain;

public class Navigation {
	
	private String menuKey ;
	
	private String menuName ;
	
	private String menuUrl;
	
	private String parentMenuCode;
	
	private String denuSequence;
	
	private String depth;

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getParentMenuCode() {
		return parentMenuCode;
	}

	public void setParentMenuCode(String parentMenuCode) {
		this.parentMenuCode = parentMenuCode;
	}

	public String getDenuSequence() {
		return denuSequence;
	}

	public void setDenuSequence(String denuSequence) {
		this.denuSequence = denuSequence;
	}

	public String getDepth() {
		return depth;
	}

	public void setDepth(String depth) {
		this.depth = depth;
	}

	public String getMenuKey() {
		return menuKey;
	}

	public void setMenuKey(String menuKey) {
		this.menuKey = menuKey;
	}
	
	

}
