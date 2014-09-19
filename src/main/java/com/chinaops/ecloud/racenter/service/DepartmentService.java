/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-1 下午01:05:06
 */
package com.chinaops.ecloud.racenter.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.IDepartmentDao;
import com.chinaops.ecloud.racenter.entity.Department;
import com.chinaops.ecloud.racenter.entity.DepartmentList;

/**
 * 部门服务类
 * @author wb
 */
@Service
public class DepartmentService extends BaseService {
	private IDepartmentDao departmentDao;

	public IDepartmentDao getDepartmentDao() {
		return departmentDao;
	}

	public void setDepartmentDao(IDepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}

	/**
	 * 创建部门
	 * @param param
	 * @return
	 */
	public ResponseResult createDepartment(Map<String, Object> param) {
		String name = (String) param.get("name");
		String sCompanyId = (String) param.get("companyid");
		if (name == null || sCompanyId == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: name, companyId all can't be null.");

		Integer companyid = null;
		try {
			companyid = Integer.parseInt(sCompanyId);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyId must be Integer type.");
		}

		Department dept = new Department();
		dept.setName(name);
		dept.setCompanyId(companyid);

		Department ret = departmentDao.addDepartment(dept);
		if (ret != null)
			return ret;
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 修改部门
	 * @param param
	 * @return
	 */
	public ResponseResult updateDepartment(Map<String, Object> param) {
		String name = (String) param.get("name");
		String sCompanyId = (String) param.get("companyid");
		String sId = (String) param.get("id");

		if (name == null || sCompanyId == null || sId == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id, name, companyId all can't be null.");

		Integer companyid = null;
		Integer id = null;
		try {
			companyid = Integer.parseInt(sCompanyId);
			id = Integer.parseInt(sId);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id, companyId must be Integer type.");
		}

		Department dept = new Department();
		dept.setName(name);
		dept.setCompanyId(companyid);
		dept.setId(id);

		boolean ret = departmentDao.updateDepartment(dept);
		return boolToResponseResult(ret);
	}

	/**
	 * 删除部门
	 * @param param
	 * @return
	 */
	public ResponseResult deleteDepartment(Map<String, Object> param) {
		String sId = (String) param.get("id");
		if (sId == null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}

		Integer id = null;
		try {
			id = Integer.parseInt(sId);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id must be Integer type.");
		}

		boolean ret = departmentDao.deleteDepartment(id);
		return boolToResponseResult(ret);
	}

	/**
	 * 根据公司id获取部门
	 * @param param
	 * @return
	 */
	public ResponseResult getDeptsByCompanyId(Map<String, Object> param) {
		String sId = (String) param.get("companyid");
		String name = (String) param.get("name");
		//System.out.println("deptName:"+name);
		if (sId == null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyId can't be null.");
		}
		Integer companyId = null;
		try {
			companyId = Integer.parseInt(sId);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyId must be Integer type.");
		}
		List<Department> list = departmentDao.getDeptsByCompanyId(companyId,name);
		if (list == null || list.size() == 0)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		DepartmentList deptlist = new DepartmentList();
		deptlist.getList().addAll(list);
		return deptlist;
	}

	/**
	 * 根据id获取部门
	 * @param param
	 * @return
	 */
	public ResponseResult getDeptById(Map<String, Object> param) {
		String sId = (String) param.get("id");
		if (sId == null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}
		Integer id = null;
		try {
			id = Integer.parseInt(sId);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id must be Integer type.");
		}
		Department dept = departmentDao.getDepartment(id);
		if (dept == null)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		return dept;
	}

	/**
	 * 根据部门名称检验部门名称是否唯一：
	 * @param param
	 * @return
	 */
	public ResponseResult isNameUnique(Map<String, Object> param){		
		String name = (String) param.get("name");
		String companyId = (String) param.get("companyid");		
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(name) || companyId == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: name,companyId can't be null.");
	//	System.out.println(name+"..."+companyId);
		/*Department dept = new Department();
		dept.setName(name);
		dept.setCompanyId(Integer.parseInt(companyId));*/
		int companyIds=Integer.parseInt(companyId);
		int id_temp = 0;
		if(id != null ){
			id_temp = Integer.valueOf(id);
		}
		boolean ret = departmentDao.isNameUnique(name,companyIds,id_temp);
		return boolToResponseResult(ret);
	}
}
