/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-4-7 下午12:20:25
 */
package com.chinaops.ecloud.racenter.constant;

import java.util.HashMap;
import java.util.Map;

public enum ServiceName {
	//user
	CREATE_USER("create_user"),
	UPDATE_USER("update_user"),
	UPDATE_USER_PASSWORD("update_user_password"), //修改用户密码
	DELETE_USER("delete_user"),
	GET_USER_BY_ID("get_user_by_id"),
	GET_USERS_BY_CID("get_users_by_cid"),
	CHECK_USERNAME_BY_NAME("check_username_by_name"),
	GET_USER_BY_COMPANYID_AND_ROLE("get_user_by_companyid_and_role"),
    
	USER_UID_UNIQUE("user_uid_unique"),
	AUTHENTICATE("authenticate"),// core function
	UPDATE_USER_ROLE("update_user_role"),
	LOGIN_REGIESTER("login_regiester"),
	CHECK_LOGIN_ID("check_login_id"),
	GET_USER_BY_LOGINID("get_user_by_loginid"),
	GET_USER_BY_DEPT("get_user_by_dept"),

	// company
	CREATE_COMPANY("create_company"),
	UPDATE_COMPANY("update_company"),
	CNAME_UNIQUE("cname_unique"),
	CSUFFIX_UNIQUE("csuffix_unique"),
	GET_COMPANY_BY_ID("get_company_by_id"),
	GET_ALL_COMPANY("get_all_company"),
	GET_COMPANYS_BY_IDS("get_companys_by_ids"),
	UPDATE_ISFIRSETLOGIN("update_isfirstlogin"),  //
	GET_ALL_COMPANIES_BY_PAGE("get_all_companies_by_page"),
	//SEARCH_BY_COMPANY_NAME("search_by_company_name"),
	SELECT_COMPANY_BY_CREATETIME("select_company_by_createtime"),

	// department
	CREATE_DEPT("create_dept"),
	UPDATE_DEPT("update_dept"),
	DELETE_DEPT("delete_dept"),
	GET_DEPTS_BY_CID("get_depts_by_cid"),
	GET_DEPT_BY_ID("get_dept_by_id"),
	CHECK_DEPT_NAME("check_dept_name"),
	
	//role
	CREATE_ROLE("create_role"),
	UPDATE_ROLE("update_role"),
	DELETE_ROLE("delete_role"),
	GET_ALL_ROLES("get_all_roles"),
	CHECK_UNIQUE_ENNAME("check_unique_enname"),
	CHECK_ROLE_IS_USING("check_role_is_using"),
	GET_ROLE_BY_ENGLISH_NAME("get_role_by_english_name"),
	GET_ROLES_BY_CATEGORY("get_roles_by_category"),
	
	//privilege
	CREATE_PRIVILEGE("create_privilege"),
	UPDATE_PRIVILEGE("update_privilege"),
	DELETE_PRIVILEGE("delete_privilege"),
	GET_PRIVILEGE_BY_ID("get_privilege_by_id"),
	GET_ALL_PRIVILEGES("get_all_privileges"),
	GRANT_PRIVILEGES_TO_ROLE("grant_privileges_to_role"),
	GET_PRIVILEGES_BY_ROLE_ID("get_privileges_by_role_id"),
	REVOKE_USER_PRIVILEGES("revoke_user_privileges"),
	GET_PRIVILEGES_BY_USER_ID("get_privileges_by_user_id"),
	DELETE_ROLE_PRIVILEGES("delete_role_privileges"),
	GET_USERS_BY_PRIVILEGE_ID("get_users_by_privilege_id"),
	DELETE_USER_REVOKED_PRIVILEGES("delete_user_revoked_privileges"),
	CHECK_TOKEN_UNIQUE("check_token_unique"),
	GET_PRIVILEGES_BY_CATEGORY("get_privileges_by_category"),

	// DanymicPasswordCard
	CREATE_CARD("create_card"),
	UPDATE_CARD("update_card"),
	GET_CARD_BY_ID("get_card_by_id"),
	GET_CARD_BY_CARDNUMBER("get_card_by_cardNumber"),
	GET_ALL_CARDS("get_all_cards"),
	IS_QUERY_BY_CARDNUMBER("is_query_by_cardnumber"),
	IS_QUERY_CARD_BY_ID("is_query_card_by_id"),
	GET_CARD_BY_CID_CARDID("get_card_by_cid_cardid"),
	GET_ALL_ACTIVE_CARD("get_all_active_card"),
	
	//关联表操作
	GET_CARDS_BY_CID("get_cards_by_cid"),
	IS_CARD_BY_CID_AND_ID("is_card_by_cid_and_id"),
	OPEN_CARD("open_card"),
	IS_USER_CARD_BY_UID("is_user_card_by_uid"),
	BIND_USER("bind_user"),
	IS_FEE_CARD_BY_COMPANY("is_fee_card_by_company"),
	SET_AS_FEE_UPDATE_CARD("set_as_fee_update_card"),
	GET_FEE_CARD_BY_CID("get_fee_card_by_cid"),
	GET_USER_CARD_BY_UID("get_user_card_by_uid"),
	CHECK_CARD("check_card"),
	ACTIVATE_CARD("activate_card"),
	GET_ASSOCIATE_BY_CARD_ID("get_associate_by_card_id"),
	UPDATE_UNBOND_USER("update_unbond_user"),
	CHECK_CARDNUMBER("check_cardnumber"),
	
	//SysAdminUser
	CREATE_SYSADMINUSER("create_sysadminuser"),
	UPDATE_SYSADMINUSER("update_sysadminuser"),
	DELETE_SYSADMINUSER("delete_sysadminuser"),
	GET_ADMINUSER_BY_ID("get_adminuser_by_id"),
	GET_BY_LOGINID("get_by_loginid"),
	GET_ALL_ADMINUSER("get_all_adminuser"),
	UPDATE_PASSWORD("update_password"),
	ISLOGINID_UNIQUE("isloginid_unique"),
	VALIDATE_SYSADMINUSER("validate_sysadminuser"),
	
	
	
	// default
	NULL("null");
	 
	private final String name;

	private ServiceName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	private static Map<String, ServiceName> map = new HashMap<String, ServiceName>();

	static {
		for (ServiceName t : ServiceName.values()) {
			map.put(t.getName(), t);
		}
	}

	public static ServiceName getServiceName(String val) {
		ServiceName sn = map.get(val);
		if (sn != null)
			return sn;
		return NULL;
	}
}
