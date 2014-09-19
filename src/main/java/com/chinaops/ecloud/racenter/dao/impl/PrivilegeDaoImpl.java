/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-11-18 上午10:04:37
 */
package com.chinaops.ecloud.racenter.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.chinaops.ecloud.racenter.dao.IPrivilegeDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Privilege;
import com.chinaops.ecloud.racenter.entity.User;

/**
 * 权限持久层实现
 * @author wb
 */
public class PrivilegeDaoImpl extends RaBaseDao implements IPrivilegeDao {
	//创建权限
	private static String INSERT_PRIVILEGE = "insert into privileges(name,token,level,url,`group`,category,sn,tooltip) values(?,?,?,?,?,?,?,?)";
	//修改权限
	private static String UPDATE_PRIVILEGE = "update privileges set name=?,token=?,level=?,url=?,`group`=?,category=?,sn=?,tooltip=? where id=?";
	//删除权限
	private static String DELETE_PRIVILEGE = "delete from privileges where id=?";
	//查询所有权限
	private static String GET_ALL_PRIVILEGES = "select * from privileges";
	//查询所有权限
	private static String GET_ALL_PRIVILEGES_BY_CATEGORY = "select * from privileges where category=?";
	//根据id查询权限
	private static String GET_PRIVILEGE_BY_ID = GET_ALL_PRIVILEGES + " where id=?";
	//创建角色、权限关系
	private static String GRANT_PRIVILEGES_TO_ROLE = "insert into role_privileges(role_name,privilege_id) values(?,?)";
	//根据角色名获取权限、角色权限关联信息
	private static String GET_PRIVILEGES_BY_ROLE_ID = "select p.id,name,token,level,url,`group`,p.category,sn,tooltip from privileges "
			+ "p, role_privileges rp where p.id=rp.privilege_id and role_name=? order by sn";
	//创建用户权限关系
	private static String REVOKE_USER_PRIVILEGES = "insert into revoked_privileges(user_id,privilege_id) values(?,?)";
	//根据用户id获取权限、用户权限关系信息
	private static String GET_REVOKED_PRIVILEGES_BY_USER_ID = "select p.id,name,token,level,url,`group`,signs,category,sn,tooltip from privileges p,"
			+ "revoked_privileges rp where p.id=rp.privilege_id and user_id=?";
	//根据角色名删除角色权限关系
	private static String DELETE_ROLE_PRIVILEGES = "delete from role_privileges where role_name=? ";
	//根据用户删除用户权限关系
	private static String DELETE_USER_PRIVILEGES = "delete from revoked_privileges where user_id=? ";
	//根据token获取权限记录数
	private static String CHECK_TOKEN_UNIQUE = "select count(1) from privileges where token=? ";
	//根据权限id获取用户
	private static String GET_USERS_BY_PRIVILEGE_ID = "select u.id,u.login_id,u.username,u.status,u.rolename,u.company_id,u.department_id,u.last_login_ip " +
			" from users as u where id in (select user_id from revoked_privileges where privilege_id=?)";
	
	private static String CHECK_PRIVILEGES_NAME = "select count(1) from privileges where name=?";	
	/* (non-Javadoc)创建部门
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#createPrivilege(com.chinaops.ecloud.racenter.entity.Privilege)
	 */
	public Privilege createPrivilege(Privilege p) {
		KeyHolder kh = new GeneratedKeyHolder();
		int ret = saveObjAndReturnIncId(INSERT_PRIVILEGE, kh, p.getName(), p.getToken(), p.getLevel(),p.getUrl(), p.getGroup(),
				p.getCategory(),p.getSn(),p.getTooltip());
		if (ret == 1) {
			p.setId(kh.getKey().intValue());
			return p;
		}
		return null;
	}

