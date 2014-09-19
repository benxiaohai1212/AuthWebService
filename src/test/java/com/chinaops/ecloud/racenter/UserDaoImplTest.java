/*package com.chinaops.ecloud.racenter;




import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chinaops.ecloud.racenter.dao.IUserDao;
import com.chinaops.ecloud.racenter.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class UserDaoImplTest {
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	@Test
	public void testUpdatePass(){
		User user=new User();
		user.setId(132);
		user.setPassword("123");
	    if (userDao.updateUserPassWord(user)) {
			System.out.println("密码修改成功。。。");
			System.out.println(user.getPassword());
		};
		System.out.println(" error.........");

	}

}
*/