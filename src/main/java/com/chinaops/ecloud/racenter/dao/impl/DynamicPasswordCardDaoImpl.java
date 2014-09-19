package com.chinaops.ecloud.racenter.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.transaction.annotation.Transactional;

import com.chinaops.ecloud.pub.util.XmlParamParser;
import com.chinaops.ecloud.racenter.dao.ICompanyDao;
import com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao;
import com.chinaops.ecloud.racenter.dao.IUserDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.DynamicPasswordCard;
import com.chinaops.ecloud.racenter.entity.User;

import ft.otp.verify.OTPVerify;

/**
 * 动态密码卡持久层实现
 * @author wb
 */
public class DynamicPasswordCardDaoImpl extends RaBaseDao implements IDynamicPasswordCardDao {
	@SuppressWarnings("unused")
	private Log log  = LogFactory.getLog(XmlParamParser.class);
	//////////////////////////////////
	//dynamic_password_cards
//	创建动态卡
	private static String CREATE_CARD = "insert into dynamic_password_cards(card_number,seed) "	+ " values(?,?)";
//	修改动态卡信息
	private static String UPDATE_CARD = "update dynamic_password_cards set card_number=?, seed=?, state=? where id=? ";
//	查询所有密保卡
	private static String GET_ALL_CARDS = "select * from dynamic_password_cards ";
//	根据card_number查询密保卡的信息
	private static String GET_CARD_BY_CARDNUMBER = GET_ALL_CARDS + " where card_number=? ";
//	根据card_number密保卡是否存在，0不存在-1已存在
	private static String IS_QUERY_CARD_BY_CARDNUMBER = "select count(*) from dynamic_password_cards where card_number=? ";
//	根据id查找此id的密保卡的信息
	private static String GET_CARD_BY_ID = GET_ALL_CARDS + " where id=? ";
//	根据id判断是否存在这条数据，如ret = 1;说明已经存在，入不存在返回0
	private static String IS_QUERY_CARD_BY_ID = "select count(1) from dynamic_password_cards where id=? ";
	// 写入登陆验证错误 操作失败记录失败此时<5次 如=5需要激活此用户的动态口令卡
	private static String UPDATE_ERROR_COUNT ="update dynamic_password_cards set continuous_failure=? where id=? ";
	// 修改密码卡状态
	private static String UPDATE_CARD_STATE ="update dynamic_password_cards set state=? where id=? ";
	
		
//	关联SQL
//	返回公司具有的所有动态卡
	private static String GET_CARDS_BY_CID = "select b.id ccid ,a.id id,card_number,seed,state, last_success,drift,continuous_failure,active, fee_card,user_id,company_id from dynamic_password_cards as a ,company_dynamic_password_cards as b where a.id=b.card_id and b.company_id =?";
//	根据公司ID和动态卡的ID判断此CARDID与公司是否开卡 [0]未开卡 [1]已开卡
	private static String IS_CARD_BY_CID_AND_ID = "select count(1) from company_dynamic_password_cards  where company_id=? and card_id=? "; 
//	根据公司ID和CARDID在开卡同时设置此卡 做激活操作
	private static String OPEN_CARD = "insert into company_dynamic_password_cards(card_id,company_id,active,activetime) " + " values(?,?,1,sysdate()) ";
//	根据公司ID和动态卡的ID查询已关联公司密保卡的信息
	private static String GET_CARD_BY_CID_CARDID = "select c.id ccid,card_id id,company_id,user_id,active,activetime,fee_card,state from dynamic_password_cards a,company_dynamic_password_cards c where a.id = c.card_id and c.company_id=? and a.id =? " ;
//	根据USERID在关联表中查询改用是否绑定了动态卡
	private static String IS_USER_CARD_BY_UID = "select count(1)  from company_dynamic_password_cards where user_id=? ";
	private static String IS_ASSOCIATE_BY_UID = "select count(1)  from company_dynamic_password_cards where user_id=? and (card_id is null or card_id=0 ) ";
	//根据用户id查询绑定密码卡是否已禁用
	private static String IS_CARD_BY_ID_DISABLED = "select count(1) from dynamic_password_cards where state<>-1 and id=? ";
	private static String IS_ASSOCIATE_BY_ID_DISABLED = "select count(1) from dynamic_password_cards d,company_dynamic_password_cards c " +
														"where c.card_id = d.id and state<>-1 and d.id=? ";
	private static String IS_ASSOCIATE_BY_CID = "select count(1)  from company_dynamic_password_cards where card_id=? and (user_id is null or user_id=0 ) ";
	//根据用户id获取关联表中信息
	private static String GET_USER_CARD_BY_UID = "select c.id as ccid,c.card_id id,card_number,company_id,user_id,active,fee_card,continuous_failure,d.state " +
			"from company_dynamic_password_cards c,dynamic_password_cards d where d.id=c.card_id and c.user_id=? ";
	//修改关联表信息
	private static String UPDATE_USER_CARD = "update company_dynamic_password_cards set card_id=?,company_id=?,user_id=? where id=? ";
	//创建关联表信息
	private static String CREATE_USER_CARD = "insert into company_dynamic_password_cards(card_id,company_id,user_id,active) " + " values(?,?,?,1) ";
	//根据卡id删除
	private static String DELETE_ASSOCIATE_BY_CARDID = "delete from company_dynamic_password_cards where card_id=? ";
	//根据用户id或动态卡id获取关联表id
	private static String GET_ASSOCIATE_USERID_CARDID = "select id as ccid from company_dynamic_password_cards where (user_id=? or card_id=?)";
	
//	根据公司ID在关联表中判断该公司是否具有账务动态卡
//	private static String IS_QUERY_CARD_BY_FEECARD_COMPANY_ID = "select count(*) from dynamic_password_cards a, company_dynamic_password_cards c where  a.id=c.card_id and c.fee_card=1 and c.company_id=? ";
//	根据公司ID，是否为账务卡查询密保卡的信息
	private static String GET_CARD_BY_FEECARD_COMPANY_ID = "select id as ccid,card_id id,company_id,user_id,active,fee_card from company_dynamic_password_cards where company_id=? and card_id=?";
	
//	根据查询CARDID 和 公司ID 返回fee_card , 中间的表的ID ,USERID的信息
//	private static String QUERY_FEE_CARD_OR_USER_BY_CARD_ID_AND_CID = "select id as ccid,fee_card,user_id from company_dynamic_password_cards where card_id=? and company_id=? ";
	
//	设置公司的账务动态卡(CARDID 和 公司ID)
	private static String SET_AS_FEE_UPDATE_CARD = "update company_dynamic_password_cards set card_id=? ,company_id=?, fee_card=1 where id=? ";
//	判断该公司是否设置了账务动态卡
	private static String IS_FFE_CARD_BY_COMPANY = "select count(1) from company_dynamic_password_cards where fee_card=1 and company_id=? ";
//	判断该公司的账务卡是否已被禁用
	private static String IS_FFE_CARD_BY_COMPANY_DISABLED = "select count(1) from company_dynamic_password_cards c,dynamic_password_cards d " +
															"where c.card_id = d.id and fee_card=1 and d.state<>-1 and company_id=? ";
//	根据公司ID返回动态卡的信息
	private static String GET_FEE_CARD_BY_CID = GET_CARDS_BY_CID +" and b.fee_card=1 ";
	
//	验证口令卡
//	操作验证或激活登陆成功时写入最后登陆成功漂移值和登陆时间
	private static String CHECK_CARTE = "update dynamic_password_cards set last_success=?,drift=? where id=? ";
	//根据密码卡id查询关联表信息(后来加上了时间字段,可以得到动态密码卡的激活时间)
	private static String GET_ASSOCIATE_BY_CARD_ID = "select id ccid,card_id id,company_id,user_id,active,fee_card,activetime from company_dynamic_password_cards where card_id=? ";
	
