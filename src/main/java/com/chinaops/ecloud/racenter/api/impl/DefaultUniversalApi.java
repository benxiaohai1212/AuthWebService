/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-25 下午04:02:21
 */
package com.chinaops.ecloud.racenter.api.impl;

import java.util.Map;

import com.chinaops.ecloud.pub.api.AbstractUniversalApi;
import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.racenter.constant.ServiceName;
import com.chinaops.ecloud.racenter.service.CompanyService;
import com.chinaops.ecloud.racenter.service.DepartmentService;
import com.chinaops.ecloud.racenter.service.DynamicPasswordCardService;
import com.chinaops.ecloud.racenter.service.PrivilegeService;
import com.chinaops.ecloud.racenter.service.RoleService;
import com.chinaops.ecloud.racenter.service.SysAdminUserService;
import com.chinaops.ecloud.racenter.service.UserService;

public class DefaultUniversalApi extends AbstractUniversalApi {
	private UserService userService;

	private CompanyService companyService;

	private DepartmentService departmentService;

	private RoleService roleService;

	private PrivilegeService privilegeService;
	
	private DynamicPasswordCardService dynamicPasswordCardService;
	
	private SysAdminUserService adminUserService;

	@Override
	protected ResponseResult process(String action, Map<String, Object> param) throws Exception {
		switch (ServiceName.getServiceName(action)) {
		// user
		case CREATE_USER:
			return userService.createUser(param);
		case UPDATE_USER:
			return userService.updateUser(param);
		case DELETE_USER:
			return userService.deleleUser(param);
		case GET_USER_BY_ID:
			return userService.getUser(param);
		case GET_USERS_BY_CID:
			return userService.getUsersByCid(param);
		case USER_UID_UNIQUE:
			return userService.checkUserNameUnique(param);
		case AUTHENTICATE:
			return userService.authenticate(param);
		case UPDATE_USER_ROLE:
			return userService.updateUserRole(param);
		case LOGIN_REGIESTER:
			return userService.loginRegister(param);
		case UPDATE_USER_PASSWORD:
		return userService.updateUserPassWord(param);
		case CHECK_USERNAME_BY_NAME:
		    return userService.checkUserName(param);
		case CHECK_LOGIN_ID:
			return userService.checkUserLoginId(param);
		case GET_USER_BY_COMPANYID_AND_ROLE:
			return userService.getUserByCompanyIdAndRoleName(param);
		case GET_USER_BY_LOGINID:
			return userService.getUserByLoginId(param);
		case GET_USER_BY_DEPT:
			return userService.getUserByDept(param);
			
			// company
		case GET_COMPANY_BY_ID:
			return companyService.getCompany(param);
		case GET_ALL_COMPANY:
			return companyService.getAllCompanies(param);
		case GET_ALL_COMPANIES_BY_PAGE:
			return companyService.getAllCompaniesByPage(param);
			
		case CNAME_UNIQUE:
			return companyService.checkNameUnique(param);
		case CSUFFIX_UNIQUE:
			return companyService.checkSuffixUnique(param);
		case CREATE_COMPANY:
			return companyService.createCompany(param);
		case UPDATE_COMPANY:
			return companyService.updateCompany(param);
		case GET_COMPANYS_BY_IDS:
			return companyService.getCompanysByIds(param);
		case UPDATE_ISFIRSETLOGIN:
			return companyService.updateFirstLogin(param);
	/*	case SEARCH_BY_COMPANY_NAME:
			return companyService.searchByCompanyName(param);
*/
		case SELECT_COMPANY_BY_CREATETIME:
			return companyService.getCompanyByTime(param);
			
			// department
		case CREATE_DEPT:
			return departmentService.createDepartment(param);
		case UPDATE_DEPT:
			return departmentService.updateDepartment(param);
		case DELETE_DEPT:
			return departmentService.deleteDepartment(param);
		case GET_DEPTS_BY_CID:
			return departmentService.getDeptsByCompanyId(param);
		case GET_DEPT_BY_ID:
			return departmentService.getDeptById(param);
		case CHECK_DEPT_NAME:
			return departmentService.isNameUnique(param);

			// role
		case GET_ALL_ROLES:
			return roleService.getAllRoles(param);
		case CREATE_ROLE:
			return roleService.createRole(param);
		case UPDATE_ROLE:
			return roleService.updateRole(param);
		case DELETE_ROLE:
			return roleService.deleteRole(param);
		case CHECK_UNIQUE_ENNAME:
			return roleService.checkEnglishNameUnique(param);
		case CHECK_ROLE_IS_USING:
			return roleService.checkRoleIsUsing(param);
		case GET_ROLE_BY_ENGLISH_NAME:
			return roleService.getRoleByEnglishName(param);
		case GET_ROLES_BY_CATEGORY:
			return roleService.getRolesByCategory(param);

			// privilege
		case CREATE_PRIVILEGE:
			return privilegeService.createPrivilege(param);
		case UPDATE_PRIVILEGE:
			return privilegeService.updatePrivilege(param);
		case GET_PRIVILEGE_BY_ID:
			return privilegeService.getPrivilegeById(param);
		case DELETE_PRIVILEGE:
			return privilegeService.deletePrivilege(param);
		case GET_ALL_PRIVILEGES:
			return privilegeService.getAllPrivileges(param);
		case GRANT_PRIVILEGES_TO_ROLE:
			return privilegeService.grantPrivilegesToRole(param);
		case REVOKE_USER_PRIVILEGES:
			return privilegeService.revokeUserPrivileges(param);
		case GET_PRIVILEGES_BY_ROLE_ID:
			return privilegeService.getPrivilegesByRoleId(param);
		case GET_PRIVILEGES_BY_USER_ID: 
			return privilegeService.getPrivilegesByUserId(param);
		case GET_USERS_BY_PRIVILEGE_ID:
			return privilegeService.getUsersByPrivilegeId(param);
		case DELETE_ROLE_PRIVILEGES:
			return privilegeService.deleteRolePrivileges(param);
		case DELETE_USER_REVOKED_PRIVILEGES:
			return privilegeService.deleteUserRevokedPrivileges(param);
		case CHECK_TOKEN_UNIQUE:
			return privilegeService.checkTokenUnique(param);
		case GET_PRIVILEGES_BY_CATEGORY:
			return privilegeService.getPrivilegesByCategory(param);

//			DanymicPasswordCard
//			动态卡的操作
		case CREATE_CARD:
			return dynamicPasswordCardService.createCard(param);
		case UPDATE_CARD:
			return dynamicPasswordCardService.modifyCard(param);
		case GET_ALL_CARDS:
			return dynamicPasswordCardService.getAllCards(param);
		case GET_CARD_BY_ID:
			return dynamicPasswordCardService.getCardById(param);
		case GET_CARD_BY_CARDNUMBER:
			return dynamicPasswordCardService.getCardByCardNumber(param);
		case IS_QUERY_BY_CARDNUMBER:
			return dynamicPasswordCardService.isQueryByCardNumber(param);
		case IS_QUERY_CARD_BY_ID:
			return dynamicPasswordCardService.isQueryById(param);
			
		case GET_CARDS_BY_CID:
			return dynamicPasswordCardService.getCardsByCompany(param);
		case OPEN_CARD:
			return dynamicPasswordCardService.openNewCard(param);
		case GET_USER_CARD_BY_UID:
			return dynamicPasswordCardService.getUserBoundCard(param);
		case IS_CARD_BY_CID_AND_ID:
			return dynamicPasswordCardService.isCardByCardIdAndCompany(param);
		case IS_USER_CARD_BY_UID:
			return dynamicPasswordCardService.isUserCardByUID(param);
		case BIND_USER:
			return dynamicPasswordCardService.bindUser(param);
		case IS_FEE_CARD_BY_COMPANY:
			return dynamicPasswordCardService.isFeeCardByCompany(param);
		case SET_AS_FEE_UPDATE_CARD:
			return dynamicPasswordCardService.setAsFeeCard(param);
		case GET_FEE_CARD_BY_CID:
			return dynamicPasswordCardService.getFeeCardByCompany(param);
		case CHECK_CARD:
			return dynamicPasswordCardService.checkPassword(param);
		case ACTIVATE_CARD:
			return dynamicPasswordCardService.activateCard(param);
		case GET_ASSOCIATE_BY_CARD_ID:
			return dynamicPasswordCardService.getAssociateByCardId(param);
		case GET_CARD_BY_CID_CARDID:
			return dynamicPasswordCardService.getCardByCompanyIdAndCardId(param);
		case GET_ALL_ACTIVE_CARD:
			return dynamicPasswordCardService.getAllActiveCards(param);
		case UPDATE_UNBOND_USER:
			return dynamicPasswordCardService.updateUnbondUser(param);
		case CHECK_CARDNUMBER:
			return dynamicPasswordCardService.checkCardNumber(param);
			
		case CREATE_SYSADMINUSER:
			return adminUserService.createSysAdminUser(param);
		case UPDATE_SYSADMINUSER:
			return adminUserService.updateAdminUser(param);
		case DELETE_SYSADMINUSER:
			return adminUserService.deleleUser(param);
		case VALIDATE_SYSADMINUSER:
			return adminUserService.authenticate(param);
		case GET_ADMINUSER_BY_ID:
			return adminUserService.getAdminUser(param);
		case GET_ALL_ADMINUSER:
			return adminUserService.getAllSysAdminUser(param);
		case GET_BY_LOGINID:
			return adminUserService.getAdminUserByLoginId(param);
		case UPDATE_PASSWORD:
			return adminUserService.updateAdminUserPassWord(param);
		case ISLOGINID_UNIQUE:
			return adminUserService.checkUserLoginId(param);
			
			
		default:
			return new ErrorResponse(MessageTips.ILLEGAL_ACTION);
		}
	}

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public CompanyService getCompanyService() {
		return companyService;
	}

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	public DepartmentService getDepartmentService() {
		return departmentService;
	}

	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public void setPrivilegeService(PrivilegeService privilegeService) {
		this.privilegeService = privilegeService;
	}
	
	public void setDynamicPasswordCardService(
			DynamicPasswordCardService dynamicPasswordCardService) {
		this.dynamicPasswordCardService = dynamicPasswordCardService;
	}


	public void setAdminUserService(SysAdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}
	
	
	
}
