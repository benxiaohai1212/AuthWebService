/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-29 上午11:08:57
 */
package com.chinaops.ecloud.racenter.dao;

import java.util.List;

import com.chinaops.ecloud.racenter.entity.DynamicPasswordCard;


/**
 * 动态密码卡持久层接口
 * @author wb
 */
public interface IDynamicPasswordCardDao {
	
	DynamicPasswordCard addCard(DynamicPasswordCard card);

	boolean modifyCard(DynamicPasswordCard card);
    
	boolean isQueryByCardNumber(String cardNumber);
	
	boolean isQueryById(int id);
	
	DynamicPasswordCard getCardById(int id);
	
	DynamicPasswordCard getCardByCardNumber(String cardNumber);
	
	List<DynamicPasswordCard> getAllCards();
	
	/////////////////////
//	关联表操作
	
    List<DynamicPasswordCard> getCardsByCompany(int companyId);

    boolean isCardByCardIdAndCompany(int companyId,int cardId);
    
    DynamicPasswordCard getUserBoundCard(int userId);
    
    boolean isUserCardByUID(int userId);
    
    int bindUser(DynamicPasswordCard card, int companyId, int userId);
    
    boolean isFeeCardByCompany(int companyId);
    
    int setAsFeeCard(DynamicPasswordCard card, int companyId);

    int openNewCard(DynamicPasswordCard card, int companyId, String password1,
            String password2);
    
    int checkPassword(DynamicPasswordCard card, String password);
   
    int activateCard(DynamicPasswordCard card, int companyId, String password1,
            String password2);
    
    DynamicPasswordCard getFeeCardByCompany(int companyId);
    
    /**
	 * 根据密码卡id查询关联表信息
	 */
	public DynamicPasswordCard getAssociateByCardId(int card_id);
	
	DynamicPasswordCard getCardByCompanyIdAndCardId(int companyId,int cardId);
	
	List<DynamicPasswordCard> getAllActiveCards();
	
    boolean updateUnbondUser(int id);
    
    boolean checkCardNumber(String cardNumber,int id);

	List<DynamicPasswordCard> getAllSysAdminActiveCards();
	

}
