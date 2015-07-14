package com.shxt.framework.web.base;

import javax.servlet.http.HttpSession;

import com.shxt.cme.domain.Experts;
import com.shxt.cme.domain.User;

/**
 * 这是一个controller的积累，方便以后扩展
 * @author debao.wang
 *
 */
public class BaseController {
	/**
	 * 添加操作成功的提示消息
	 */
	protected static final String ADD_SUCCEED = "添加成功！";
	/**
	 * 添加操作失败的提示消息
	 */
	protected static final String ADD_FAIL = "添加失败！";
	/**
	 * 删除操作成功的提示消息
	 */
	protected static final String DELETE_SUCCEED = "删除成功！";
	/**
	 * 删除操作失败的提示消息
	 */
	protected static final String DELETE_FAIL = "删除失败！";
	/**
	 * 编辑操作成功的提示消息
	 */
	protected static final String EDIT_SUCCEED = "编辑成功！";
	/**
	 * 编辑操作失败的提示消息
	 */
	protected static final String EDIT_FAIL = "未编辑！";
	/**
	 * 修改操作成功的提示消息
	 */
	protected static final String MODIFY_SUCCEED = "修改成功！";
	/**
	 * 修改操作失败的提示消息
	 */
	protected static final String MODIFY_FAIL = "修改失败！";
	/**
	 * 导入操作成功的提示消息
	 */
	protected static final String IMPORT_SUCCEED = "导入成功！";
	/**
	 * 导入操作失败的提示消息
	 */
	protected static final String IMPORT_FAIL = "导入失败！";
	/**
	 * 导出操作成功的提示消息
	 */
	protected static final String EXPORT_SUCCEED = "导出成功！";
	/**
	 * 导出操作失败的提示消息
	 */
	protected static final String EXPORT_FAIL = "导出失败！";
	/**
	 * 保存操作成功的提示消息
	 */
	protected static final String SAVE_SUCCEED = "保存成功！";
	/**
	 * 保存操作失败的提示消息
	 */
	protected static final String SAVE_FAIL = "保存失败！";
	/**
	 * 设置操作成功的提示消息
	 */
	protected static final String SET_SUCCEED = "设置成功！";
	/**
	 * 设置操作失败的提示消息
	 */
	protected static final String SAET_FAIL = "设置失败！";
	/**
	 * 取消操作成功的提示消息
	 */
	protected static final String CALCEL_SUCCEED = "取消成功！";
	/**
	 * 取消操作失败的提示消息
	 */
	protected static final String CANCEL_FAIL = "取消失败！";
	/**
	 * 撤销操作成功的提示消息
	 */
	protected static final String REVOKE_SUCCEED = "撤销成功！";
	/**
	 * 取消操作失败的提示消息
	 */
	protected static final String REVOKE_FAIL = "撤销失败！";
	/**
	 * 上传操作成功的提示消息
	 */
	protected static final String UPLOAD_SUCCEED = "上传成功！";
	/**
	 * 上传操作失败的提示消息
	 */
	protected static final String UPLOAD_FAIL = "上传失败！";
	/**
	 * 审核操作成功的提示消息
	 */
	protected static final String AUDIT_SUCCEED = "审核成功！";
	/**
	 * 审核操作失败的提示消息
	 */
	protected static final String AUDIT_FAIL = "审核失败！";
	/**
	 * 核算操作成功的提示消息
	 */
	protected static final String CHECK_SUCCEED = "核算成功！";
	/**
	 * 核算操作失败的提示消息
	 */
	protected static final String CHECK_FAIL = "核算失败！";
	/**
	 * 确认操作成功的提示消息
	 */
	protected static final String ACKNOWLEDGE_SUCCEED = "确认成功！";
	/**
	 * 确认操作失败的提示消息
	 */
	protected static final String ACKNOWLEDGE_FAIL = "确认失败！";
	/**
	 * 分配操作失败的提示消息
	 */
	protected static final String DISTRIBUTE_FAIL = "分配失败！";
	/**
	 * 分配操作成功的提示消息
	 */
	protected static final String DISTRIBUTE_SUCCEED = "分配成功！";
	/**
	 * 拨付操作失败的提示消息
	 */
	protected static final String PAY_FAIL = "拨付失败！";
	/**
	 * 拨付操作成功的提示消息
	 */
	protected static final String PAY_SUCCEED = "拨付成功！";
	
	/**
	 * 上报操作成功的提示消息
	 */
	protected static final String DECLARE_SUCCEED = "上报成功！";
	/**
	 * 上报操作成功的提示消息
	 */
	protected static final String DECLARE_FAIL = "不能重复上报同一个项目，请核实你选的项目！";
	
	protected static final String  APPROVAL_SUCCEED = "批准成功！";
	protected static final String  APPROVAL_FAIL = "批准失败！";
	/**
	 * 获取当前用户
	 * @param session
	 * @return
	 */
	protected User getCurrentUser(HttpSession session) {
		User user = (User)session.getAttribute("user");
		return user;
	}
	
	/**
	 * 获取当前用户
	 * @param session
	 * @return
	 */
	protected Experts getCurrentExperts(HttpSession session) {
		Experts user = (Experts)session.getAttribute("user");
		return user;
	}
}
