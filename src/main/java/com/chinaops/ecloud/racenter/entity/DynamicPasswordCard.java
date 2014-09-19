/*
 * $Id$
 * 
 * All Rights Reserved 2012 China OPS Information Technology Co.,Ltd.
 */
package com.chinaops.ecloud.racenter.entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import com.chinaops.ecloud.pub.entity.ResponseResult;

/**
 *
 * @author ZLQ 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "DynamicPasswordCard")
public class DynamicPasswordCard extends ResponseResult {

    private int               id;
    private String            cardNumber;  	// 卡号
    private String            seed;  	// 种子
    
    /** 0:未售;1：售出；-1：禁�?*/
    private int               state;
    private int failure;  // 登陆验证密码错误;
    private int ccId;		//关联表的Id
	private int iDrift;		 // 漂移值
	private long lSucc;		// 调用成功后的返回值
    private int userId;
    private int companyId;
    private int active;
    private int feeCard;
    private long activetime;
    
    // ========================= Constructors ===========================
    // ======================= Getters & Setters ========================
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getSeed() {
        return seed;
    }

    public void setSeed(String seed) {
        this.seed = seed;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
    
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
//
//	public String getUserName() {
//		return userName;
//	}
//
//	public void setUserName(String userName) {
//		this.userName = userName;
//	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	
	public int getFeeCard() {
		return feeCard;
	}
	public void setFeeCard(int feeCard) {
		this.feeCard = feeCard;
	}
	
	public int getiDrift() {
		return iDrift;
	}
	public void setiDrift(int iDrift) {
		this.iDrift = iDrift;
	}
	
	public long getlSucc() {
		return lSucc;
	}
	public void setlSucc(long lSucc) {
		this.lSucc = lSucc;
	}
	
	public int getCcId() {
		return ccId;
	}
	public void setCcId(int ccId) {
		this.ccId = ccId;
	}
	
	public int getFailure() {
		return failure;
	}
	public void setFailure(int failure) {
		this.failure = failure;
	
	}
	
	
	
    public long getActivetime() {
		return activetime;
	}

	public void setActivetime(long activetime) {
		this.activetime = activetime;
	}

	@Override
	public String toString() {
		return "DynamicPasswordCard [id=" + id 
		+ ", cardNumber=" + cardNumber 
		+ ", seed=" + seed 
		+ ", state=" + state 
		+ ", iDrift=" + iDrift 
		+ ", lSucc=" + lSucc 
		+ ", failure=" + failure 
		+ ", ccId=" + ccId
		+ ", companyId=" + companyId 
		+ ", userId=" + userId
		+ ", active=" + active
		+ ", activetime="+activetime
		+ ", fee_card=" + feeCard + "]";
	}
}

