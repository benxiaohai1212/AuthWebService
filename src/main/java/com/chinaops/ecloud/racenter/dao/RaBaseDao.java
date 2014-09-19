/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-25 下午11:40:45
 */
package com.chinaops.ecloud.racenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Map;

import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.KeyHolder;

import com.chinaops.ecloud.pub.dao.BaseDao;
import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.Department;
import com.chinaops.ecloud.racenter.entity.DynamicPasswordCard;
import com.chinaops.ecloud.racenter.entity.Privilege;
import com.chinaops.ecloud.racenter.entity.Role;
import com.chinaops.ecloud.racenter.entity.SysAdminUser;
import com.chinaops.ecloud.racenter.entity.User;

public abstract class RaBaseDao extends BaseDao {

	/**
	 * 转换角色
	 * @param map
	 * @return
	 */
	protected Role mapToRole(Map<String, Object> map) {
		if (map == null || map.size() == 0)
			return null;
		Role role = new Role();
		role.setId((Integer) map.get("id"));
		role.setEnglishName((String) map.get("english_name"));
		role.setChineseName((String) map.get("chinese_name"));
		role.setDescription((String) map.get("description"));
		role.setCategory((String) map.get("category"));
		return role;
	}

	/**
	 * 转换公司
	 * @param map
	 * @return
	 */
	protected Company mapToCompany(Map<String, Object> map) {
		if (map == null || map.size() == 0)
			return null;
		Company company = new Company();
		company.setId((Integer) map.get("id"));
		company.setName((String) map.get("name"));
		company.setContact((String) map.get("contact"));
		company.setAddress((String) map.get("address"));
		Timestamp ct = (Timestamp) map.get("createtime");
		company.setCreateTime(ct.getTime());
		company.setStatus((String) map.get("status"));
		company.setSuffix((String) map.get("mark"));
		company.setEnable_dynamic_password_card((Integer) map.get("enable_dynamic_password_card"));
		company.setIsFirstLogin((Integer) map.get("IsFirstLogin"));
		company.setContact_person((String) map.get("contact_person"));
		company.setContact_cell_phone((String) map.get("contact_cell_phone"));
		company.setContact_phone((String) map.get("contact_phone"));
		company.setContact_email((String) map.get("contact_email"));
		
		company.setDomain_name((String) map.get("domain_name"));
		company.setLogo_img((String) map.get("logo_img"));
		company.setFooter((String) map.get("footer"));
		company.setIsOpenDept((Integer)map.get("IsOpenDept"));
		return company;
	}

	/**
	 * 转换部门
	 * @param map
	 * @return
	 */
	protected Department mapToDepartment(Map<String, Object> map) {
		if (map == null || map.size() == 0) {
			return null;
		}
		Department dept = new Department();
		dept.setId((Integer) map.get("id"));
		dept.setName((String) map.get("name"));
		dept.setCompanyId((Integer) map.get("company_id"));
		Timestamp ct = (Timestamp) map.get("systime");
		dept.setCreateTime(ct.getTime());
		return dept;
	}

	
	protected SysAdminUser mapToSysAdminUser(Map<String, Object> map){
		if (map == null || map.size() == 0) {
			return null;
		}
		SysAdminUser adminUser = new SysAdminUser();
		adminUser.setId((Integer) map.get("id"));
		adminUser.setLoginId((String) map.get("login_id"));
		adminUser.setUsername((String) map.get("username"));
		adminUser.setPassword((String) map.get("passwd"));		
		adminUser.setRoleName((String) map.get("rolename"));
		adminUser.setIsEncrypt((Integer) map.get("is_encrypt"));
		Timestamp ct = (Timestamp) map.get("create_time");
		if (ct != null)
			adminUser.setCreateTime(ct.getTime());

		return adminUser;
		
	}
	
	
	
	
	/**
	 * 转换用户
	 * @param map
	 * @return
	 */
	protected User mapToUser(Map<String, Object> map) {
		if (map == null || map.size() == 0) {
			return null;
		}
		User user = new User();
		user.setId((Integer) map.get("id"));
		user.setLoginId((String) map.get("login_id"));
		user.setUsername((String) map.get("username"));
		user.setPassword((String) map.get("passwd"));

		user.setCompanyId((Integer) map.get("company_id"));
		user.setDepartmentId((Integer) map.get("department_id"));
		user.setDepartmentName((String) map.get("department_name"));

		user.setLastLoginIP((String) map.get("last_login_ip"));

		Timestamp ct = (Timestamp) map.get("create_time");
		if (ct != null)
			user.setCreateTime(ct.getTime());

		Timestamp ut = (Timestamp) map.get("last_update_time");
		if (ut != null)
			user.setLastUpdateTime(ut.getTime());

		Timestamp logtime = (Timestamp) map.get("last_login_time");
		if (logtime != null)
			user.setLastLoginTime(logtime.getTime());

		user.setRole((String) map.get("rolename"));
		String status = (String) map.get("status");
		user.setStatus(status == null || status.equals("0") ? false : true);

		return user;
	}

