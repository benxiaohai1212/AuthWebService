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
 * 易云系统的公司类。
 * 
 * @author Harley Ren
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "company")
public class Company extends ResponseResult {
	// ========================== Attributes ============================
	private int id;

	private String name;

	/**
	 * 公司的所有用户在登录时，其登录名的形式为：user@company_suffix, 此属性就保存
	 * company_suffix,公司可根据需要自行改变此suffix,但要保证不与其他公司的suffix冲突。
	 */
	private String suffix;

	/** 公司的联系人信息 */
	private String contact;

	private String address;

	// private Date createTime;
	private long createTime;

	/** 0:Disabled ; 1: Enabled */
	private String status;
	/** 是否启用动态密码卡， 0：不启用;1：启用。 */
	private int enable_dynamic_password_card = 0;

	/**
	 * 是否是第一次登陆：0：是第一次登陆，1：不是
	 */
	private int isFirstLogin;

	private String contact_person = ""; // 联系人
	private String contact_cell_phone = ""; // 联系手机
	private String contact_phone = ""; // 联系电话
	private String contact_email = ""; // 联系邮箱

	private String domain_name = ""; // 代理商域名
	private String logo_img = ""; // 代理商logo
	private String footer = ""; // 代理商页脚
	
	private int IsOpenDept; //是否开启部门

	public int getIsFirstLogin() {
		return isFirstLogin;
	}

	public void setIsFirstLogin(int isFirstLogin) {
		this.isFirstLogin = isFirstLogin;
	}

	public int getEnable_dynamic_password_card() {
		return enable_dynamic_password_card;
	}

	public void setEnable_dynamic_password_card(int enable_dynamic_password_card) {
		this.enable_dynamic_password_card = enable_dynamic_password_card;
	}

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

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContact_person() {
		return contact_person;
	}

	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}

	public String getContact_cell_phone() {
		return contact_cell_phone;
	}

	public void setContact_cell_phone(String contact_cell_phone) {
		this.contact_cell_phone = contact_cell_phone;
	}

	public String getContact_phone() {
		return contact_phone;
	}

	public void setContact_phone(String contact_phone) {
		this.contact_phone = contact_phone;
	}

	public String getContact_email() {
		return contact_email;
	}

	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}

	public String getDomain_name() {
		return domain_name;
	}

	public void setDomain_name(String domain_name) {
		this.domain_name = domain_name;
	}

	public String getLogo_img() {
		return logo_img;
	}

	public void setLogo_img(String logo_img) {
		this.logo_img = logo_img;
	}

	public String getFooter() {
		return footer;
	}

	public void setFooter(String footer) {
		this.footer = footer;
	}

	public int getIsOpenDept() {
		return IsOpenDept;
	}

	public void setIsOpenDept(int isOpenDept) {
		IsOpenDept = isOpenDept;
	}

	@Override
	public String toString() {
		return "Company [id=" + id + ", name=" + name + ", suffix=" + suffix
				+ ", contact=" + contact + ", address=" + address
				+ ", createTime=" + createTime + ", status=" + status
				+ ", enableDynamicPasswordCard=" + enable_dynamic_password_card
				+ ", isFirstLogin=" + isFirstLogin + ", contact_person="
				+ contact_person + ", contact_phone=" + contact_phone
				+ ", contact_cell_phone=" + contact_cell_phone
				+ ", contact_email=" + contact_email + ", domain_name="
				+ domain_name + ", logo_img=" + logo_img + ", footer=" + footer
				+", IsOpenDept="+IsOpenDept
				+ "]";
	}
}
