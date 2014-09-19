/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-1 下午01:27:07
 */
package com.chinaops.ecloud.racenter.dao;

import java.util.List;

import com.chinaops.ecloud.racenter.entity.Department;

/**
 * 部门持久层接口
 * @author wb
 */
public interface IDepartmentDao {
	Department addDepartment(Department dept);

	boolean updateDepartment(Department dept);

	boolean deleteDepartment(Integer id);

	List<Department> getDeptsByCompanyId(Integer id,String name);
	
	Department getDepartment(Integer id);
	
	boolean isNameUnique(String name, int companyId,Integer id);

}
