/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-11-18 上午10:56:40
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
@XmlRootElement(name = "privileges")
public class PrivilegeList extends ResponseResult {
	@XmlElement(name = "privilege")
	private List<Privilege> list = new ArrayList<Privilege>();

	public List<Privilege> getList() {
		return list;
	}

	public void setList(List<Privilege> list) {
		this.list = list;
	}

}