	//动态密码卡的激活统计：
	private static String GET_ALL_ACTIVE_CARD = "select cc.id ccid,cc.company_id,cc.card_id id,dd.card_number,dd.state state,cc.active,cc.activetime from company c, dynamic_password_cards dd, company_dynamic_password_cards  cc where c.id = cc.company_id  and dd.id=cc.card_id";
	
//	private static String GET_CARD_ACTIVETIME_BY_CARDID = "select * from company_dynamic_password_cards where card_id = ? ";
	
	//删除用户时，把用户与卡解除绑定：zhouhuimin
	private static String  UPDATE_UNBOND_USER = "update company_dynamic_password_cards set user_id = 0 where id = ?";
	//添加密码卡的时候判断密码卡的卡号是否重复：zhouhuimin
	private static String CHECK_CARDNUMBER = "select count(1) from dynamic_password_cards where card_number = ?";
	
//	查询所有运营管理员的动态密码卡
	private static String GET_SYSADMIN_CARDS_BY_CID = "select s.id ccid ,d.id id,card_number,seed,state, last_success,drift,continuous_failure,active, fee_card,s.user_id from dynamic_password_cards as d ,sysadmin_dynamic_password_cards as s where d.id=s.card_id";
	
	////////////////////////////////
	private ICompanyDao companyDao;
	private IUserDao userDao;
	public void setCompanyDao(ICompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 /*对动态口的操作
	 * 创建密保卡
	 * 需要：card_number(卡的编号) 和 seed(种子)
	 */
	public DynamicPasswordCard addCard(DynamicPasswordCard card) {
		if(!isQueryByCardNumber(card.getCardNumber())){
			int ret = 0;
			KeyHolder kh = new GeneratedKeyHolder();
			ret = saveObjAndReturnIncId(CREATE_CARD, kh, card.getCardNumber(), card.getSeed());
			if (ret == 1) {
				card.setId(kh.getKey().intValue());
				return card;
			}
		}else{
			return null;
		}
		return null;
	}
	
	/**
	 * 修改密码卡
	 */
	public boolean modifyCard(DynamicPasswordCard card) {
		Integer id = card.getId();
		
		if(isQueryById(card.getId())){
			DynamicPasswordCard oldCard = getCardById(id);
			if (oldCard == null)
				return false;
			if (StringUtils.isEmpty(card.getCardNumber()))
				card.setCardNumber(oldCard.getCardNumber());
			if (StringUtils.isEmpty(card.getSeed()))
				card.setSeed(oldCard.getSeed());
			
			int ret = getSimpleJdbcTemplate().update(UPDATE_CARD, card.getCardNumber(), card.getSeed(),card.getState(), id);
			
			if (ret == 1){  //update success!
				//禁用卡时,删除关联表信息   要是 有关联删除，没关联呢？（因为假如卡没有关联的话就删除关联失败，返回false.所以 有时候在修改为state=-1，即使修改成功了，但是会提示修改失败）
				if(card.getState() == -1){
					//修改卡为禁用成功，查一下看这个卡是否有关联关系，有关联关系就修改、删除关联：
					DynamicPasswordCard card2 = getAssociateByCardId(card.getId());
					if(card2 != null && card2.getCcId() != 0 ){
						//说明这个卡有关联关系，然后就解绑
						ret = getSimpleJdbcTemplate().update(DELETE_ASSOCIATE_BY_CARDID,id);
						if(ret == 1){
							return true;
						}
					}else{
						//没有关联，那就直接返回true吧！
						return true;
					}					
				}
			}
		}
		return false;
	}

	/**
	 * 根据cardNumber判断此卡是否存在
	 * @param cardNumber
	 * @return
	 */
	public boolean isQueryByCardNumber(String cardNumber) {
		int ret = 0;
		ret = getSimpleJdbcTemplate().queryForInt(IS_QUERY_CARD_BY_CARDNUMBER, cardNumber);
		if(ret == 0){
			return false;
//			此cardNumber的动态卡不存在
		}else{
			return true;
//			此cardNumber的动态卡已存在
		}
	}
	/**
	 * 根据动态卡ID判断此卡是否存在
	 */
	public boolean isQueryById(int id) {
		int ret = 0;
		ret = getSimpleJdbcTemplate().queryForInt(IS_QUERY_CARD_BY_ID, id);
		if(ret == 0){
			return false;
//			此id的动态卡不存在
		}else{
			return true;
//			此id的动态卡已存在
		}
	}

	/**
	 * 根据卡的数据库ID查询此密保卡的信息
	 */
	public DynamicPasswordCard getCardById(int id) {
		try {
			Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_CARD_BY_ID, id);
			if (map == null || map.size() == 0)
				return null;
			DynamicPasswordCard c = mapToDynamicPasswordCard(map);
			if (c != null)
				return c;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}
	/**
	 * 根据card_number (密保卡编号)查询该卡的信息
	 */
	public DynamicPasswordCard getCardByCardNumber(String cardNumber){
		try {
			if(isQueryByCardNumber(cardNumber)){
				Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_CARD_BY_CARDNUMBER, cardNumber);
				
				if (map == null)
					return null;
				DynamicPasswordCard c = mapToDynamicPasswordCard(map);
				if (c != null)
					return c;
			}
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}
	/**
	 * 查询所有动态卡
	 * @return
	 */
	public List<DynamicPasswordCard> getAllCards() {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_CARDS);
			if (list == null || list.size() == 0)
				return null;

			List<DynamicPasswordCard> result = new ArrayList<DynamicPasswordCard>();
			for (Map<String, Object> map : list) {
				DynamicPasswordCard c = mapToDynamicPasswordCard(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
//		return new ArrayList<DynamicPasswordCard>();
	}
	
	// 关联表操作
	
//	关联SQL
	/**
	 * 根据公司ID查找与此公司的动态卡信息
	 * @param companyId
	 * @return
	 */
	public List<DynamicPasswordCard> getCardsByCompany(int companyId) {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_CARDS_BY_CID, companyId);
			if (list == null || list.size() == 0)
				return null;

			List<DynamicPasswordCard> result = new ArrayList<DynamicPasswordCard>();
			for (Map<String, Object> map : list) {
				DynamicPasswordCard c = mapToDynamicPasswordCard(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	/**
	 * 根据CompanyId、cardId判断这公司是否开卡
	 */
	public boolean isCardByCardIdAndCompany(int companyId,int cardId){
		int ret = 0;
		ret = getSimpleJdbcTemplate().queryForInt(IS_CARD_BY_CID_AND_ID, companyId,cardId);
		if(ret == 0){
			return false;//companyId,cardId没有有此ID的密保卡
		}else{
			return true;//companyId,cardId有此ID的密保卡
		}
	}
	
	/* (non-Javadoc)开卡
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#openNewCard(com.chinaops.ecloud.racenter.entity.DynamicPasswordCard, int, java.lang.String, java.lang.String)
	 */
	@Transactional
	public int openNewCard(DynamicPasswordCard card, int companyId,
			String password1, String password2) {
		int ret = 0;
		if(card == null)
			return 2;
		DynamicPasswordCard newCard = getCardById(card.getId());
		
		if(newCard == null)
			return 2;
		Company company = companyDao.getCompanyById(companyId);
		if(company == null)
			return 3;
		if(!isCardByCardIdAndCompany(companyId,card.getId())){
			if(password1 != null && password2 != null){
				if(!password1.equals(password2)){
//					try {
						if(true){
							//激活动态卡
							ret = activateCard(card, companyId, password1, password2);
						}
						if(ret==1){//动态码输入正确则开卡成功 by wangbin 
							ret = getSimpleJdbcTemplate().update(OPEN_CARD, card.getId(), companyId);
							if(ret==1)//开卡成功 修改卡状态 为售出
								ret = getSimpleJdbcTemplate().update(UPDATE_CARD_STATE,1,card.getId());
						}else
							return 4;
//					}catch (EmptyResultDataAccessException e) {
//						e.getStackTrace();
//					}
				}else{
					ret = 4; //口令输入有误
				}
			}else{
				ret = 5; //口令为空
			}
		}else{
			ret = 0; // 已开卡
		}
		return ret;
	}
	
	/* (non-Javadoc)判断用户是否绑定密码卡
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#isUserCardByUID(int)
	 */
	public boolean isUserCardByUID(int userId){
		int ret = 0;
		ret  = getSimpleJdbcTemplate().queryForInt(IS_USER_CARD_BY_UID,userId);
		if(ret == 0){
			return false;
		}else{
			return true;
		}
	}
	
	/* (non-Javadoc) 根据CompanyId判断此公司是否有账务卡
	 * @return false 没有;
	 * @return true 已绑定
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#isFeeCardByCompany(int)
	 */
	public boolean isFeeCardByCompany(int companyId){
		int ret = 0;
		ret = getSimpleJdbcTemplate().queryForInt(IS_FFE_CARD_BY_COMPANY,companyId);
		if(ret == 0){
			return false;//没有此ID的密保卡
		}else{
			return true;//有此ID的密保卡
		}
	}
	/**
	 * 判断该公司的账务卡是否已被禁用
	 * @param companyId
	 * @return
	 */
	public boolean isFeeCardByCompanyDisabled(int companyId){
		int ret = getSimpleJdbcTemplate().queryForInt(IS_FFE_CARD_BY_COMPANY_DISABLED,companyId);
		if(ret == 0)
			return true;
		return false;
		
	}

	/* (non-Javadoc)根据userid获取动态密码卡
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#getUserBoundCard(int)
	 */
	public DynamicPasswordCard getUserBoundCard(int userId) {
		try{
			User user = userDao.getUserById(userId);
			if(user == null || user.getId() == 0)
				return null;
			
//			判断此用户是否与动态卡关联 [1]已关联 [0]为关联
			if(isUserCardByUID(userId)){
				Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_USER_CARD_BY_UID, userId);
				return mapToDynamicPasswordCard(map);
			}else
				return null;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	/* (non-Javadoc)根据CompanyId获得公司账务卡的信息
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#getFeeCardByCompany(int)
	 */
	public DynamicPasswordCard getFeeCardByCompany(int companyId) {
		Company company = companyDao.getCompanyById(companyId);
		if(company == null)
			return null;
		
		// 判断该公司是否设置了账务卡 [0]未设置 [1]已设置
		if(isFeeCardByCompany(companyId)){
			Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_FEE_CARD_BY_CID, companyId);
			if (map != null && map.size() > 0) {
				return mapToDynamicPasswordCard(map);
			}else{
				return null;
			}
		}
		return null;
	}
	
	/* (non-Javadoc)根据cardId、companmyId、userId 绑定用户 
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#bindUser(com.chinaops.ecloud.racenter.entity.DynamicPasswordCard, int, int)
	 */
	@Transactional
	public int bindUser(DynamicPasswordCard card,int companyId,int userId) {
		DynamicPasswordCard newCard = getCardById(card.getId());
		if (newCard == null)
			return 2;
		Company company = companyDao.getCompanyById(companyId);
		if(company == null)
			return 3;
		User user = userDao.getUserById(userId);
		if(user == null)
			return 4;
		try {
			Integer ccId =  newCard.getCcId();
			Integer cardid = newCard.getId();
			DynamicPasswordCard dpc = this.getAssociateByCardId(newCard.getId());
			//用户与密报卡是否都存在
			if(null!=dpc && isUserCardByUID(userId)){
				return 6;
			}else{
				if(null!=dpc || isUserCardByUID(userId)){
					//是否为账务卡
					if(dpc.getFeeCard()==1)
						return 7;
					
					//通过用户id、密报卡id获取关联表id
					Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_ASSOCIATE_USERID_CARDID,userId,card.getId());
					ccId = (Integer)map.get("ccid");
					//密码卡未被绑定时执行
					if(isAssociateByCID(cardid) || isAssociateByUID(userId)){//|| isCardByIdDisabled(cardid)
						return getSimpleJdbcTemplate().update(UPDATE_USER_CARD, card.getId(),companyId,userId,ccId);
					}else
						return 8;
				}else
					return getSimpleJdbcTemplate().update(CREATE_USER_CARD, card.getId(),companyId,userId);
			}
		} catch (EmptyResultDataAccessException e) {
			return 0;
		}
	}
	/**
	 * 判断cardId是否已被用户绑定
	 * @param cardId
	 * @return
	 */
	public boolean isAssociateByCID(int cardId){
		int ret = 0;
		ret  = getSimpleJdbcTemplate().queryForInt(IS_ASSOCIATE_BY_CID,cardId);
		if(ret == 0)
			return false;
		return true;
	}
	/**
	 * 判断userId是否已绑定密码卡
	 */
	public boolean isAssociateByUID(int userId){
		int ret = 0;
		ret  = getSimpleJdbcTemplate().queryForInt(IS_ASSOCIATE_BY_UID,userId);
		if(ret == 0)
			return false;
		return true;
	}
	/**
	 * 根据id查询关联 密码卡是否已禁用
	 */
	public boolean isAssociateByIdDisabled(int card_id){
		int ret = 0;
		ret  = getSimpleJdbcTemplate().queryForInt(IS_ASSOCIATE_BY_ID_DISABLED,card_id);
		if(ret == 1)
			return false;
		return true;
	}
	/**
	 * 根据id查询密码卡是否已禁用
	 */
	public boolean isCardByIdDisabled(int card_id){
		int ret = 0;
		ret  = getSimpleJdbcTemplate().queryForInt(IS_CARD_BY_ID_DISABLED,card_id);
		if(ret == 1)
			return false;
		return true;
	}
	/* (non-Javadoc)设置公司账务卡
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#setAsFeeCard(com.chinaops.ecloud.racenter.entity.DynamicPasswordCard, int)
	 */
	public int setAsFeeCard(DynamicPasswordCard card, int companyId) {
		int ret = 0;
		DynamicPasswordCard oldCard = getCardById(card.getId());
		if (oldCard == null)
			return ret = 2;
		Company company = companyDao.getCompanyById(companyId);
		if(company == null)
			return ret = 3;
		try{
			// 判断该公司是否设置了账务卡 或 该公司已有的账务卡已被禁用
			if(!isFeeCardByCompany(companyId) ){//|| isFeeCardByCompanyDisabled(companyId)
				Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_CARD_BY_FEECARD_COMPANY_ID, companyId,card.getId());
				ret = getSimpleJdbcTemplate().update(SET_AS_FEE_UPDATE_CARD,card.getId(),companyId,(Integer)map.get("ccid"));
			}else{
				ret = 4;
			}
		}catch(EmptyResultDataAccessException e){
			return 0;
		}
		return ret;
	}
	
	/*
	 * (non-Javadoc)验证动态卡
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#checkPassword(com.chinaops.ecloud.racenter.entity.DynamicPasswordCard, java.lang.String)
	 */
	public int checkPassword(DynamicPasswordCard card, String password) {
		int ret = 0;
		DynamicPasswordCard oldCard = getCardById(card.getId());
		if (oldCard == null)
			return ret;
		if (StringUtils.isEmpty(card.getCardNumber()))
			card.setCardNumber(oldCard.getCardNumber());
		if (StringUtils.isEmpty(card.getSeed()))
			card.setSeed(oldCard.getSeed());
		if(card.getState() == 0)
			card.setState(oldCard.getState());
		if(card.getiDrift() == 0)
			card.setiDrift(oldCard.getiDrift());
		if(card.getlSucc() == 0)
			card.setlSucc(oldCard.getlSucc());
		if(card.getFailure() == 0){
			card.setFailure(oldCard.getFailure());
		}
		//密码卡被禁用 返回 by wangbin
		if(card.getState() == -1){
			return 6;
		}
		//密码卡被锁定 返回 by wangbin
		if(card.getState() == -2){
			return 7;
		}
		
		String seed = card.getSeed();
		String sOTP = password;
		int iDrift = card.getiDrift();
		long lSucc = card.getlSucc();
		Long nReturn;
		@SuppressWarnings("rawtypes")
		Map hashMap = OTPVerify.ET_CheckPwdz201(
				seed,									//令牌密钥
				System.currentTimeMillis()/1000,		//调用本接口计算机的当前时间
				0,										//给0
				60,										//给60，因为每60秒变更新的动态口令
				iDrift, 								//漂移值，用于调整硬件与服务器的时间偏差，见手册说明
				20,										//认证窗口，见手册说明 
				lSucc,									//成功值，用于调整硬件与服务器的时间偏差，见手册说明
				sOTP);									//要认证的动态口令OTP
			
			nReturn = (Long)hashMap.get("returnCode");
			if(nReturn == OTPVerify.OTP_SUCCESS) {
				iDrift = ((Long)hashMap.get("currentDrift")).intValue();
				lSucc = ((Long)hashMap.get("currentUTCEpoch")).longValue();
				
				card.setiDrift(iDrift);
				card.setlSucc(lSucc);
				
				ret = getSimpleJdbcTemplate().update(CHECK_CARTE, card.getiDrift(), card.getlSucc(), card.getId());
			}else if(card.getFailure()<= 4){
				ret = getSimpleJdbcTemplate().update(UPDATE_ERROR_COUNT,card.getFailure()+1, card.getId());
				ret = 2;
				if(card.getFailure()>=2 && card.getFailure() < 4){
					return 3;
				}else if (card.getFailure()== 4){//验证时，密码错误5次，状态设为锁定
					ret = getSimpleJdbcTemplate().update(UPDATE_CARD_STATE,-2, card.getId());
					return 4;
				}
			}else{//验证码 输入错误 并错误5次 
				//TODO 似乎这里不会在走了
				return 5;
			}
			if(ret == 1){
				ret = getSimpleJdbcTemplate().update(UPDATE_ERROR_COUNT, 0 , card.getId());
			}
		return ret;
	}
	/*
	 * (non-Javadoc)激活
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#activateCard(com.chinaops.ecloud.racenter.entity.DynamicPasswordCard, int, java.lang.String, java.lang.String)
	 */
	public int activateCard(DynamicPasswordCard card, int companyId,String password1, String password2) {
		int ret = 0;
		DynamicPasswordCard oldCard = getCardById(card.getId());

		if (oldCard == null)
			return ret;
		if (StringUtils.isEmpty(card.getCardNumber()))
			card.setCardNumber(oldCard.getCardNumber());
		if (StringUtils.isEmpty(card.getSeed()))
			card.setSeed(oldCard.getSeed());
		if(card.getState() == 0)
			card.setState(oldCard.getState());
		if(card.getiDrift() == 0)
			card.setiDrift(oldCard.getiDrift());
		if(card.getlSucc() == 0)
			card.setlSucc(oldCard.getlSucc());
		if(card.getFailure() == 0){
			card.setFailure(oldCard.getFailure());
		}
		Company company = companyDao.getCompanyById(companyId);
		if(company == null)
			return ret = 3;
		if(password1 != null && password2 != null){
			if(!password1.equals(password2)){
				String seed = card.getSeed();
				String sOTP1 = password1;
				String sOTP2 = password2;
				int iDrift = card.getiDrift();
				long lSucc = card.getlSucc();
				Long nReturn;

				@SuppressWarnings("rawtypes")
				Map hashMap = OTPVerify.ET_Syncz201(seed, System.currentTimeMillis()/1000, 0, 60, iDrift, 40, lSucc,sOTP1,sOTP2);
		        	nReturn = (Long)hashMap.get("returnCode");
		        if(nReturn == OTPVerify.OTP_SUCCESS){
					iDrift = ((Long)hashMap.get("currentDrift")).intValue();
					lSucc = ((Long)hashMap.get("currentUTCEpoch")).longValue();
						
					card.setiDrift(iDrift);
					card.setlSucc(lSucc);
					ret = getSimpleJdbcTemplate().update(CHECK_CARTE, card.getiDrift(), card.getlSucc(), card.getId());
					//激活成功将卡状态设为正常
					ret = getSimpleJdbcTemplate().update(UPDATE_CARD_STATE,2, card.getId());
				}else if(card.getFailure() <= 4){
					ret = getSimpleJdbcTemplate().update(UPDATE_ERROR_COUNT,card.getFailure()+1, card.getId());
					//激活时，密码错误5次，状态设为锁定
					if(card.getFailure()==4){
						ret = getSimpleJdbcTemplate().update(UPDATE_CARD_STATE,-2, card.getId());
					}
					ret = 2;
				}
				if(ret == 1){
					ret = getSimpleJdbcTemplate().update(UPDATE_ERROR_COUNT, 0 , card.getId());
				}
			}
		}
		return ret;
	}
	/*
	 * (non-Javadoc)根据公司ID和动态卡的ID查询已关联公司密保卡的信息
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#getAssociateByCardId
	 * (int)
	 */
	public DynamicPasswordCard getCardByCompanyIdAndCardId(int company_id,int card_id) {
		try {
			Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_CARD_BY_CID_CARDID, company_id,card_id);
			if (map == null || map.isEmpty())
				return null;
			DynamicPasswordCard c = mapToDynamicPasswordCard(map);
			if (c != null)
				return c;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}
	/*
	 * (non-Javadoc)根据密码卡id查询关联表信息
	 * @see com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao#getAssociateByCardId
	 * (int)
	 */
	public DynamicPasswordCard getAssociateByCardId(int card_id) {
		try {
			Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(GET_ASSOCIATE_BY_CARD_ID, card_id);
			if (map == null || map.isEmpty())
				return null;
			DynamicPasswordCard c = mapToDynamicPasswordCard(map);
			if (c != null)
				return c;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}
	
	/**
	 * 得到所有的激活的密码卡相关信息：
	 * @Description TODO 
	 * @date  2013-6-18 上午11:44:36
	 * @author 周慧敏(huimin_Angle@china-ops.com)
	 * @return
	 */
		public List<DynamicPasswordCard> getAllActiveCards() {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_ACTIVE_CARD);
			if (list == null || list.size() == 0)
				return null;

			List<DynamicPasswordCard> result = new ArrayList<DynamicPasswordCard>();
			for (Map<String, Object> map : list) {
				DynamicPasswordCard c = mapToDynamicPasswordCard(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
		
	/**
	 * 
	 * @Description: 绑定密码卡的用户删除的时候要把密码卡与用户解除绑定，所以需要修改一下关联表的信息。
	 * @date  2013-11-28 下午06:09:28
	 * @author 周慧敏(huimin_Angle@china-ops.com)
	 * @param id
	 * @return
	 */
    public boolean updateUnbondUser(int id){ 			
			int ret = getSimpleJdbcTemplate().update(UPDATE_UNBOND_USER,id);
			if(ret == 1){  //修改成功：
			   return true;				
			}
			return false;
    }
	/**
	 * 
	 * @Description 验证卡号是否重复： 
	 * @date  2013-11-28 下午04:58:10
	 * @author 周慧敏(huimin_Angle@china-ops.com)
	 * @param cardNumber
	 * @param id
	 * @return
	 */
	 public boolean checkCardNumber(String cardNumber,int id) {
		try {
			int num = -1;
			if( id  == 0){
				num = getSimpleJdbcTemplate().queryForInt(CHECK_CARDNUMBER, cardNumber);
			}else{
				num = getSimpleJdbcTemplate().queryForInt(CHECK_CARDNUMBER +" and id <> ?", cardNumber,id);
			}			
			if (num == 0)
					return true;
			} catch (EmptyResultDataAccessException e) {
				return false;
			}
			return false;
	   }

	 public List<DynamicPasswordCard> getAllSysAdminActiveCards() {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_SYSADMIN_CARDS_BY_CID);
			if (list == null || list.size() == 0)
				return null;

			List<DynamicPasswordCard> result = new ArrayList<DynamicPasswordCard>();
			for (Map<String, Object> map : list) {
				DynamicPasswordCard c = mapToDynamicPasswordCard(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	 
		
}
