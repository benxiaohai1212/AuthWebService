package com.chinaops.ecloud.racenter.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao;
import com.chinaops.ecloud.racenter.entity.DynamicPasswordCard;
import com.chinaops.ecloud.racenter.entity.DynamicPasswordCardList;

/**
 * 动态密码卡服务类
 * @author wb
 */
@Service
public class DynamicPasswordCardService extends BaseService {
	
	private IDynamicPasswordCardDao dynamicCardDao;  
	
	public void setDynamicCardDao(IDynamicPasswordCardDao dynamicCardDao) {
		this.dynamicCardDao = dynamicCardDao;
	}
	public IDynamicPasswordCardDao getDynamicCardDao() {
		return dynamicCardDao;
	}
	
	/**
	 * 根据动态卡CardNumber获得动态卡信息
	 */
	public ResponseResult getCardByCardNumber(Map<String, Object> param){
		String cardNumber = (String)param.get("cardnumber");
		if (StringUtils.isEmpty(cardNumber)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "cardNumber can't be null.");
		}
		DynamicPasswordCard card = dynamicCardDao.getCardByCardNumber(cardNumber);
		if(card != null){
			return card;
		}
		return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 根据id查询动态密码卡
	 */
	public ResponseResult getCardById(Map<String, Object> param){
		String id_str = (String)param.get("id");
		if (StringUtils.isEmpty(id_str)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "cardId can't be null.");
		}
		Integer id = getInteger(param, "id", true);
		DynamicPasswordCard card = dynamicCardDao.getCardById(id);
		if(card != null && card.getId() > 0)
			return card;
		return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 根据cardNumber判断此卡是否存在
	 */
	public ResponseResult isQueryByCardNumber(Map<String, Object> param){
		String cardNumber = (String)param.get("cardnumber");
		if (StringUtils.isEmpty(cardNumber)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "cardNumber can't be null.");
		}
		return boolToResponseResult(dynamicCardDao.isQueryByCardNumber(cardNumber));
	}
	
	/**
	 * 根据动态卡ID判断此卡是否存在
	 */
	public ResponseResult isQueryById(Map<String, Object> param){
		String id = (String)param.get("id");
		if (StringUtils.isEmpty(id)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "cardId can't be null.");
		}
		return boolToResponseResult(dynamicCardDao.isQueryById(Integer.parseInt(id))); 
	}

	/**
	 * 获取所有动态密码卡
	 */
	public ResponseResult getAllCards(Map<String, Object> param) {
		List<DynamicPasswordCard> cards = dynamicCardDao.getAllCards();
		if (cards == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			DynamicPasswordCardList result = new DynamicPasswordCardList();
			for(DynamicPasswordCard card:cards){
				result.getList().add(card);
			}
			return result;
		}
	}
	
	/**
	 * 创建动态密码卡
	 */
	public ResponseResult createCard(Map<String, Object> param) {
		String cardNumber = (String)param.get("cardnumber");
		String seed = (String)param.get("seed");
		if (StringUtils.isEmpty(cardNumber)) 
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"参数card_number 无效或已经存在。");
		if(StringUtils.isEmpty(seed))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"参数的seed无效。");

		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setCardNumber(cardNumber);
		card.setSeed(seed);
		DynamicPasswordCard ret = dynamicCardDao.addCard(card);
		if (ret == null) {
			return new ErrorResponse(MessageTips.FAILED,"添加动态卡失败。");
		}
		return ret;
	}
	
	/**
	 * 修改动态卡 
	 */
	public ResponseResult modifyCard(Map<String, Object> param) {
		String id = (String) param.get("id");
		String seed = (String) param.get("seed");
		String cardNumber = (String) param.get("cardnumber");
		String state = (String) param.get("state");
		
		if (StringUtils.isEmpty(id))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的id无效。");
		if(StringUtils.isEmpty(cardNumber))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的cardNumber 无效。");
		if(StringUtils.isEmpty(seed))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的seed 无效。");
		if(StringUtils.isEmpty(state))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的state 无效。");
		
		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setId(Integer.parseInt(id));
		card.setCardNumber(cardNumber);
		card.setSeed(seed);
		card.setState(Integer.parseInt(state));
		boolean ret = dynamicCardDao.modifyCard(card);
		return boolToResponseResult(ret);
	}
	
