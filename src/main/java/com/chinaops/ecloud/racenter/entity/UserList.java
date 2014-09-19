/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-6 上午10:10:17
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
@XmlRootElement(name = "users")
public class UserList extends ResponseResult {
	@XmlElement(name = "user")
	private List<User> list = new ArrayList<User>();

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

}
