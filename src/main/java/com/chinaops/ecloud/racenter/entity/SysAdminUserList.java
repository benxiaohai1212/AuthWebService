package com.chinaops.ecloud.racenter.entity;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.chinaops.ecloud.pub.entity.ResponseResult;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "sysAdminUsers")
public class SysAdminUserList extends ResponseResult {
	@XmlElement(name = "sysadminuser")
	private List<SysAdminUser> list = new ArrayList<SysAdminUser>();

	public List<SysAdminUser> getList() {
		return list;
	}

	public void setList(List<SysAdminUser> list) {
		this.list = list;
	}

}
