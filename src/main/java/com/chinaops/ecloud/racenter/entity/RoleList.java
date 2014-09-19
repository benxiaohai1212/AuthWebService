/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-14 下午04:57:48
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
@XmlRootElement(name = "roles")
public class RoleList extends ResponseResult{
	@XmlElement(name = "role")
	private List<Role> list = new ArrayList<Role>();

	public List<Role> getList() {
		return list;
	}

	public void setList(List<Role> list) {
		this.list = list;
	}
}
