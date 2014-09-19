package com.chinaops.ecloud.racenter.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.ISysAdminUserDao;
import com.chinaops.ecloud.racenter.entity.SysAdminUser;
import com.chinaops.ecloud.racenter.entity.SysAdminUserList;



public class SysAdminUserService extends BaseService {
	
	private ISysAdminUserDao sysAdminUserDao;

	public ISysAdminUserDao getSysAdminUserDao() {
		return sysAdminUserDao;
	}

	public void setSysAdminUserDao(ISysAdminUserDao sysAdminUserDao) {
		this.sysAdminUserDao = sysAdminUserDao;
	}
	
	public ResponseResult createSysAdminUser(Map<String, Object> param) {
		SysAdminUser adminUser = new SysAdminUser();
		String loginId = (String) param.get("loginid");
		String username = (String) param.get("username");
	    String password = (String) param.get("password");
	    String roleName = (String) param.get("rolename");
	    
	   // System.out.println(loginId+"-"+username+"-"+password+"-"+roleName);
	    
	    adminUser.setLoginId(loginId);
	    adminUser.setUsername(username);
	    adminUser.setPassword(password);
	    adminUser.setRoleName(roleName);
	    
	    SysAdminUser ret = sysAdminUserDao.createSysAdminUser(adminUser);
        if (ret != null)
            return ret;
        else
            return new ErrorResponse(MessageTips.FAILED);
	}
	
	public ResponseResult getAdminUser(Map<String, Object> param) {
        String id = (String) param.get("id");
        if (StringUtils.isEmpty(id)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
        }
        SysAdminUser adminUser = sysAdminUserDao.getById(Integer.parseInt(id));
        if (adminUser == null)
            return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
        else
            return adminUser;
    }
	
	public ResponseResult getAdminUserByLoginId(Map<String, Object> param) {
		String loginId = (String) param.get("loginid");
        if (StringUtils.isEmpty(loginId)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: loginId can't be null.");
        }
        SysAdminUser adminUser = sysAdminUserDao.getByLoginId(loginId);
        if (adminUser == null)
            return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
        else
            return adminUser;
    }
	
	/**
	 * 
     * 修改用户密码：
     */
    public ResponseResult updateAdminUserPassWord(Map<String, Object> param) {
        String id = (String) param.get("id");
        String password = (String) param.get("password");
        if (StringUtils.isEmpty(id))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "id can't be null.");
        if (StringUtils.isEmpty(password))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "password is not changed .");
        SysAdminUser adminUser = new SysAdminUser();
        adminUser.setId(Integer.parseInt(id));
        adminUser.setPassword(password);
        boolean ret = sysAdminUserDao.updatePassWord(adminUser);
        return boolToResponseResult(ret);
    }

    /**
     * 修改用户
     * @param param
     * @return
     */
    public ResponseResult updateAdminUser(Map<String, Object> param) {
        String id = (String) param.get("id");
        String loginId = (String) param.get("loginid");
		String username = (String) param.get("username");
	    String password = (String) param.get("password");
	    String roleName = (String) param.get("rolename");
      

        if (StringUtils.isEmpty(id))
            return new ErrorResponse(MessageTips.CUSTOM_ERROR, "id can't be null.");
     
        SysAdminUser adminUser = new SysAdminUser();
        adminUser.setId(Integer.parseInt(id));
        adminUser.setLoginId(loginId);
        adminUser.setPassword(password);
        adminUser.setUsername(username);
        adminUser.setRoleName(roleName);
        System.out.println(id+"-"+loginId+"-"+password+"-"+roleName);
        boolean ret = sysAdminUserDao.updateUser(adminUser);
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
        return boolToResponseResult(sysAdminUserDao.deleteSysAdminUser(Integer.parseInt(id)));
    }

    
    
    public ResponseResult authenticate(Map<String, Object> param) {
        String loginId = (String) param.get("loginid");
        String password = (String) param.get("password");  
        if (StringUtils.isEmpty(loginId) || StringUtils.isEmpty(password)) {
            return new ErrorResponse(MessageTips.CUSTOM_ERROR,
                    "Error: loginId,password all can't be null.");
        }

        SysAdminUser adminUser = sysAdminUserDao.authenticate(loginId, password);
        if (adminUser == null)
            return new ErrorResponse(MessageTips.FAILED);
        return adminUser;
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
    	return boolToResponseResult(sysAdminUserDao.isLoginIdUnique(loginId));
    }
    
    
   	public ResponseResult getAllSysAdminUser(Map<String, Object> param) {
		List<SysAdminUser> adminUser = sysAdminUserDao.getAllSysAdminUsers();
		if (adminUser == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			SysAdminUserList result = new SysAdminUserList();
			for (SysAdminUser sysAdminUser : adminUser) {
				result.getList().add(sysAdminUser);
			}
			return result;
		}
	}
    
}
