/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-14 下午05:06:37
 */
package com.chinaops.ecloud.racenter.service;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.IRoleDao;
import com.chinaops.ecloud.racenter.entity.Role;
import com.chinaops.ecloud.racenter.entity.RoleList;

/**
 * 角色服务类 
 * @author wb
 */
@Service
public class RoleService extends BaseService {
	private IRoleDao roleDao;

	public IRoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(IRoleDao roleDao) {
		this.roleDao = roleDao;
	}

	/**
	 * 获取所有角色
	 * @param param
	 * @return
	 */
	public ResponseResult getAllRoles(Map<String, Object> param) {
		RoleList rl = roleDao.getAllRoles();
		if (rl == null)
			return new ErrorResponse(MessageTips.FAILED);
		else if (rl.getList().size() == 0)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		else
			return rl;
	}
	/**
	 * Description: 根据角色名获取角色
	 * @Version 1.0 2013-4-23 上午11:06:34王斌(bin.wang@china-ops.com) 创建
	 */
	public ResponseResult getRoleByEnglishName(Map<String, Object> param) {
		String english_name = (String) param.get("english_name");
		
		if (null==english_name)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: english_name all can't be null.");
		
		Role role = this.roleDao.getRoleByEnglishName(english_name);
		if (null!=role)
			return role;
		else
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
	}
	/**
	 * Description: 根据角色类别获取角色
	 * @Version 1.0 2013-4-23 下午02:32:53王斌(bin.wang@china-ops.com) 创建
	 */
	public ResponseResult getRolesByCategory(Map<String, Object> param) {
		String category = (String) param.get("category");
		
		if (null==category)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: category all can't be null.");
		
		RoleList l = this.roleDao.getRolesByCategory(category);
		if (null != l)
			return l;
		else
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
	}
	/**
	 * Description: 验证英文名是否存在
	 * @Version 1.0 2013-4-17 下午04:36:31王斌(bin.wang@china-ops.com) 创建
	 */
	public ResponseResult checkEnglishNameUnique(Map<String, Object> param) {
		String enname = (String) param.get("englishname");
		String id = (String) param.get("id");
		
		if (null==enname || null==id)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: englishName, id all can't be null.");
		int id_ = 0;
		if(id != null){
			id_ = Integer.parseInt(id);
		}
		int ret = this.roleDao.checkEnglishNameUnique(enname, id_);
		if (ret <= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}
	/**
	 * Description: 验证该角色是否被使用
	 * @Version 1.0 2013-4-17 下午04:36:31王斌(bin.wang@china-ops.com) 创建
	 */
	public ResponseResult checkRoleIsUsing(Map<String, Object> param) {
		String id = (String) param.get("id");
		
		if (null==id)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: roleid all can't be null.");
		int id_ = 0;
		if(id != null){
			id_ = Integer.parseInt(id);
		}
		int ret = this.roleDao.checkRoleIsUsing(id_);
		if (ret <= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}
	/**
	 * 创建角色
	 * @param param
	 * @return
	 */
	public ResponseResult createRole(Map<String, Object> param) {
		String enname = (String) param.get("englishname");
		String cnname = (String) param.get("chinesename");
		String desc = (String) param.get("description");
		String category = (String) param.get("category");

		if (null ==enname || null == cnname || null==desc || null == category)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,
					"Error: englishName, chineseName, description,category all can't be null.");

		Role role = new Role();
		role.setEnglishName(enname);
		role.setChineseName(cnname);
		role.setDescription(desc);
		role.setCategory(category);
		

		role = roleDao.createRole(role);

		if (role == null) {
			return new ErrorResponse(MessageTips.FAILED);
		} else if (role.getId() < 0) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: englishName [" + enname + "] has been exist.");
		} else {
			return role;
		}
	}

	/**
	 * 创建角色
	 * @param param
	 * @return
	 */
	public ResponseResult updateRole(Map<String, Object> param) {
		String enname = (String) param.get("englishname");
		String cnname = (String) param.get("chinesename");
		String desc = (String) param.get("description");
		String category = (String) param.get("category");
		String id = (String) param.get("id");
		
		if (null ==enname || null == cnname || null==desc || null == category)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,
					"Error: englishName, chineseName, description,category all can't be null.");
		
		Role role = new Role();
		role.setEnglishName(enname);
		role.setChineseName(cnname);
		role.setDescription(desc);
		role.setCategory(category);
		role.setId(Integer.parseInt(id));

		boolean ret = roleDao.updateRoler(role);
		return boolToResponseResult(ret);
	}

	/**
	 * 删除角色
	 * @param param
	 * @return
	 */
	public ResponseResult deleteRole(Map<String, Object> param) {
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(id))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");

		int ret = roleDao.deleteRole(Integer.parseInt(id));
		if (ret < 0) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: englishName is using by USER, can't be deleted.");
		} else if (ret == 1)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

}
