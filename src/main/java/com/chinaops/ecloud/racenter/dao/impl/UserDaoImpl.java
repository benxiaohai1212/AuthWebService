/**
 * China-Ops Inc. All Rights Reserved. Author: ljyang 2011-3-26 下午04:29:56
 */
package com.chinaops.ecloud.racenter.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.racenter.dao.IUserDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.User;
import com.chinaops.ecloud.racenter.entity.UserList;

/**
 * 用户持久层实现
 * @author wb
 */
@Service
public class UserDaoImpl extends RaBaseDao implements IUserDao {
    //部门、用户联合查询
    private final static String USER_COMPANY_SECTION     = "SELECT u.*,d.name department_name FROM users u LEFT JOIN dept d ON u.department_id=d.id ";
    //创建用户
    private final static String INSERT_USER              = "INSERT INTO users(login_id,passwd,username,rolename,company_id,department_id,"
                                                                 + "create_time,last_update_time,status) values (?,?,?,?,?,?,SYSDATE(),SYSDATE(),?)";
    //修改用户
    private final static String UPDATE_USER              = "UPDATE users SET login_id=?,passwd=?,username=?,rolename=?,department_id=?,"
                                                                 + "last_update_time=sysdate(),status=? WHERE id=?";
    //根据id删除用户
    private final static String DELETE_USER              = "DELETE FROM users WHERE id=?";
    //根据用户id 查询部门、用户
    private final static String FIND_USER_BY_ID          = USER_COMPANY_SECTION + " where u.id=?";
    //根据登陆id、公司id查询部门、用户
    private final static String FIND_USER_BY_NAME        = USER_COMPANY_SECTION
                                                                 + " where u.company_id=? and u.login_id=?";

    /**根据登陆id(email)查询用户 */
    private final static String FIND_USER_BY_EMAIL       = USER_COMPANY_SECTION
                                                                 + " where u.login_id=?";

    //根据公司id查询部门、用户
    private final static String FIND_USERS_BY_COMPANY_ID = USER_COMPANY_SECTION
                                                                 + " where u.company_id=? ";
    //根据用户id修改上次登陆ip、时间
    private final static String UPDATE_USER_LOGTIME_IP   = "UPDATE users SET last_login_time=SYSDATE(),last_login_ip=? WHERE id=?";
    //根据用户id修改角色
    private final static String UPDATE_USER_ROLE         = "UPDATE users SET rolename=?, last_update_time=SYSDATE() WHERE id=?";
    //根据登陆id、密码、标记 获取用户id
    private final static String VALIDATE_USER_NAME_PSWD  = "SELECT u.id FROM users u where u.login_id=? and u.passwd=? ";
    //根据公司id、登陆id获取用户记录数
    private final static String UNIQUE_USER_CMPY_NAME    = "select count(1) from users where company_id=? and login_id=?";
    //根据登陆id获取用户记录数
    private final static String UNIQUE_USER_CMPY_NAME_G  = "select count(1) from users where login_id=?";

    //修改用户密码：
    private final static String UPDATE_USER_PassWord     = " UPDATE users SET passwd=? WHERE id=? ";

    //根据用户名查询，判断用户是否存在：
    private final static String CHECK_USERNAME_BY_NAME   = "select count(*) from users where username=?";

    //根据用户登陆id判断用户是否唯一：
    private final static String CHECK_LOGIN_ID           = "select count(*) from users  where login_id=?";
    
    private final static String GET_USER_BY_COMPANYID_AND_ROLE = " select * from users where company_id=? and rolename='CompanyAdmin'";
    
    private final static String GET_USER_BY_LOGINID = "select * from users where login_id=? ";
    
    private final static String GET_USER_BY_DEPT = " select * from users where department_id = ? " ;
   
