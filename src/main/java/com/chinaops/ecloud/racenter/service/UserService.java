/**
 * China-Ops Inc. All Rights Reserved. Author: ljyang 2011-3-29 下午02:13:38
 */
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
import com.chinaops.ecloud.racenter.dao.IUserDao;
import com.chinaops.ecloud.racenter.entity.CompanyList;
import com.chinaops.ecloud.racenter.entity.User;
import com.chinaops.ecloud.racenter.entity.UserList;

/**
 * 用户服务层
 * @author wb
 */
@Service
public class UserService extends BaseService {
    private IUserDao userDao;

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    /**
     * 根据id获取用户
     * @param param
     * @return
     */
    public ResponseResult getUser(Map<String, Object> param) {
        String id = (String) param.get("id");
        if (StringUtils.isEmpty(id)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
        }
        User user = userDao.getUserById(Integer.parseInt(id));
        if (user == null)
            return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
        else
            return user;
    }

    /**
     * 创建用户
     */
    public ResponseResult createUser(Map<String, Object> param) {
        User user = new User();
        String loginId = (String) param.get("loginid");
        String username = (String) param.get("username");
        String password = (String) param.get("password");
        
        if(!isLoginIdUnique(loginId)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "您输入的Email已经存在，请选择一个其它Email。");
        }
        
