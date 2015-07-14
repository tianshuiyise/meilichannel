package com.shxt.cme.domain;

import java.util.List;

public class Menu {
	
		private String menuKey;
		
		private String menuName;
		
		private String menuLevel;				//菜单级别：一级，二级菜单
		
		private String parentMenuKey;			//上级菜单
		
		private String parentMenuName;			//上级菜单名
		
		private String groupSequence;			//分组序号
		
		private String menuSequence;			//菜单序号
		
		private String menuURL;					//菜单URL
		
		private String remark;
		
		private int roleType;					//所属角色key
		
		private String roleName;				//所属角色名
		
		private String createrKey;
		
		private String createDate;
		
		private String modifierKey;
		
		private String modifyDate;
		
		private String deleteFlag;
		
		private List<Menu> subMenuList;				//子菜单列表
		
		public List<Menu> getSubMenuList() {
			return subMenuList;
		}
		public void setSubMenuList(List<Menu> subMenuList) {
			this.subMenuList = subMenuList;
		}
		public String getParentMenuName() {
			return parentMenuName;
		}
		public void setParentMenuName(String parentMenuName) {
			this.parentMenuName = parentMenuName;
		}
		public String getRoleName() {
			return roleName;
		}
		public void setRoleName(String roleName) {
			this.roleName = roleName;
		}
		public String getMenuKey() {
			return menuKey;
		}
		public void setMenuKey(String menuKey) {
			this.menuKey = menuKey;
		}
		public String getMenuName() {
			return menuName;
		}
		public void setMenuName(String menuName) {
			this.menuName = menuName;
		}
		public String getMenuLevel() {
			return menuLevel;
		}
		public void setMenuLevel(String menuLevel) {
			this.menuLevel = menuLevel;
		}
		public String getParentMenuKey() {
			return parentMenuKey;
		}
		public void setParentMenuKey(String parentMenuKey) {
			this.parentMenuKey = parentMenuKey;
		}
		public String getGroupSequence() {
			return groupSequence;
		}
		public void setGroupSequence(String groupSequence) {
			this.groupSequence = groupSequence;
		}
		public String getMenuSequence() {
			return menuSequence;
		}
		public void setMenuSequence(String menuSequence) {
			this.menuSequence = menuSequence;
		}
		public String getMenuURL() {
			return menuURL;
		}
		public void setMenuURL(String menuURL) {
			this.menuURL = menuURL;
		}
		public String getRemark() {
			return remark;
		}
		public void setRemark(String remark) {
			this.remark = remark;
		}
	
		public int getRoleType() {
			return roleType;
		}
		public void setRoleType(int roleType) {
			this.roleType = roleType;
		}
		public String getCreaterKey() {
			return createrKey;
		}
		public void setCreaterKey(String createrKey) {
			this.createrKey = createrKey;
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
		
	}



