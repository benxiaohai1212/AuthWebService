/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-31 下午05:14:38
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
@XmlRootElement(name = "DynamicPasswordCardList")
public class DynamicPasswordCardList extends ResponseResult {
	@XmlElement(name = "DynamicPasswordCard")
	private List<DynamicPasswordCard> list = new ArrayList<DynamicPasswordCard>();

	public List<DynamicPasswordCard> getList() {
		return list;
	}

	public void setList(List<DynamicPasswordCard> list) {
		this.list = list;
	}

}