        if (StringUtils.isEmpty(loginId) || StringUtils.isEmpty(username)
                || StringUtils.isEmpty(password)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "Error: loginId, userName, password all can't be null.");
        }

        user.setLoginId(loginId);
        user.setPassword(password);
        user.setUsername(username);

        try {
            Integer companyid = Integer.parseInt((String) param.get("companyid"));
            user.setCompanyId(companyid);

            user.setRole((String) param.get("role"));

            Integer deptid = Integer.parseInt((String) param.get("departmentid"));
            user.setDepartmentId(deptid);
        } catch (NumberFormatException e) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "Error: companyId, departmentId must be Integer type.");
        }

        String s = (String) param.get("status");
        user.setStatus(s == null || s.equals("1") ? true : false);

        User ret = userDao.createUser(user);
        if (ret != null)
            return ret;
        else
            return new ErrorResponse(MessageTips.FAILED);
    }

    /**
     * @param loginId
     * @return
     */
    private boolean isLoginIdUnique(String loginId) {
        return userDao.getUserByEmail(loginId) == null;
    }

    /**
     * 修改用户密码：
     */
    public ResponseResult updateUserPassWord(Map<String, Object> param) {
        String id = (String) param.get("id");
        String password = (String) param.get("password");
        if (StringUtils.isEmpty(id))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "id can't be null.");
        if (StringUtils.isEmpty(password))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "password is not changed .");
        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setPassword(password);
        boolean ret = userDao.updateUserPassWord(user);
        return boolToResponseResult(ret);
    }

    /**
     * 修改用户
     * @param param
     * @return
     */
    public ResponseResult updateUser(Map<String, Object> param) {
        String id = (String) param.get("id");
        String loginId = (String) param.get("loginid");
        String password = (String) param.get("password");
        String username = (String) param.get("username");
        String rolename = (String) param.get("role");
        String departId = (String) param.get("departmentid");

        String s = (String) param.get("status");
        boolean status = (s == null || s.equals("0")) ? false : true;

        if (StringUtils.isEmpty(id))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "id can't be null.");
        if (StringUtils.isEmpty(loginId) || StringUtils.isEmpty(username)
                || StringUtils.isEmpty(password) || StringUtils.isEmpty(departId))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "loginId,password,password,rolename,departmentid are all not changed.");

        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setLoginId(loginId);
        user.setPassword(password);
        user.setUsername(username);
        user.setRole(rolename);
        user.setDepartmentId(Integer.parseInt(departId));
        user.setStatus(status);

        boolean ret = userDao.updateUser(user);
        return boolToResponseResult(ret);
    }

    /**
     * 删除用户
     * @param param
     * @return
     */
    public ResponseResult deleleUser(Map<String, Object> param) {
        String id = (String) param.get("id");
        if (StringUtils.isEmpty(id))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
        return boolToResponseResult(userDao.deleteUser(Integer.parseInt(id)));
    }

    /**
     * 根据公司id查询用户集合
     * @param param
     * @return
     */
    public ResponseResult getUsersByCid(Map<String, Object> param) {
        String companyId = (String) param.get("companyid");
        String roleName = (String) param.get("rolename");
        if (StringUtils.isEmpty(companyId))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyId can't be null.");

        UserList ul = userDao.getUsersByCompanyId(Integer.parseInt(companyId), roleName);
        if (ul == null)
            return new ErrorResponse(MessageTips.FAILED);
        else if (ul.getList().isEmpty())
            return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
        else
            return ul;
    }

    /**
     * 根据公司id、登陆id验证用户是否存在
     * @param param
     * @return
     */
    public ResponseResult checkUserNameUnique(Map<String, Object> param) {
        String loginId = (String) param.get("loginid");
        String companyId = (String) param.get("companyid");
        if (StringUtils.isEmpty(loginId))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: loginId can't be null.");

        boolean ret = userDao.isLoginIdUnique(Integer.parseInt(companyId), loginId);
        return boolToResponseResult(ret);
    }

    /**
     * 根据登陆id、密码、标记 获取用户认证
     * @param param
     * @return
     */
    public ResponseResult authenticate(Map<String, Object> param) {
        String loginId = (String) param.get("loginid");
        String companySuffix = (String) param.get("companysuffix");
        String password = (String) param.get("password");
        String loginIp = (String) param.get("lastloginip");

        //        if (StringUtils.isEmpty(loginId) || StringUtils.isEmpty(companySuffix)
        if (StringUtils.isEmpty(loginId) || StringUtils.isEmpty(password)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "Error: loginId, companySuffix, password all can't be null.");
        }

        User user = userDao.authenticate(loginId, companySuffix, password, loginIp);
        if (user == null)
            return new ErrorResponse(MessageTips.FAILED);
        return user;
    }

    /**
     * 修改用户角色
     * @param param
     * @return
     */
    public ResponseResult updateUserRole(Map<String, Object> param) {
        String id = (String) param.get("id");
        String roleName = (String) param.get("role");
        if (StringUtils.isEmpty(id) || StringUtils.isEmpty(roleName))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id,role all can't be null.");

        boolean ret = userDao.changeRole(Integer.parseInt(id), roleName);
        return boolToResponseResult(ret);
    }

    /**
     * 用户注册
     * @param param
     * @return
     */
    public ResponseResult loginRegister(Map<String, Object> param) {
        String id = (String) param.get("id");
        String loginIp = (String) param.get("ip");
        if (StringUtils.isEmpty(id) || StringUtils.isEmpty(loginIp))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id, ip all can't be null.");

        boolean ret = userDao.loginRegister(Integer.parseInt(id), loginIp);
        return boolToResponseResult(ret);
    }

    /**
     * 根据username判断用户是否存在
     */
    public ResponseResult checkUserName(Map<String, Object> param) {
        String username = (String) param.get("username");
        if (StringUtils.isEmpty(username)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "username can't be null.");
        }
        return boolToResponseResult(userDao.checkUserName(username));
    }
    /**
     * 根据loginId判断是否唯一
     * @param param
     * @return
     */
    public ResponseResult checkUserLoginId(Map<String, Object> param){
     	String loginId = (String) param.get("loginid");
    	System.out.println(loginId+"..");
    	if(StringUtils.isEmpty(loginId)){
    		return new ErrorResponse(MessageTips.CUSTOM_ERROR,"loginId cant't be null.");
    	}
    	return boolToResponseResult(userDao.checkUserLoginId(loginId));
    }

    public ResponseResult getUserByCompanyIdAndRoleName(Map<String, Object> param){
    	  String companyId = (String) param.get("companyid");
          if (StringUtils.isEmpty(companyId)){
              return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: companyId can't be null.");
          }
          User user=userDao.getUserByCompanyIdAndRoleName(Integer.valueOf(companyId));
          if(user == null ){
        	  return new ErrorResponse(MessageTips.FAILED);
          }
          return user;
    }
    
    public ResponseResult getUserByLoginId(Map<String, Object> param){
    	String loginId = (String) param.get("loginid");
    	if(StringUtils.isEmpty(loginId)){
    		return new ErrorResponse(MessageTips.CUSTOM_ERROR,"loginId cant't be null.");
    	}
    	User user = userDao.getUserByLoginId(loginId);
    	if(user == null ){
    		return new ErrorResponse(MessageTips.FAILED);
    	}
    	return user;
    }
    
    public ResponseResult getUserByDept(Map<String, Object> param){
    	String deptId = (String) param.get("departmentid");
    	System.out.println("deptid:"+deptId+"....");
    	if (StringUtils.isEmpty(deptId)){
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: deptId can't be null.");
        }
    	List<User> list = userDao.getUserByDept(Integer.valueOf(deptId));
    	if(list ==  null ){
    		return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
    	}else {
			UserList result = new UserList();
			result.getList().addAll(list);
			return result;
		}
    	
    }
}
