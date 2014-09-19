/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-14 下午05:05:53
 */
package com.chinaops.ecloud.racenter.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.racenter.dao.IRoleDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Role;
import com.chinaops.ecloud.racenter.entity.RoleList;

/**
 * 角色持久层实现
 * @author wb
 */
@Service
public class RoleDaoImpl extends RaBaseDao implements IRoleDao {
	//创建角色
	private static final String INSERT_ROLE = "insert into roles(english_name,chinese_name,description,category) values(?,?,?,?)";
	//修改接口
	private static final String UPDATE_ROLE = "update roles set english_name=?,chinese_name=?,description=?,category=? where id=?";
	//根据id删除角色
	private static final String DELETE_ROLE = "delete from roles where id=? ";
	//查询所有角色
	private static final String GET_ALL_ROLES = "select id,english_name,chinese_name,description,category from roles";
	//根据角色名获取角色
	private static final String GET_ROLES_BY_ENGLISH_NAME = GET_ALL_ROLES + " where english_name=?";
	//根据角色类别获取角色
	private static final String GET_ROLES_BY_CATEGORY = GET_ALL_ROLES + " where category=?";
	
	//根据角色名获取记录数
	private static final String CHECK_UNIQUE_ENNAME = "select count(1) from roles where english_name=?";
	//根据角色id获取该角色的用户记录数
	private static final String CHECK_ROLE_IS_USING = "select count(1) from users u, roles r where rolename=r.english_name " + " and r.id=?";

	/* (non-Javadoc)获取所有角色
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#getAllRoles()
	 */
	public RoleList getAllRoles() {
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_ROLES);
		if (null==list || list.size() == 0)
			return null;
		RoleList rl = new RoleList();
		if (list != null && !list.isEmpty()) {
			for (Map<String, Object> map : list) {
				rl.getList().add(mapToRole(map));
			}
		}
		return rl;
	}
	/* (non-Javadoc)根据角色名获取角色
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#getRoleByCategory(java.lang.String)
	 */
	public Role getRoleByEnglishName(String english_name) {
		List<Map<String, Object>> l = getSimpleJdbcTemplate().queryForList(GET_ROLES_BY_ENGLISH_NAME,english_name);
		Role role = null;
		if (l != null && !l.isEmpty()) {
			role = mapToRole(l.get(0));
		}
		return role;
	}
	/* (non-Javadoc)根据角色类别获取
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#getRolesBycategory(java.lang.String)
	 */
	public RoleList getRolesByCategory(String category) {
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ROLES_BY_CATEGORY,category);
		if (null==list || list.size() == 0)
			return null;
		RoleList rl = new RoleList();
		if (list != null && !list.isEmpty()) {
			for (Map<String, Object> map : list) {
				rl.getList().add(mapToRole(map));
			}
		}
		return rl;
	}
	/**
	 * Description: 验证英文名是否存在
	 * @Version 1.0 2013-4-17 上午11:39:32王斌(bin.wang@china-ops.com) 创建
	 */
	public int checkEnglishNameUnique(String name,int id) {
		if(id == 0)
			return getSimpleJdbcTemplate().queryForInt(CHECK_UNIQUE_ENNAME, name);
		return getSimpleJdbcTemplate().queryForInt(CHECK_UNIQUE_ENNAME + " and id <> ?", name ,id);
	}
	/**
	 * Description: 验证该角色是否被使用
	 * @Version 1.0 2013-4-17 上午11:41:10王斌(bin.wang@china-ops.com) 创建
	 */
	public int checkRoleIsUsing(int roleid) {
		return getSimpleJdbcTemplate().queryForInt(CHECK_ROLE_IS_USING  ,roleid);
	}
	
	/* (non-Javadoc)创建角色
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#createRole(com.chinaops.ecloud.racenter.entity.Role)
	 */
	public Role createRole(Role role) {
		// 先判断english_name是否存在了
		int cnt = getSimpleJdbcTemplate().queryForInt(CHECK_UNIQUE_ENNAME, role.getEnglishName());
		if (cnt > 0) {
			role.setId(-1);
			return role;
		}

		KeyHolder kh = new GeneratedKeyHolder();

		int ret = saveObjAndReturnIncId(INSERT_ROLE, kh, role.getEnglishName(), role.getChineseName(),
				role.getDescription(),role.getCategory());
		if (ret == 1) {
			role.setId(kh.getKey().intValue());
			return role;
		}
		return null;
	}

	/* (non-Javadoc)根据id删除角色
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#deleteRole(java.lang.Integer)
	 */
	public int deleteRole(Integer id) {
		// 判断是否在使用，如果有用户是这种角色，不能删除。
		int cnt = getSimpleJdbcTemplate().queryForInt(CHECK_ROLE_IS_USING, id);
		if (cnt > 0) {
			return -1;
		}
		int ret = getSimpleJdbcTemplate().update(DELETE_ROLE, id);
		if (ret > 0)
			return 1;
		return 0;
	}

	/* (non-Javadoc)修改角色
	 * @see com.chinaops.ecloud.racenter.dao.IRoleDao#updateRoler(com.chinaops.ecloud.racenter.entity.Role)
	 */
	public boolean updateRoler(Role role) {
		int ret = getSimpleJdbcTemplate().update(UPDATE_ROLE, role.getEnglishName(), role.getChineseName(),
				role.getDescription(),role.getCategory(), role.getId());
		if (ret > 0)
			return true;
		return false;
	}

}
