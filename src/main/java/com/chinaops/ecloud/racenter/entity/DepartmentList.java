/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-1 下午03:08:02
 */
package com.chinaops.ecloud.racenter.entity;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.chinaops.ecloud.pub.entity.ResponseResult;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "departments")
public class DepartmentList extends ResponseResult{
	@XmlElement(name = "department")
	private List<Department> list = new ArrayList<Department>();

	public List<Department> getList() {
		return list;
	}

	public void setList(List<Department> list) {
		this.list = list;
	}
}
