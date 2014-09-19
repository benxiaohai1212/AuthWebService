/*
 * $Id$
 * 
 * All Rights Reserved 2011 China OPS Information Technology Co.,Ltd.
 */
package com.chinaops.ecloud.racenter.entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import com.chinaops.ecloud.pub.entity.ResponseResult;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "privilege")
public class Privilege extends ResponseResult {

	private Integer id;

	private String name;

	private String token;

	private String level;

	private String group;

	private String category;

	private String url;

	@XmlTransient
	// 不转换设值
	private Integer sign;
	// 序号，用来排序的
	private Integer sn;
	// 菜单介绍
	private String tooltip = "";
	/**
	 * @return 返回 id。
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            要设置的 id。
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return 返回 name。
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            要设置的 name。
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return 返回 token。
	 */
	public String getToken() {
		return token;
	}

	/**
	 * @param token
	 *            要设置的 token。
	 */
	public void setToken(String token) {
		this.token = token;
	}

	/**
	 * @return 返回 level。
	 */
	public String getLevel() {
		return level;
	}

	/**
	 * @param level
	 *            要设置的 level。
	 */
	public void setLevel(String level) {
		this.level = level;
	}

	/**
	 * @return 返回 group。
	 */
	public String getGroup() {
		return group;
	}

	/**
	 * @param group
	 *            要设置的 group。
	 */
	public void setGroup(String group) {
		this.group = group;
	}

	public Integer getSign() {
		return sign;
	}

	public void setSign(Integer sign) {
		this.sign = sign;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Privilege other = (Privilege) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public String getTooltip() {
		return tooltip;
	}

	public void setTooltip(String tooltip) {
		this.tooltip = tooltip;
	}

}