	/* (non-Javadoc)修改权限
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#updatePrivilege(com.chinaops.ecloud.racenter.entity.Privilege)
	 */
	public int updatePrivilege(Privilege p) {
		Integer id = p.getId();
		Privilege old = getPrivilegeById(id);
		if (old == null)
			return 0;
		if (StringUtils.isEmpty(p.getName()))
			p.setName(old.getName());
		if (StringUtils.isEmpty(p.getToken()))
			p.setToken(old.getToken());
		if (StringUtils.isEmpty(p.getLevel()))
			p.setLevel(old.getLevel());
		if (StringUtils.isEmpty(p.getUrl()))
			p.setLevel(old.getUrl());
		if (StringUtils.isEmpty(p.getGroup()))
			p.setGroup(old.getGroup());
		if (StringUtils.isEmpty(p.getCategory()))
			p.setCategory(old.getCategory());
		int ret = getSimpleJdbcTemplate().update(UPDATE_PRIVILEGE, p.getName(), p.getToken(), p.getLevel(),p.getUrl(),
				p.getGroup(), p.getCategory(),p.getSn(),p.getTooltip(), id);
		if (ret == 1)
			return 1;
		return 0;
	}

	/* (non-Javadoc)根据id删除权限
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#deletePrivilege(java.lang.Integer)
	 */
	public int deletePrivilege(Integer id) {
		return getSimpleJdbcTemplate().update(DELETE_PRIVILEGE, id);
	}
	
	/* (non-Javadoc)获取所有权限
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getAllPrivileges()
	 */
	public List<Privilege> getAllPrivileges() {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_PRIVILEGES + " order by id");
			if (list == null || list.size() == 0)
				return null;