//	关联SQL
	/**
	 * 根据公司ID获得公司的密保卡
	 */
	public ResponseResult getCardsByCompany(Map<String, Object> param) {
		String companyid = (String) param.get("companyid");
		if (StringUtils.isEmpty(companyid)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数公司无效。");
		}
		List<DynamicPasswordCard>  cards = dynamicCardDao.getCardsByCompany(Integer.parseInt(companyid));
		DynamicPasswordCardList list = new DynamicPasswordCardList();
		if(cards != null && !cards.isEmpty()){
			list.setList(cards);
		}else{
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		}
		return list;
	}

	/**
	 * 根据cardId、companyId验证动态卡与公司是否关联
	 */
	public ResponseResult isCardByCardIdAndCompany(Map<String, Object> param){
		String cardId = (String) param.get("cardid");
		String companyId = (String) param.get("companyid");
		if (StringUtils.isEmpty(cardId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数cardId无效。");
		if (StringUtils.isEmpty(companyId)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数companyId无效。");
		}
		return boolToResponseResult(dynamicCardDao.isCardByCardIdAndCompany(Integer.parseInt(companyId), Integer.parseInt(cardId)));
	}
	
	/**
	 * 根据card, companyId, password1, password2开卡
	 */
	public ResponseResult openNewCard(Map<String, Object> param) {
		String cardId = (String) param.get("cardid");
		String companyId = (String) param.get("companyid");
		String password1 = (String) param.get("password1");
		String password2 = (String) param.get("password2");
		if (StringUtils.isEmpty(cardId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数cardId无效。");
		if(StringUtils.isEmpty(companyId)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数companyId 无效。");
		}
		if(StringUtils.isEmpty(password1)|| StringUtils.isEmpty(password2)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的password1 或者 password2 为空。");
		}
		
		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setId(Integer.parseInt(cardId));
		int ret = dynamicCardDao.openNewCard(card, Integer.parseInt(companyId), password1, password2);
		if (ret == 2){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		}else if(ret == 3){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"公司不从在。");
		}else if(ret == 4){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"口令输入有误。");
		}else if(ret == 5){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"口令为空。");
		}else if(ret == 0){
			return  new ErrorResponse(MessageTips.CUSTOM_ERROR,"此动态卡已经开卡。");
		}else if(ret == 1){
			return new SimpleResponse(MessageTips.SUCCESS);
		}else{
			return new ErrorResponse(MessageTips.FAILED);
		}
	}
	
	/**
	 * 判断userId是否绑定
	 */
	public ResponseResult isUserCardByUID(Map<String, Object> param){
		String userid = (String) param.get("userid");
		if (StringUtils.isEmpty(userid)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "userId can't be null.");
		}
		return boolToResponseResult(dynamicCardDao.isUserCardByUID(Integer.parseInt(userid)));
	}
	/**
	 * 动态卡绑定用户
	 * @param param
	 * @return
	 */
	public ResponseResult bindUser(Map<String, Object> param) {
		String cardId = (String) param.get("cardid");
		String companyId = (String) param.get("companyid");
		String userId = (String) param.get("userid");
		if (StringUtils.isEmpty(cardId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的cardId无效。");
		if(StringUtils.isEmpty(companyId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的companyId 无效。");
		if(StringUtils.isEmpty(userId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的userId 无效。");

		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setId(Integer.parseInt(cardId));
		
		int ret = dynamicCardDao.bindUser(card,Integer.parseInt(companyId), Integer.parseInt(userId));
		
		if(ret == 1)
			return new SimpleResponse(MessageTips.SUCCESS );
		else if (ret == 2)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		else if(ret == 3)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"参数companyId有误。");
		else if(ret == 4)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"参数userId用户不从在。");
		else if(ret == 5)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"此动态卡已和用户绑定。");
		else if (ret == 6)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"该用户已绑定密保卡。");
		else if (ret == 7)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"该卡位账务卡不能被用户绑定。");
		else if (ret == 8)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"该密码卡已被用户绑定或用户已绑定密保卡。");
		else{
			return new ErrorResponse(MessageTips.FAILED);
		}
	}

	/**
	 * 判断company是否有账务卡
	 */
	public ResponseResult isFeeCardByCompany(Map<String, Object> param){
		String companyId = (String) param.get("companyid");
		if(StringUtils.isEmpty(companyId)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数companyId 无效。");
		}
		return boolToResponseResult(dynamicCardDao.isFeeCardByCompany(Integer.parseInt(companyId)));
	}
	/**
	 * 设置账务卡
	 */
	public ResponseResult setAsFeeCard(Map<String, Object> param) {
		int ret = 0;
		String companyId = (String) param.get("companyid");
		String cardId = (String) param.get("cardid");
		if (StringUtils.isEmpty(cardId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "cardId无效。");
		if(StringUtils.isEmpty(companyId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的companyId 无效。");
		
		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setId(Integer.parseInt(cardId));
		ret = dynamicCardDao.setAsFeeCard(card, Integer.parseInt(companyId));
		if (ret == 2){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		}else if(ret == 3){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"公司不存在。");
		}else if(ret == 4)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"此动态密码卡已是账务卡。");
		else if(ret == 1)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}
	/**
	 * 获得账务卡的信息
	 * @param param
	 * @return
	 */
	public ResponseResult getFeeCardByCompany(Map<String, Object> param) {
		String companyId = (String) param.get("companyid");
		if (StringUtils.isEmpty(companyId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数公司无效。");
		
		DynamicPasswordCard card = dynamicCardDao.getFeeCardByCompany(Integer.parseInt(companyId));
		if(card != null)
			return card;
		else
			return new ErrorResponse(MessageTips.FAILED);
	}
	
	/**
	 * 根据userId获得该用户绑定的动态卡信息
	 */
	public ResponseResult getUserBoundCard(Map<String, Object> param) {
		String userId = (String) param.get("userid");
		if (StringUtils.isEmpty(userId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数用户无效。");
		DynamicPasswordCard card = dynamicCardDao.getUserBoundCard(Integer.parseInt(userId));
		if(card != null)
			return card;
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 验证动态卡
	 * @param param
	 * @return
	 */
	public ResponseResult checkPassword(Map<String, Object> param) {
		String cardId = (String) param.get("cardid");
		String password = (String) param.get("password");
		if (StringUtils.isEmpty(cardId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		if(StringUtils.isEmpty(password)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的password无效。");
		}
		DynamicPasswordCard card = this.dynamicCardDao.getCardById(Integer.parseInt(cardId));
		int ret = dynamicCardDao.checkPassword(card, password);
		if(ret == 0){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		}else if(ret == 1){
			return new SimpleResponse(MessageTips.SUCCESS);
		}else if(ret == 3){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"您已经连续"+(card.getFailure()+1)+"次输错动态密码。连续5次输入错误，此卡将被锁定。");
		}else if(ret == 4){
			return new SimpleResponse("602","动态密码卡被锁定，请执行激活。");
		}else if(ret == 5){
			int len = card.getCardNumber().length();
			return new ErrorResponse("602","动态密码输入错超过5次，请对密码卡解锁或与管理员联系。 ");
		}else if (ret == 6){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡已被禁用。");
		}else if (ret == 7){
			int len = card.getCardNumber().length();
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡已被锁定，请对密码卡解锁或与管理员联系。 ");
		}else{
			return new ErrorResponse(MessageTips.FAILED);
		}
	}
	/**
	 * 激活动态卡
	 */
	public ResponseResult activateCard(Map<String, Object> param) {
		String cardId = (String) param.get("cardid");
		String companyId = (String) param.get("companyid");
		String password1 = (String) param.get("password1");
		String password2 = (String) param.get("password2");
		if (StringUtils.isEmpty(cardId)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态密码卡无效。");
		}
		if(StringUtils.isEmpty(companyId)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的companyId 无效。");
		}
		if(StringUtils.isEmpty(password1) || StringUtils.isEmpty(password2)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "参数的password1 or password2 为空。");
		}
		DynamicPasswordCard card = new DynamicPasswordCard();
		card.setId(Integer.parseInt(cardId));
		int ret = 0;
		ret = dynamicCardDao.activateCard(card, Integer.parseInt(companyId), password1, password2);
		if (ret == 2){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "激活失败。");
		}else if(ret == 3){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR,"公司不存在。");
		}else if(ret == 1){
			return new SimpleResponse(MessageTips.SUCCESS);
		}else{
			return new ErrorResponse(MessageTips.FAILED);
		}
	}
	/**
	 * 根据密码卡id查询关联表信息
	 */
	public ResponseResult getAssociateByCardId(Map<String, Object> param) {
		String cardid = (String) param.get("card_id");
		if (StringUtils.isEmpty(cardid))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "动态卡密码卡id为空。");
		Integer card_id = getInteger(param,"card_id",true);
		DynamicPasswordCard card = this.dynamicCardDao.getAssociateByCardId(card_id);
		if(card != null && card.getId() != 0)
			return card;
		else
			return new ErrorResponse(MessageTips.FAILED);
	}
	
	/**
	 * 根据公司id和card id查询相关信息，:
	 * 
	 */
	public ResponseResult getCardByCompanyIdAndCardId(Map<String, Object> param){
		String cardId = (String) param.get("cardid");
		String companyId = (String) param.get("companyid");
		//System.out.println("cardId:"+cardId+"--"+"companyId:"+companyId);
		if(StringUtils.isEmpty(cardId)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: cardid can't be null.");
		}
		if(StringUtils.isEmpty(companyId)){
		   return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyid can't be null.");
		}
		DynamicPasswordCard card = this.dynamicCardDao.getCardByCompanyIdAndCardId(Integer.valueOf(companyId),Integer.valueOf(cardId) );
		if(card != null){
			return card;
		}
		return new ErrorResponse(MessageTips.FAILED);
	}
	
	public ResponseResult getAllActiveCards(Map<String, Object> param){
		List<DynamicPasswordCard> cards = dynamicCardDao.getAllActiveCards();
		if (cards == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			DynamicPasswordCardList result = new DynamicPasswordCardList();
			for(DynamicPasswordCard card:cards){
				result.getList().add(card);
			}
			return result;
		}
	}
	
	public ResponseResult updateUnbondUser(Map<String, Object> param){
		String id = (String)param.get("id");
		boolean ret = dynamicCardDao.updateUnbondUser(Integer.valueOf(id));
		return boolToResponseResult(ret);		
	}
	
	public ResponseResult checkCardNumber(Map<String, Object> param){
		String id = (String)param.get("id");
		String cardNumber = (String)param.get("cardnumber");
		if (StringUtils.isEmpty(cardNumber)){
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: cardNumber can't be null.");
		}
		boolean ret = dynamicCardDao.checkCardNumber(cardNumber, Integer.valueOf(id));
		return boolToResponseResult(ret);		
	}
	
	public ResponseResult getAllSysAdminActiveCards(Map<String, Object> param){
		List<DynamicPasswordCard> cards = dynamicCardDao.getAllSysAdminActiveCards();
		if (cards == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			DynamicPasswordCardList result = new DynamicPasswordCardList();
			for(DynamicPasswordCard card:cards){
				result.getList().add(card);
			}
			return result;
		}
	}
}
