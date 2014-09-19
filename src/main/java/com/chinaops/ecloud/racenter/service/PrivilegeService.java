/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-11-18 上午10:15:08
 */
package com.chinaops.ecloud.racenter.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.IPrivilegeDao;
import com.chinaops.ecloud.racenter.dao.IUserDao;
import com.chinaops.ecloud.racenter.entity.Privilege;
import com.chinaops.ecloud.racenter.entity.PrivilegeList;
import com.chinaops.ecloud.racenter.entity.User;
import com.chinaops.ecloud.racenter.entity.UserList;

/**
 * 权限服务层
 * @author wb
 */
@SuppressWarnings("null")
public class PrivilegeService extends BaseService {

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	private IPrivilegeDao privilegeDao;

	private IUserDao userDao;

	public void setPrivilegeDao(IPrivilegeDao privilegeDao) {
		this.privilegeDao = privilegeDao;
	}

	/**
	 * 创建权限
	 * @param param
	 * @return
	 */
	public ResponseResult createPrivilege(Map<String, Object> param) {
		String name = (String) param.get("name");
		String token = (String) param.get("token");
		String level = (String) param.get("level");
		String url = (String) param.get("url");
		String group = (String) param.get("group");
		String category = (String) param.get("category");
		String sn = (String) param.get("sn");
		String tooltip = (String) param.get("tooltip");

		if (name==null || token==null ||group==null || sn==null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: all name,token,group,sn can't be null.");
		}
		Privilege p = new Privilege();
		p.setName(name);
		p.setToken(token);
		p.setLevel(level);
		p.setUrl(url);
		p.setGroup(group);
		p.setCategory(category);
		p.setSn(Integer.parseInt(sn));
		p.setTooltip(tooltip);
		p = privilegeDao.createPrivilege(p);
		if (p != null)
			return p;
		else
			return new ErrorResponse(MessageTips.FAILED);

	}

