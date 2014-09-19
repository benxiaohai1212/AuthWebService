/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-11-18 上午10:04:10
 */
package com.chinaops.ecloud.racenter.dao;

import java.util.List;

import com.chinaops.ecloud.racenter.entity.Privilege;
import com.chinaops.ecloud.racenter.entity.User;

/**
 * 权限持久层接口
 * @author wb
 */
public interface IPrivilegeDao {
	Privilege createPrivilege(Privilege priv);

	int updatePrivilege(Privilege priv);

	int deletePrivilege(Integer id);

	Privilege getPrivilegeById(int id);
	
	List<Privilege> getAllPrivileges();
	
	/**
	 * Description: 根据角色类型获取权限
	 * @Version 1.0 2013-4-23 上午09:56:44王斌(bin.wang@china-ops.com) 创建
	 */
	List<Privilege> getPrivilegesByCategory(String category);

	int grantToRole(String roleName, List<Integer> privIds);

	List<Privilege> getPrivilegesByRoleId(String roleName);

	int revokeUserPrivileges(Integer userId, List<Integer> privIds);

	List<Privilege> getPrivilegesByUserId(Integer userId, String category);

	int deleteRolePrivileges(String roleName, List<Integer> privIds);

	int deleteUserRevokedPrivileges(Integer userId, List<Integer> privIds);
	
	int checkTokenUnique(int id,String token);

	List<User> getUsersByprivilegeId(int id);
	
	boolean checkPrivilegeName(String name);

}
