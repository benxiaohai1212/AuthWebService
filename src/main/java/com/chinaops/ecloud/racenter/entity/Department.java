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

/**
 * 
 * @author Harley Ren
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "department")
public class Department extends ResponseResult {
	// ========================== Attributes ============================
	private int id;
	private String name;
	private int companyId;
	private long createTime;

	// ========================= Constructors ===========================

	// ======================= Getters & Setters ========================
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	// ======================== Public methods ==========================

	// ==================== Private utility methods =====================

	// ========================== main method ===========================
}
