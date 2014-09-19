/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-14 下午04:59:19
 */
package com.chinaops.ecloud.racenter.dao;

import com.chinaops.ecloud.racenter.entity.Role;
import com.chinaops.ecloud.racenter.entity.RoleList;

/**
 * 角色持久层接口
 * @author wb
 */
public interface IRoleDao {
	RoleList getAllRoles();
	
	/**
	 * Description: 根据角色名获取角色
	 * @Version 1.0 2013-4-23 上午11:03:34王斌(bin.wang@china-ops.com) 创建
	 */
	Role getRoleByEnglishName(String english_name);
	
	/**
	 * Description: 根据角色类别获取角色
	 * @Version 1.0 2013-4-23 下午02:31:00王斌(bin.wang@china-ops.com) 创建
	 */
	RoleList getRolesByCategory(String category);
	Role createRole(Role role);
	int deleteRole(Integer id);

	boolean updateRoler(Role role);
	
	/**
	 * Description: 验证英文名是否存在
	 * @Version 1.0 2013-4-17 上午11:39:32王斌(bin.wang@china-ops.com) 创建
	 */
	int checkEnglishNameUnique(String name,int id);
	/**
	 * Description: 验证该角色是否被使用
	 * @Version 1.0 2013-4-17 上午11:41:10王斌(bin.wang@china-ops.com) 创建
	 */
	int checkRoleIsUsing(int roleid);
}