	/**
	 * 修改权限
	 * @param param
	 * @return
	 */
	public ResponseResult updatePrivilege(Map<String, Object> param) {
		String id = (String) param.get("id");
		String name = (String) param.get("name");
		String token = (String) param.get("token");
		String level = (String) param.get("level");
		String url = (String) param.get("url");
		String group = (String) param.get("group");
		String category = (String) param.get("category");
		String sn = (String) param.get("sn");
		String tooltip = (String) param.get("tooltip");

		if (name==null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}
		if (name==null || token==null ||group==null || sn==null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: all name,token,group can't be null.");
		}
		Privilege p = new Privilege();
		p.setId(Integer.parseInt(id));
		p.setName(name);
		p.setToken(token);
		p.setLevel(level);
		p.setUrl(url);
		p.setGroup(group);
		p.setCategory(category);
		p.setSn(Integer.parseInt(sn));
		p.setTooltip(tooltip);
		int ret = privilegeDao.updatePrivilege(p);
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);

	}

	/**
	 * 根据id删除权限
	 * @param param
	 * @return
	 */
	public ResponseResult deletePrivilege(Map<String, Object> param) {
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(id)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}
		int ret = privilegeDao.deletePrivilege(Integer.parseInt(id));
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);

	}

	/**
	 * 根据id查询权限
	 * @param param
	 * @return
	 */
	public ResponseResult getPrivilegeById(Map<String, Object> param) {
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(id)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}
		Privilege priv = privilegeDao.getPrivilegeById(Integer.parseInt(id));
		if (priv == null)
			return new ErrorResponse(MessageTips.FAILED);
		else
			return priv;
	}
	
	/**
	 * 获取所有权限
	 * @param param
	 * @return
	 */
	public ResponseResult getAllPrivileges(Map<String, Object> param) {
		List<Privilege> list = privilegeDao.getAllPrivileges();
		if (list == null && list.isEmpty())
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			PrivilegeList result = new PrivilegeList();
			result.getList().addAll(list);
			return result;
		}
	}
	/**
	 * Description: 根据角色类型获取权限
	 * @Version 1.0 2013-4-23 上午10:01:56王斌(bin.wang@china-ops.com) 创建
	 */
	public ResponseResult getPrivilegesByCategory(Map<String, Object> param) {
		String category = (String) param.get("category");
		if (null==category)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: category can't be null.");
		
		List<Privilege> l = this.privilegeDao.getPrivilegesByCategory(category);
		if (l == null && l.isEmpty())
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			PrivilegeList result = new PrivilegeList();
			result.getList().addAll(l);
			return result;
		}
	}
	/**
	 * 为角色分配权限
	 * @param param
	 * @return
	 */
	public ResponseResult grantPrivilegesToRole(Map<String, Object> param) {
		List<String> privilegeIds = getListFromMap(param, "privilegeid");
		String roleName = (String) param.get("rolename");
		if (StringUtils.isEmpty(roleName) || null == privilegeIds || privilegeIds.isEmpty())
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: roleName, privilegeId can't be null.");
		List<Integer> privList = new ArrayList<Integer>();
		for (String priv : privilegeIds)
			privList.add(Integer.parseInt(priv));

		int ret = privilegeDao.grantToRole(roleName, privList);
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);

	}

	/**
	 * 为用户分配权限 
	 * @param param
	 * @return
	 */
	public ResponseResult revokeUserPrivileges(Map<String, Object> param) {
		List<String> privilegeIds = getListFromMap(param, "privilegeid");
		String userId = (String) param.get("userid");
		if (StringUtils.isEmpty(userId) || privilegeIds == null || privilegeIds.isEmpty())
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: userId, privilegeId can't be null.");
		List<Integer> privList = new ArrayList<Integer>();
		for (String priv : privilegeIds)
			privList.add(Integer.parseInt(priv));

		int ret = privilegeDao.revokeUserPrivileges(Integer.parseInt(userId), privList);
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);

	}

	/**
	 * 根据角色名获取权限、角色权限关联信息
	 * @param param
	 * @return
	 */
	public ResponseResult getPrivilegesByRoleId(Map<String, Object> param) {
		String roleName = (String) param.get("rolename");
		if (StringUtils.isEmpty(roleName)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: roleName can't be null.");
		}

		List<Privilege> list = privilegeDao.getPrivilegesByRoleId(roleName);
		if (list == null)
			//return null;
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			PrivilegeList result = new PrivilegeList();
			result.getList().addAll(list);
			return result;
		}

	}

	/**
	 * 根据用户获取权限
	 * @param param
	 * @return
	 */
	public ResponseResult getPrivilegesByUserId(Map<String, Object> param) {
		String userId = (String) param.get("userid");
		String category = (String) param.get("category");
		if (userId == null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: userId can't be null.");
		}
		User user = userDao.getUserById(Integer.parseInt(userId));
		if (user == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: user dont exist.");
		List<Privilege> roledList = privilegeDao.getPrivilegesByRoleId(user.getRole());
		List<Privilege> revokedList = privilegeDao.getPrivilegesByUserId(user.getId(), category);

		PrivilegeList result = new PrivilegeList();
		if (roledList != null && roledList.size() != 0) {
			if (category == null)
				result.getList().addAll(roledList);
			else {
				for (Privilege p : roledList)
					if (p.getCategory().equals(category))
						result.getList().add(p);
			}
		}

		if (revokedList != null)
			for (Privilege ap : revokedList) {
				if (ap.getSign().intValue() == 0 && result.getList().contains(ap))
					result.getList().remove(ap);
				else if (ap.getSign().intValue() == 1 && !result.getList().contains(ap)
						&& (category == null || ap.getCategory().equals(category)))
					result.getList().add(ap);
			}
		if (result.getList().size() == 0)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		return result;
	}

	/**
	 * 根据角色名、权限id删除权限
	 * @param param
	 */
	public ResponseResult deleteRolePrivileges(Map<String, Object> param) {
		List<String> privilegeIds = getListFromMap(param, "privilegeid");
		String roleName = (String) param.get("rolename");
		if (StringUtils.isEmpty(roleName))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: roleName can't be null.");
		int ret = -1;
		if (privilegeIds == null && privilegeIds.isEmpty()) {
			ret = privilegeDao.deleteRolePrivileges(roleName, null);
		} else {
			List<Integer> privList = new ArrayList<Integer>();
			for (String priv : privilegeIds)
				privList.add(Integer.parseInt(priv));
			ret = privilegeDao.deleteRolePrivileges(roleName, privList);
		}
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 根据权限id获取用户
	 * @param param
	 * @return
	 */
	public ResponseResult getUsersByPrivilegeId(Map<String, Object> param) {
		String id = (String) param.get("privilegeid");
		UserList ul = new UserList();
		if (StringUtils.isEmpty(id))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: privilegeId can't be null.");
		List<User> users = privilegeDao.getUsersByprivilegeId(Integer.parseInt(id));
		if(users != null && !users.isEmpty()){
			ul.setList(users);
		}
		if (ul != null && !ul.getList().isEmpty())
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		return ul;
	}
	
	/**
	 * 根据用户删除用户权限关系
	 * @param param
	 * @return
	 */
	public ResponseResult deleteUserRevokedPrivileges(Map<String, Object> param) {
		List<String> privilegeIds = getListFromMap(param, "privilegeid");
		String userId = (String) param.get("userid");
		if (StringUtils.isEmpty(userId))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: userId can't be null.");
		int ret = -1;
		if (privilegeIds == null || privilegeIds.isEmpty()) {
			ret = privilegeDao.deleteUserRevokedPrivileges(Integer.parseInt(userId), null);
		} else {
			List<Integer> privList = new ArrayList<Integer>();
			for (String priv : privilegeIds)
				privList.add(Integer.parseInt(priv));

			ret = privilegeDao.deleteUserRevokedPrivileges(Integer.parseInt(userId), privList);
		}
		if (ret >= 0)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 根据token验证权限
	 * @param param
	 * @return
	 */
	public ResponseResult checkTokenUnique(Map<String, Object> param) {
		String token = (String) param.get("token");
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(token))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: token can't be null.");
		
		int id_ = 0;
		if(id != null){
			id_ = Integer.parseInt(id);
		}
		int ret = privilegeDao.checkTokenUnique(id_,token);
		if (ret < 1)
			return new SimpleResponse(MessageTips.SUCCESS);
		else
			return new SimpleResponse(MessageTips.FAILED);
	}
}