    /* (non-Javadoc)根据用户id 查询部门、用户
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#getUserById(java.lang.Integer)
     */
    public User getUserById(Integer id) {
        try {
            List<Map<String, Object>> mapList = getSimpleJdbcTemplate()
                    .queryForList(FIND_USER_BY_ID, id);
            if (mapList != null && mapList.size() > 0) {
                for (Map<String, Object> map : mapList) {
                    return mapToUser(map);
                }
            }
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
        return null;
    }

    /* (non-Javadoc)根据登陆id、公司id查询部门、用户
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#getUserByName(java.lang.Integer, java.lang.String)
     */
    public User getUserByName(Integer companyId, String username) {
        try {
            Map<String, Object> map = getSimpleJdbcTemplate().queryForMap(FIND_USER_BY_NAME,
                    companyId,
                    username);
            if (map != null && map.size() > 0) {
                return mapToUser(map);
            }
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
        return null;
    }

    /* (non-Javadoc)创建用户
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#createUser(com.chinaops.ecloud.racenter.entity.User)
     */
    public User createUser(User user) {
        KeyHolder kh = new GeneratedKeyHolder();
        int ret = saveObjAndReturnIncId(INSERT_USER,
                kh,
                user.getLoginId(),
                user.getPassword(),
                user.getUsername(),
                user.getRole(),
                user.getCompanyId(),
                user.getDepartmentId(),
                (user.isStatus() == true ? "1" : "0"));
        if (ret == 1) {
            user.setId(kh.getKey().intValue());
            return user;
        }
        return null;
    }

    /* (non-Javadoc)删除用户 
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#deleteUser(java.lang.Integer)
     */
    public boolean deleteUser(Integer id) {
        int ret = getSimpleJdbcTemplate().update(DELETE_USER, id);
        if (ret > 0)
            return true;
        return false;
    }

    /* (non-Javadoc)修改用户
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#updateUser(com.chinaops.ecloud.racenter.entity.User)
     */
    public boolean updateUser(User user) {
        Integer id = user.getId();
        User old = getUserById(id);
        if (old == null)
            return false;

        if (StringUtils.isEmpty(user.getLoginId()))
            user.setLoginId(old.getLoginId());
        if (StringUtils.isEmpty(user.getPassword()))
            user.setPassword(old.getPassword());
        if (StringUtils.isEmpty(user.getUsername()))
            user.setUsername(old.getUsername());
        if (StringUtils.isEmpty(user.getRole()))
            user.setRole(old.getRole());
        if (user.getDepartmentId() <= 0)
            user.setDepartmentId(old.getDepartmentId());

        int ret = getSimpleJdbcTemplate().update(UPDATE_USER,
                user.getLoginId(),
                user.getPassword(),
                user.getUsername(),
                user.getRole(),
                user.getDepartmentId(),
                (user.isStatus() == true ? "1" : "0"),
                id);
        if (ret > 0)
            return true;
        return false;
    }

    /* (non-Javadoc)根据公司id、登陆id验证用户是否存在
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#isLoginIdUnique(java.lang.Integer, java.lang.String)
     */
    public boolean isLoginIdUnique(Integer companyId, String userLoginId) {
        try {
            int ret = -1;
            if (companyId != null)
                ret = getSimpleJdbcTemplate().queryForInt(UNIQUE_USER_CMPY_NAME,
                        companyId,
                        userLoginId);
            else
                ret = getSimpleJdbcTemplate().queryForInt(UNIQUE_USER_CMPY_NAME_G, userLoginId);
            if (ret == 0)
                return true;
        } catch (EmptyResultDataAccessException e) {
            return false;
        }
        return false;
    }

    /* (non-Javadoc)根据登陆id、密码、标记 获取用户认证
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#authenticate(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
     */
    public User authenticate(String loginId, String companySuffix, String password, String loginIp) {
        try {
            // 先获取Id
            int ret = getSimpleJdbcTemplate().queryForInt(VALIDATE_USER_NAME_PSWD,
                    loginId,
                    password);
            if (ret > 0) {
                // 根据id返回user对象
                User user = getUserById(ret);
                if (loginIp != null)
                    loginRegister(user.getId(), loginIp);
                return user;
            }
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
        return null;
    }

    /* (non-Javadoc)根据用户id修改角色
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#changeRole(java.lang.Integer, java.lang.String)
     */
    public boolean changeRole(Integer id, String roleName) {
        int ret = getSimpleJdbcTemplate().update(UPDATE_USER_ROLE, roleName, id);
        if (ret > 0)
            return true;
        return false;
    }

    /* (non-Javadoc)根据公司id查询用户集合
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#getUsersByCompanyId(java.lang.Integer, java.lang.String)
     */
    public UserList getUsersByCompanyId(Integer id, String roleName) {
        String sql = FIND_USERS_BY_COMPANY_ID;
        Object[] args = new Object[] { id };
        if (StringUtils.isNotEmpty(roleName)) {
            sql += " and u.rolename=? ";
            args = new Object[] { id, roleName };
        }
        try {
            List<Map<String, Object>> mapList = getSimpleJdbcTemplate().queryForList(sql, args);
            UserList ul = new UserList();
            if (mapList != null && mapList.size() > 0) {
                for (Map<String, Object> map : mapList) {
                    ul.getList().add(mapToUser(map));
                }
            }
            return ul;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    /* (non-Javadoc)登陆注册
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#loginRegister(java.lang.Integer, java.lang.String)
     */
    public boolean loginRegister(Integer id, String ipAddress) {
        int ret = getSimpleJdbcTemplate().update(UPDATE_USER_LOGTIME_IP, ipAddress, id);
        if (ret > 0)
            return true;
        return false;
    }

    public boolean updateUserPassWord(User user) {
        Integer id = user.getId();
        User old = getUserById(id);
        if (old == null)
            return false;

        if (StringUtils.isEmpty(user.getPassword()))
            user.setPassword(old.getPassword());

        int ret = getSimpleJdbcTemplate().update(UPDATE_USER_PassWord, user.getPassword(), id);
        if (ret > 0)
            return true;
        return false;
    }

    /**
     * 验证用户名是否重复：
     * @param username
     * @return
     */
    public boolean checkUserName(String username) {
        int ret = 0;
        ret = getSimpleJdbcTemplate().queryForInt(CHECK_USERNAME_BY_NAME, username);
        if (ret == 0) {
            return true; //用户名已经存在
        } else {
            return false; //用户名 不存在
        }
    }

    /**
        * 判断loginId是否重复:
        * @param loginId
        * @return
        */

    public boolean checkUserLoginId(String loginId) {
        int ret = 0;
        ret = getSimpleJdbcTemplate().queryForInt(CHECK_LOGIN_ID, loginId);
        if (ret == 0) {
            return true; //登陆id已经存在
        } else {
            return false;
        }
    }

    /* （非 Javadoc）
     * @see com.chinaops.ecloud.racenter.dao.IUserDao#getUserByEmail(java.lang.String)
     */
    public User getUserByEmail(String email) {
        try {
            Map<String, Object> map = getSimpleJdbcTemplate()
                    .queryForMap(FIND_USER_BY_EMAIL, email);
            if (map != null && map.size() > 0) {
                return mapToUser(map);
            }
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
        return null;
    }
    
    /**
     * 根据公司id和rolename的CompanyAdmin得到公司的公司管理员
     */
    public User getUserByCompanyIdAndRoleName(int companyId){
    	Map<String, Object> map= getSimpleJdbcTemplate().queryForMap(GET_USER_BY_COMPANYID_AND_ROLE, companyId);
    	if(map != null && map.size() >0 ){
    		return mapToUser(map);    		
    	}
		return null;
    }
    
    /**
     * 根据用户的登陆ID查询：
     * @param loginId
     * @return
     */
    
    public User getUserByLoginId(String loginId){
    	Map<String,Object> map = getSimpleJdbcTemplate().queryForMap(GET_USER_BY_LOGINID, loginId);
    	if(map != null && map.size() > 0){
    		return mapToUser(map);    		
    	}
    	return null;
    }
    
   /**
    * 
    */
    public List<User> getUserByDept(int deptId){
    	 try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_USER_BY_DEPT, deptId);
			if (list == null || list.size() == 0)
				return null;
			List<User> result = new ArrayList<User>();
			for (Map<String, Object> map : list) {
				User user = mapToUser(map);
				if (user != null)
					result.add(user);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
    }
    
}
