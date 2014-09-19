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
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.chinaops.ecloud.pub.entity.ResponseResult;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "companies")
public class CompanyList2 extends ResponseResult {
	private int recordCount;

	private int pageNo;

	private int countPerPage;
	
	@XmlElementWrapper(name = "list")
	@XmlElement(name = "company")
	private List<Company> list = new ArrayList<Company>();

	public List<Company> getList() {
		return list;
	}

	public void setList(List<Company> list) {
		this.list = list;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	
}