	/**
	 * 转换权限
	 * @param map
	 * @return
	 */
	protected Privilege mapToPrivilege(Map<String, Object> map) {
		if (map == null || map.size() == 0) {
			return null;
		}
		Privilege priv = new Privilege();
		priv.setId((Integer) map.get("id"));
		priv.setName((String) map.get("name"));
		priv.setToken((String) map.get("token"));
		priv.setLevel((String) map.get("level"));
		priv.setUrl((String) map.get("url"));
		priv.setGroup((String) map.get("group"));
		priv.setCategory((String) map.get("category"));
		Integer sign = (Integer) map.get("signs");
		priv.setSign(sign);
		priv.setSn((Integer) map.get("sn"));
		priv.setTooltip((String)map.get("tooltip"));
		return priv;
	}


	
	/**
	 * 转换动态卡
	 * @param map
	 * @return
	 */
	protected DynamicPasswordCard mapToDynamicPasswordCard(Map<String, Object> map) {
		if (map == null || map.size() == 0)
			return null;
		DynamicPasswordCard card = new DynamicPasswordCard();
//		动态口令卡
		if((Integer)map.get("id") != null){
			card.setId((Integer) map.get("id"));
		}
		if((String)map.get("card_number") != null){
			card.setCardNumber((String) map.get("card_number"));
		}
		if((String)map.get("seed") != null){
			card.setSeed((String) map.get("seed"));
		}
		if((Integer)map.get("state") != null){
			card.setState((Integer) map.get("state"));
		}
		if((Integer)map.get("continuous_failure") != null){
			card.setFailure((Integer)map.get("continuous_failure"));
		}
		if((Integer)map.get("last_success") != null){
			card.setiDrift((Integer)map.get("last_success"));
		}
		if((Integer)map.get("drift") != null){
			card.setlSucc((Integer)map.get("drift"));
		}
		
//		动态口令卡关联表
		if((Integer)map.get("user_id") != null){
			card.setUserId((Integer)map.get("user_id"));
		}
		if((Integer)map.get("company_id") != null){
			card.setCompanyId((Integer)map.get("company_id"));
		}
		if((Integer)map.get("active") != null){
			card.setActive((Integer)map.get("active"));
		}
		if(map.get("activetime") != null){
			Timestamp ct = (Timestamp) map.get("activetime");
			card.setActivetime(ct.getTime());
		}		
		if((Integer)map.get("fee_card") != null){
			card.setFeeCard((Integer)map.get("fee_card"));
		}
		if((Integer)map.get("ccid") != null){  // 关联表的ID
			card.setCcId((Integer)map.get("ccid"));
		}
		
		return card;
	}
	
	public int saveObjAndReturnIncId(final String sql, KeyHolder kh, final Object... args) {
		return getSimpleJdbcTemplate().getJdbcOperations().update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
				PreparedStatement ps = conn.prepareStatement(sql);
				int idx = 1;
				for (Object arg : args) {
					ps.setObject(idx++, arg);
				}
				return ps;
			}
		}, kh);
	}

}
