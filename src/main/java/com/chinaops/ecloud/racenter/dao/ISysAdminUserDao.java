package com.chinaops.ecloud.racenter.dao;

import java.util.List;

import com.chinaops.ecloud.racenter.entity.SysAdminUser;



public interface ISysAdminUserDao {
	
	SysAdminUser createSysAdminUser(SysAdminUser adminUser);

	boolean deleteSysAdminUser(Integer id);

	boolean updateUser(SysAdminUser adminUser);
	
	boolean updatePassWord(SysAdminUser adminUser);
	
	// 判断一个系统管理员的登录ID是不是唯一的。
	boolean isLoginIdUnique(String userLoingId);
	
	SysAdminUser getById(int userId);
	
	SysAdminUser getByLoginId(String loginId);
	
	//登录授权
	SysAdminUser authenticate(String loginId, String password);
	
	List<SysAdminUser> getAllSysAdminUsers() ;
}