			List<Privilege> result = new ArrayList<Privilege>();
			for (Map<String, Object> map : list) {
				Privilege c = mapToPrivilege(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	/* (non-Javadoc)根据角色类型获取权限
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getPrivilegesByCategory(java.lang.String)
	 */
	public List<Privilege> getPrivilegesByCategory(String category) {
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_PRIVILEGES_BY_CATEGORY + " order by id",category);
		if (null==list || list.size() == 0)
			return null;
		
		List<Privilege> result = new ArrayList<Privilege>();
		for (Map<String, Object> map : list) {
			Privilege c = mapToPrivilege(map);
			if (c != null)
				result.add(c);
		}
		return result;
	}

	/* (non-Javadoc)创建角色、权限关系
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#grantToRole(java.lang.String, java.util.List)
	 */
	public int grantToRole(String roleName, List<Integer> privId) {
		List<Object[]> params = new ArrayList<Object[]>();
		for (Integer item : privId) {
			params.add(new Object[] { roleName, item});
		}
		int[] ret = getSimpleJdbcTemplate().batchUpdate(GRANT_PRIVILEGES_TO_ROLE, params);
		if (ret == null || ret.length <= 0)
			return -1;
		return 1;
	}

	/* (non-Javadoc)根据角色名获取权限、角色权限关联信息
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getPrivilegesByRoleId(java.lang.String)
	 */
	public List<Privilege> getPrivilegesByRoleId(String roleName) {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_PRIVILEGES_BY_ROLE_ID, roleName);
			if (list == null || list.size() == 0)
				return null;

			List<Privilege> result = new ArrayList<Privilege>();
			for (Map<String, Object> map : list) {
				Privilege c = mapToPrivilege(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/* (non-Javadoc)创建用户权限关系
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#revokeUserPrivileges(java.lang.Integer, java.util.List)
	 */
	public int revokeUserPrivileges(Integer userId, List<Integer> privId) {
		List<Object[]> params = new ArrayList<Object[]>();
		for (Integer item : privId) {
			params.add(new Object[] { userId, item });
		}
		int[] ret = getSimpleJdbcTemplate().batchUpdate(REVOKE_USER_PRIVILEGES, params);
		if (ret == null || ret.length <= 0)
			return -1;
		return 1;
	}

	/* (non-Javadoc)根据用户id获取权限、用户权限关系信息
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getPrivilegesByUserId(java.lang.Integer, java.lang.String)
	 */
	public List<Privilege> getPrivilegesByUserId(Integer userId, String category) {
		try {
			List<Map<String, Object>> list = null;
			if (category == null)
				list = getSimpleJdbcTemplate().queryForList(GET_REVOKED_PRIVILEGES_BY_USER_ID + " order by sn",
						userId);
			else{
				list = getSimpleJdbcTemplate().queryForList(
						GET_REVOKED_PRIVILEGES_BY_USER_ID + " and category=? order by sn ", userId, category);
			}
			if (list == null || list.size() == 0)
				return null;

			List<Privilege> result = new ArrayList<Privilege>();
			for (Map<String, Object> map : list) {
				Privilege c = mapToPrivilege(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/* (non-Javadoc)根据id查询权限
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getPrivilegeById(int)
	 */
	public Privilege getPrivilegeById(int id) {
		try {
			Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_PRIVILEGE_BY_ID, id);
			return mapToPrivilege(map);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/* (non-Javadoc)根据角色名删除角色权限关系
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#deleteRolePrivileges(java.lang.String, java.util.List)
	 */
	public int deleteRolePrivileges(String roleName, List<Integer> privIds) {
		if (privIds == null) {
			return getSimpleJdbcTemplate().update(DELETE_ROLE_PRIVILEGES, roleName);
		}
		StringBuilder sb = new StringBuilder();
		sb.append(" and privilege_id in (");
		for (int i = 0; i < privIds.size() - 1; i++) {
			sb.append(privIds.get(i)).append(",");
		}
		sb.append(privIds.get(privIds.size() - 1)).append(")");
		return getSimpleJdbcTemplate().update(DELETE_ROLE_PRIVILEGES + sb.toString(), roleName);
	}

	/* (non-Javadoc)根据用户删除用户权限关系
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#deleteUserRevokedPrivileges(java.lang.Integer, java.util.List)
	 */
	public int deleteUserRevokedPrivileges(Integer userId, List<Integer> privIds) {
		if (privIds == null) {
			return getSimpleJdbcTemplate().update(DELETE_USER_PRIVILEGES, userId);
		}
		StringBuilder sb = new StringBuilder();
		sb.append(" and privilege_id in (");
		for (int i = 0; i < privIds.size() - 1; i++) {
			sb.append(privIds.get(i)).append(",");
		}
		sb.append(privIds.get(privIds.size() - 1)).append(")");
		return getSimpleJdbcTemplate().update(DELETE_USER_PRIVILEGES + sb.toString(), userId);
	}

	/* (non-Javadoc)根据token获取权限记录数
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#checkTokenUnique(java.lang.String)
	 */
	public int checkTokenUnique(int id,String token) {
		if(id == 0)
			return getSimpleJdbcTemplate().queryForInt(CHECK_TOKEN_UNIQUE, token);
		return getSimpleJdbcTemplate().queryForInt(CHECK_TOKEN_UNIQUE + " and id <> ?", token ,id);
	}

	/* (non-Javadoc)根据权限id获取用户
	 * @see com.chinaops.ecloud.racenter.dao.IPrivilegeDao#getUsersByprivilegeId(int)
	 */
	public List<User> getUsersByprivilegeId(int id) {
		List<User> ul = new ArrayList<User>();
		if(id>0){
			List<Map<String, Object>> mapList = getSimpleJdbcTemplate().queryForList(GET_USERS_BY_PRIVILEGE_ID,id);
			if (mapList != null && mapList.size() > 0) {
				for (Map<String, Object> map : mapList) {
					ul.add(mapToUser(map));
				}
			}
		}
		return ul;
	}
	
	/**
	 * 验证权限名称是否重复、；
	 * @param name
	 * @return
	 */
	public boolean checkPrivilegeName(String name){
		try {
			int res = getSimpleJdbcTemplate().queryForInt(CHECK_PRIVILEGES_NAME,name);
			if (res == 0)   //不重复。
				return true;
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
		return false;
		
	}
	
}
