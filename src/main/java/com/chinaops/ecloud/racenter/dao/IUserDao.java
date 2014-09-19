/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-25 下午11:40:45
 */
package com.chinaops.ecloud.racenter.dao;

import java.util.List;

import com.chinaops.ecloud.racenter.entity.User;
import com.chinaops.ecloud.racenter.entity.UserList;

/**
 * 用户持久层接口
 * @author wb
 */
public interface IUserDao {
	User getUserById(Integer id);

	User getUserByName(Integer companyId, String username);

	UserList getUsersByCompanyId(Integer id, String roleName);

	User createUser(User user);

	boolean deleteUser(Integer id);

	boolean updateUser(User user);
	//zhm
	boolean updateUserPassWord(User user);

	boolean isLoginIdUnique(Integer companyId, String userLoginId);

	User authenticate(String loginId, String companySuffix, String password, String loginIp);

	boolean changeRole(Integer id, String roleName);

	boolean loginRegister(Integer id, String ipAddress);
	
	boolean checkUserName(String username);
	
	boolean checkUserLoginId(String loginId);
	
	
    /**
     * Get user by email.
     * @param email
     * @return
     */
    User getUserByEmail(String email);
    
    /**
     * 根据公司id和rolename的CompanyAdmin得到公司的公司管理员
     * @return
     */
    User getUserByCompanyIdAndRoleName(int companyId);
    
    /**
     * 
     * @param loginId
     * @return
     */
    User getUserByLoginId(String loginId);
    
    /**
     * 
     * @param deptId
     * @return
     */
    List<User> getUserByDept(int deptId);
}
