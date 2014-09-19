/*
 * $Id$
 * 
 * All Rights Reserved 2011 China OPS Information Technology Co.,Ltd.
 */
package com.chinaops.ecloud.racenter.entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import com.chinaops.ecloud.pub.entity.ResponseResult;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "user")
public class User extends ResponseResult {
	// ========================== Attributes ============================
	private int id;
	/** 登录ID */
	private String loginId;

	private String password;

	/** 用户的名称，显示于前台 */
	private String username;

	private long createTime;
	private long lastUpdateTime;
	private long lastLoginTime;
	private String lastLoginIP;

	private boolean status;
	/**
	 * 用户角色(系统管理员:SystemAdmin;运营管理员:OperationsAdmin;账务管理员:AccountAdmin;
	 * 公司管理员:CompanyAdmin;普通用户:user)
	 */
	private String role;

	/** 所属公司ID */
	private int companyId;

	/** 所属部门ID */
	private int departmentId;

	/** 这个是冗余信息，是为了方便前台的显示用的。 */
	private String departmentName;

	// ========================= Constructors ===========================

	// ======================= Getters & Setters ========================

	public int getId() {
		return id;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public long getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(long lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public long getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(long lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLastLoginIP() {
		return lastLoginIP;
	}

	public void setLastLoginIP(String lastLoginIP) {
		this.lastLoginIP = lastLoginIP;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	// ======================== Public methods ==========================

	// ==================== Private utility methods =====================

	// ========================== main method ===========================
}
