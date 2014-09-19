package com.chinaops.ecloud.racenter.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.chinaops.ecloud.racenter.dao.ISysAdminUserDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.SysAdminUser;

public class SysAdminUserDaoImpl extends RaBaseDao implements ISysAdminUserDao {

	 private final static String CREATE_SYSADMINUSER = " insert into sysadmin_user(login_id,passwd,username,rolename,create_time) values (?,?,?,?,SYSDATE())";
	
	 private final static String UPDATE_SYSADMINUSER = " update sysadmin_user set login_id=?,passwd=?,username=?,rolename=?,create_time=SYSDATE() where id=?";
	 
	 private final static String DELETE_SYSADMINUSER = " delete from sysadmin_user where id =?";
	 
	 private final static String GET_ADMINUSER_BY_ID = " select * from sysadmin_user where id =?";
	 
	 private final static String GET_BY_LOGINID = " select * from sysadmin_user where login_id = ?";
	 
	 private final static String GET_ALL_ADMINUSER = " select * from sysadmin_user";
	 
	 private final static String UPDATE_PASSWORD = " update sysadmin_user set passwd=? where id = ?";
	 
	 private final static String ISLOGINID_UNIQUE = " select count(*) from sysadmin_user where login_id=?";
	
	 private final static String VALIDATE_SYSADMINUSER = " select id from sysadmin_user where  login_id=? and passwd=? ";
	 
	
	public SysAdminUser createSysAdminUser(SysAdminUser adminUser) {
		 KeyHolder kh = new GeneratedKeyHolder();
	        int ret = saveObjAndReturnIncId(CREATE_SYSADMINUSER,
	                kh,
	                adminUser.getLoginId(),
	                adminUser.getPassword(),
	                adminUser.getUsername(),
	                adminUser.getRoleName());
	        if (ret == 1) {
	        	adminUser.setId(kh.getKey().intValue());
	            return adminUser;
	        }
		return null;
	}

	
	public boolean deleteSysAdminUser(Integer id) {
		 int ret = getSimpleJdbcTemplate().update(DELETE_SYSADMINUSER, id);
	        if (ret > 0)
	            return true;
	        return false;
		
	}

	public boolean updateUser(SysAdminUser adminUser) {
		  Integer id = adminUser.getId();
		  SysAdminUser old = getById(id);
	        if (old == null)
	            return false;
	        if (StringUtils.isEmpty(adminUser.getLoginId()))
	        	adminUser.setLoginId(old.getLoginId());
	        if (StringUtils.isEmpty(adminUser.getPassword()))
	        	adminUser.setPassword(old.getPassword());
	        if (StringUtils.isEmpty(adminUser.getUsername()))
	        	adminUser.setUsername(old.getUsername());
	        if (StringUtils.isEmpty(adminUser.getRoleName()))
	        	adminUser.setRoleName(old.getRoleName());
	        int ret = getSimpleJdbcTemplate().update(UPDATE_SYSADMINUSER,
	                adminUser.getLoginId(),
	                adminUser.getPassword(),
	                adminUser.getUsername(),
	                adminUser.getRoleName(),
	                id);
	        if (ret > 0)
	            return true;		
		return false;
	}

	public boolean updatePassWord(SysAdminUser adminUser) {
		 Integer id = adminUser.getId();
		 SysAdminUser old = getById(id);
	     if (old == null)
	     return false;
	     if (StringUtils.isEmpty(adminUser.getPassword()))
	        adminUser.setPassword(old.getPassword());
	     int ret = getSimpleJdbcTemplate().update(UPDATE_PASSWORD,
	                adminUser.getPassword(),id);
	      if (ret > 0)
	            return true;	
		return false;
	}

	
	
	public boolean isLoginIdUnique(String userLoingId) {
		int ret = 0;
		ret = getSimpleJdbcTemplate().queryForInt(ISLOGINID_UNIQUE, userLoingId);
		 if (ret == 0) {
	            return true; //登陆id已经存在
	       } else {
	            return false;
	       }
	}

	public SysAdminUser getById(int userId) {
		List<Map<String, Object>> mapList = getSimpleJdbcTemplate().queryForList(GET_ADMINUSER_BY_ID, userId);
		if (mapList != null && mapList.size() > 0) {
            for (Map<String, Object> map : mapList) {
                return mapToSysAdminUser(map);
            }
        }
		return null;
	}

	
	public SysAdminUser getByLoginId(String loginId) {
		List<Map<String, Object>> mapList = getSimpleJdbcTemplate().queryForList(GET_BY_LOGINID, loginId);
		if (mapList != null && mapList.size() > 0) {
            for (Map<String, Object> map : mapList) {
                return mapToSysAdminUser(map);
            }
        }
		return null;
	}
	

	public SysAdminUser authenticate(String loginId, String password) {
		//根据登录id和密码得到ID;
		int ret = getSimpleJdbcTemplate().queryForInt(VALIDATE_SYSADMINUSER,loginId,password);
		if(ret > 0){
			//根据ID得到对象：
			SysAdminUser adminUser = getById(ret);
			if(adminUser != null){
				return adminUser;
			}
		}
		return null;
	}

	public List<SysAdminUser> getAllSysAdminUsers() {
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_ADMINUSER);
		if (list == null || list.size() == 0)
			return null;
		List<SysAdminUser> result = new ArrayList<SysAdminUser>();
		for (Map<String, Object> map : list) {
			SysAdminUser adminUser = mapToSysAdminUser(map);
			if (adminUser != null)
				result.add(adminUser);
		}
		return result;
	}

}
