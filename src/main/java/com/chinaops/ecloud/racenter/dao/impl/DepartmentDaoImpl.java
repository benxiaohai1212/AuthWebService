/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-1 下午01:30:08
 */
package com.chinaops.ecloud.racenter.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.chinaops.ecloud.racenter.dao.IDepartmentDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Department;

/**
 * 部门持久层实现类
 * @author wb
 */
public class DepartmentDaoImpl extends RaBaseDao implements IDepartmentDao {
	//创建部门
	private final static String CREATE_DEPT = "insert into dept(name,company_id,systime) values(?,?,sysdate())";
	//修改部门
	private final static String UPDATE_DEPT = "update dept set name=?,company_id=? where id=?";
	//删除部门
	private final static String DELETE_DEPT = "delete from dept where id=?";
	//根据公司id获取部门
	private final static String GET_DEPTS_BY_CID = "select id,name,company_id, systime from dept where company_id = ? ";
	//根据id获取去部门
	private final static String GET_DEPT_BY_ID = "select id,name,company_id, systime from dept where id = ?";

	//根据部门名称查询验证部门名称是否重复：
	private final static String CHECK_DEPT_NAME = " select count(1) from dept where name = ? and company_id = ?";
	
	/* (non-Javadoc)创建部门
	 * @see com.chinaops.ecloud.racenter.dao.IDepartmentDao#addDepartment(com.chinaops.ecloud.racenter.entity.Department)
	 */
	public Department addDepartment(Department dept) {
		KeyHolder kh = new GeneratedKeyHolder();
		int ret = saveObjAndReturnIncId(CREATE_DEPT, kh, dept.getName(), dept.getCompanyId());
		if (ret == 1) {
			dept.setId(kh.getKey().intValue());
			return dept;
		}
		return null;
	}

	/* (non-Javadoc)修改部门
	 * @see com.chinaops.ecloud.racenter.dao.IDepartmentDao#updateDepartment(com.chinaops.ecloud.racenter.entity.Department)
	 */
	public boolean updateDepartment(Department dept) {
		Integer id = dept.getId();
		Department old = getDepartment(id);
		if (old == null)
			return false;
		if (StringUtils.isEmpty(dept.getName()))
			dept.setName(old.getName());
		if (dept.getCompanyId() == 0)
			dept.setCompanyId(old.getCompanyId());
		int ret = getSimpleJdbcTemplate().update(UPDATE_DEPT, dept.getName(), dept.getCompanyId(), dept.getId());
		if (ret == 1)
			return true;
		return false;
	}

	/* (non-Javadoc)删除部门
	 * @see com.chinaops.ecloud.racenter.dao.IDepartmentDao#deleteDepartment(java.lang.Integer)
	 */
	public boolean deleteDepartment(Integer id) {
		int ret = getSimpleJdbcTemplate().update(DELETE_DEPT, id);
		if (ret == 1)
			return true;
		return false;
	}

	/* (non-Javadoc)根据公司id获取部门
	 * @see com.chinaops.ecloud.racenter.dao.IDepartmentDao#getDeptsByCompanyId(java.lang.Integer)
	 */
	public List<Department> getDeptsByCompanyId(Integer id,String name) {	
		List<Map<String, Object>> list = null ;
		try {			
			if(name != null && !name.equals("")){
			  list = getSimpleJdbcTemplate().queryForList(GET_DEPTS_BY_CID +" and  name like '%"+name+"%'",id);
			}else{
				list = getSimpleJdbcTemplate().queryForList(GET_DEPTS_BY_CID,id);
			}
			if (list == null || list.size() == 0)
				return null;
			List<Department> result = new ArrayList<Department>();
			for (Map<String, Object> map : list) {
				Department dept = mapToDepartment(map);
				result.add(dept);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/* (non-Javadoc)根据id获取部门
	 * @see com.chinaops.ecloud.racenter.dao.IDepartmentDao#getDepartment(java.lang.Integer)
	 */
	public Department getDepartment(Integer id) {
		try {
			Map<String, Object> map = (Map<String, Object>) getSimpleJdbcTemplate().queryForMap(GET_DEPT_BY_ID, id);
			if (map != null && map.size() > 0) {
				return mapToDepartment(map);
			}
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}
	
	/**
	 * 根据部门名称和公司id判断部门名称是否重复
	 */
	public boolean isNameUnique(String name, int companyId,Integer id) {
		try {
			int res = -1;
			if(id == 0){
				res = getSimpleJdbcTemplate().queryForInt(CHECK_DEPT_NAME,name,companyId);
			}else{
			    res = getSimpleJdbcTemplate().queryForInt(CHECK_DEPT_NAME + " and id <> ? ",name,companyId,id);
			}
			if (res == 0)
				return true;
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
		return false;
	}
}
