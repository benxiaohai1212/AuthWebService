//package com.chinaops.ecloud.racenter;
//
//import java.util.List;
//
//import junit.framework.Assert;
//import org.apache.log4j.Logger;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.chinaops.ecloud.racenter.dao.IDynamicPasswordCardDao;
//import com.chinaops.ecloud.racenter.entity.Company;
//import com.chinaops.ecloud.racenter.entity.DynamicPasswordCard;
//import com.chinaops.ecloud.racenter.entity.User;
///**
// * @author ZhangLQ
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "/applicationContext.xml" })
//public class DynamicPasswordCardDaoImplTest {
//	private Logger log = Logger.getLogger(this.getClass());
//	private IDynamicPasswordCardDao dynamicCardDao;
//	
//	@Autowired
//	public void setDynamicCardDao(IDynamicPasswordCardDao dynamicCardDao) {
//		this.dynamicCardDao = dynamicCardDao;
//	}
//	
//	@Test
//	public void testq(){
//		log.debug(1111);
//		
//	}
////	@Test
//	public void testCreateAndUpdateAndGetCardByIdCard(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		card.setCardNumber("3488888888888256");
//		card.setSeed("1");
//		DynamicPasswordCard newCard = dynamicCardDao.addCard(card);
//		Assert.assertNotNull(newCard);
//		Assert.assertEquals("3488888888888256", newCard.getCardNumber());
//		Assert.assertEquals("1", newCard.getSeed());
//		
//		newCard.setState(1);
//		newCard.setSeed("2");
//		int id = newCard.getId();
//		dynamicCardDao.modifyCard(newCard);
//		
//		DynamicPasswordCard card1 = dynamicCardDao.getDynamicPasswordCardById(id);
//		Assert.assertNotNull(card1);
//		Assert.assertEquals(id, card1.getId());
//		Assert.assertEquals(newCard.getSeed(), card1.getSeed());
//	}
//	
////	@Test 
//	public void testGetAllCards(){
//		List<DynamicPasswordCard> cards = dynamicCardDao.getCards();
//		Assert.assertNotNull(cards);
//		for(DynamicPasswordCard d:cards){
//			log.debug("id:"+d.getId()+" cardNumber:"+d.getCardNumber() +" seed:"+d.getSeed() +" state:"+d.getState());
//		}
//	}
//	
////	@Test
//	public void testOpenDynamicCard(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		Company company = new Company();
//		card.setId(32);
//		company.setId(1);
//		String password1 = "160299";
//		String password2 = "325597";
//		int flag = dynamicCardDao.openNewCard(card, company.getId(), password1, password2);
//		
//	}
//	
////	@Test
//	public void testDynamicCardsByCompanyId(){
//		Company company = new Company();
//		company.setId(1);
//		List<DynamicPasswordCard> cards = dynamicCardDao.getCardsByCompany(company.getId());
//		Assert.assertNotNull(cards);
//		for(DynamicPasswordCard d:cards){
//			log.debug("active" + d.getActive()+" id:"+d.getId()+" cardNumber:"+d.getCardNumber() +" seed:"+d.getSeed() +" state:"+d.getState()+" ccId:"+d.getCcId()+" Failure:"+d.getFailure());
//		}
//	}
//	
////	@Test
//	public void testgetUserBoundCard(){
//		DynamicPasswordCard card = dynamicCardDao.getUserBoundCard(190);
//		Assert.assertNotNull(card);
//		Assert.assertEquals(190, card.getUser().getId());
//	}
//	
////	@Test
//	public void testBindUser(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		Company company = new Company();
//		User user = new User();
//		card.setId(22);
//		company.setId(1);
//		user.setId(190);
//		dynamicCardDao.bindUser(card, company.getId(), user.getId());
//	}
//	
////	@Test
//	public void testFeeCardByCompany(){
//		Company company = new Company();
//		company.setId(1);
//		DynamicPasswordCard card = dynamicCardDao.getFeeCardByCompany(company.getId());
//		if(card !=null){
//			log.debug(222);
//		}
//	}
////		log.debug("card:"+ card.getId() );
////		Assert.assertNotNull(cards);
////		Assert.assertEquals(company.getId(),cards.getCompanyId());
//
////	@Test
//	public void testCards(){
//		dynamicCardDao.getCards();
//	}
//	
////	@Test
//	public void testSetFeeCardByCompany(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		Company company = new Company();
//		card.setId(24);
//		company.setId(1);
//		dynamicCardDao.setAsFeeCard(card, company.getId());
//	}
//	
////	@Test
//	public void testCheckPassword(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		card.setId(24);
//		String password = "129093";
//		dynamicCardDao.checkPassword(card, password);
//	}
//	
////	@Test
//	public void testActiveCard(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		card.setId(24);
//		Company company = new Company();
//		company.setId(1);
//		String password1 = "665479";
//		String password2 = "046141";
//		log.debug(dynamicCardDao.activateCard(card, company.getId(), password1, password2));
//		log.debug("testActiveCard:::::::::::::");
//	}
//	
////	@Test
//	public void testCardByid(){
//		DynamicPasswordCard card = new DynamicPasswordCard();
//		card.setId(24);
//		DynamicPasswordCard oldcard = dynamicCardDao.getDynamicPasswordCardById(card.getId());
//	}
//	
////	@Test
//	public void testd(){
//		DynamicPasswordCard c = dynamicCardDao.getDynamicPasswordBycardNumber("2100000075780");
//		log.debug(c.getCardNumber() + " "+c.getCcId()+" "+c.getUser().getId());
//	}
//	
////	@Test
//	public void test(){
//		DynamicPasswordCard c = dynamicCardDao.getDynamicPasswordBycardNumberAndUserId("2100000075780",0);
//		log.debug(c.getCardNumber() + " "+c.getCcId());
//	}
//	
////	@Test
//	public void test2(){
//		DynamicPasswordCard card =new DynamicPasswordCard();
//		card.setId(28);
//		int c = dynamicCardDao.openNewCard(card,1,"1","2");//((String(2100000075780));
//		log.debug(c);
//	}
//}