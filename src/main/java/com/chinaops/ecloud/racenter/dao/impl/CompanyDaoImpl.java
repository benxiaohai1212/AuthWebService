/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-29 上午11:11:07
 */
package com.chinaops.ecloud.racenter.dao.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.chinaops.ecloud.racenter.dao.ICompanyDao;
import com.chinaops.ecloud.racenter.dao.RaBaseDao;
import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.CompanyList2;

/**
 * 公司持久层实现
 * @author wb
 */
public class CompanyDaoImpl extends RaBaseDao implements ICompanyDao {
	//创建公司语句
	private static String CREATE_COMANY = "insert into company(name,mark,contact,address,status,createtime,enable_dynamic_password_card,contact_person,contact_cell_phone,contact_phone,contact_email,domain_name,logo_img,footer,IsOpenDept) "+ " values(?,?,?,?,?,sysdate(),?,?,?,?,?,?,?,?,?)";
	//修改公司语句
	private static String UPDATE_COMPANY = "update company set name=?, mark=?, contact=?, address=?, status=?,createtime=sysdate(), enable_dynamic_password_card=?, contact_person=?, contact_cell_phone=?, contact_phone=?, contact_email=? ,domain_name=?,logo_img=?,footer=? where id=? ";
	//查询公司
	private static String GET_ALL_COMPANY = "select id,name,mark,address,status,createtime,contact,enable_dynamic_password_card,IsFirstLogin,contact_person,contact_cell_phone,contact_phone,contact_email,domain_name,logo_img,footer,IsOpenDept from company order by id desc ";
	//根据id查询公司
	private static String GET_COMPANY_BY_ID = " select * from company  where id = ?";
	//根据公司名称获取记录数
	private static String CHECK_NAME_UNIQUE = "select count(1) from company where name=?";
	//根据公司标记获取记录数
	private static String CHECK_SUFFIX_UNIQUE = "select count(1) from company where mark=?";
    //修改IsFirstLogin不在是第一次登录：
	private static String UPDATE_ISFIRSTLOGIN = " update company set IsFirstLogin=? where id = ?";
	      
	
	private static String SEARCH_BY_COMPANY_NAME = " select * from company ";
	
	private static String GET_COMPANY_COUNT = "select count(*) from company";
	
	private static String SELECT_COMPANY_BY_CREATETIME = "select * from company where createtime>=? and createtime<=? ";
	/* (non-Javadoc)获取所有公司
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#getAllCompanies()
	 */
	public List<Company> getAllCompanies() {
		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_COMPANY);
			if (list == null || list.size() == 0)
				return null;

			List<Company> result = new ArrayList<Company>();
			for (Map<String, Object> map : list) {
				Company c = mapToCompany(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	/* (non-Javadoc)创建公司
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#addCompany(com.chinaops.ecloud.racenter.entity.Company)
	 */
	public Company addCompany(Company c) {
		KeyHolder kh = new GeneratedKeyHolder();
		int ret = saveObjAndReturnIncId(CREATE_COMANY, kh, c.getName(), c.getSuffix(), c.getContact(), c.getAddress(),
				c.getStatus(),c.getEnable_dynamic_password_card(),c.getContact_person(),
				c.getContact_cell_phone(),c.getContact_phone(),c.getContact_email(),c.getDomain_name(),c.getLogo_img(),
				c.getFooter(),c.getIsOpenDept());
		if (ret == 1) {
			c.setId(kh.getKey().intValue());
			return c;
		}
		return null;
	}

	/* (non-Javadoc)修改公司
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#updateCompany(com.chinaops.ecloud.racenter.entity.Company)
	 */
	public boolean updateCompany(Company c) {
		Integer id = c.getId();
		Company oldCmpy = getCompanyById(id);
		if (oldCmpy == null)
			return false;
		if (StringUtils.isEmpty(c.getName()))
			c.setName(oldCmpy.getName());
		if (StringUtils.isEmpty(c.getSuffix()))
			c.setSuffix(oldCmpy.getSuffix());
		if (StringUtils.isEmpty(c.getContact()))
			c.setContact(oldCmpy.getContact());
		if (StringUtils.isEmpty(c.getAddress()))
			c.setAddress(oldCmpy.getAddress());
		if (StringUtils.isEmpty(c.getStatus()))
			c.setStatus(oldCmpy.getStatus());
        if(StringUtils.isEmpty(c.getContact_person()))
            c.setContact_person(oldCmpy.getContact_person());
        if(StringUtils.isEmpty(c.getContact_cell_phone()))
            c.setContact_cell_phone(oldCmpy.getContact_cell_phone());
        if(StringUtils.isEmpty(c.getContact_phone()))
            c.setContact_phone(oldCmpy.getContact_phone());
        if(StringUtils.isEmpty(c.getContact_email()))
            c.setContact_email(oldCmpy.getContact_email());
        
        if(StringUtils.isEmpty(c.getDomain_name()))
        	c.setDomain_name(oldCmpy.getDomain_name());
        if(StringUtils.isEmpty(c.getLogo_img()))
        	c.setLogo_img(oldCmpy.getLogo_img());
        if(StringUtils.isEmpty(c.getFooter()))
        	c.setFooter(oldCmpy.getFooter());
        
		int ret = getSimpleJdbcTemplate().update(UPDATE_COMPANY, c.getName(), c.getSuffix(), c.getContact(),
				c.getAddress(), c.getStatus(), c.getEnable_dynamic_password_card(), c.getContact_person(),
				c.getContact_cell_phone(), c.getContact_phone(), c.getContact_email(),c.getDomain_name(),c.getLogo_img(),c.getFooter(), id);
		if (ret == 1)
			return true;
		return false;
	}

	/* (non-Javadoc) 根据公司名 查询该公司是否存在
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#isNameUnique(java.lang.String)
	 */
	public boolean isNameUnique(String companyName,Integer id) {
		try {
			int num = -1;
			if( id  == 0){
				num = getSimpleJdbcTemplate().queryForInt(CHECK_NAME_UNIQUE, companyName);
			}else{
				num = getSimpleJdbcTemplate().queryForInt(CHECK_NAME_UNIQUE +" and id <> ?", companyName,id);
			}			
			if (num == 0)
				return true;
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
		return false;
	}

	/* (non-Javadoc)根据公司标记 查询是否存在
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#isSuffixUnique(java.lang.String)
	 */
	public boolean isSuffixUnique(String companySuffix) {
		try {
			int num = getSimpleJdbcTemplate().queryForInt(CHECK_SUFFIX_UNIQUE, companySuffix);
			if (num == 0)
				return true;
		} catch (EmptyResultDataAccessException e) {
			return false;
		}
		return false;
	}

	/* (non-Javadoc)根据公司id查询
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#getCompanyById(int)
	 */
	public Company getCompanyById(int companyId) {
		try {
			List<Map<String, Object>> mapList = getSimpleJdbcTemplate().queryForList(GET_COMPANY_BY_ID, companyId);
			if (mapList != null && mapList.size() > 0) {
				for (Map<String, Object> map : mapList) {
					return mapToCompany(map);
				}
			}
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		return null;
	}

	/* (non-Javadoc)根据多id查询多公司
	 * @see com.chinaops.ecloud.racenter.dao.ICompanyDao#getCompaniesByIds(java.util.List)
	 */
	public List<Company> getCompaniesByIds(List<Integer> ids) {
		StringBuilder sb = new StringBuilder();
		sb.append(" where id in (");
		for (int i = 0; i < ids.size() - 1; i++) {
			sb.append(ids.get(i)).append(",");
		}
		sb.append(ids.get(ids.size() - 1)).append(")");

		try {
			List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(GET_ALL_COMPANY + sb.toString());
			if (list == null || list.isEmpty())
				return null;

			List<Company> result = new ArrayList<Company>();
			for (Map<String, Object> map : list) {
				Company c = mapToCompany(map);
				if (c != null)
					result.add(c);
			}
			return result;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public boolean updateIsFirstLogin(Company company) {
		Integer companyId=company.getId();
		Company oldCompany = getCompanyById(companyId);
		if (oldCompany == null)
			return false;			
		if (company.getIsFirstLogin() == 1) {
			company.setIsFirstLogin(oldCompany.getIsFirstLogin());
		}
		int ret = getSimpleJdbcTemplate().update(UPDATE_ISFIRSTLOGIN, company.getIsFirstLogin(),companyId);
		if (ret == 1)
			return true;
		
		return false;
	}
	
	/**
	 * //根据公司名称模糊搜索：
	 */
	public CompanyList2 searchByCompanyName(String name,Integer pageNo, Integer countPerPage){
		int count=0;
		count = getSimpleJdbcTemplate().queryForInt(GET_COMPANY_COUNT); 
		System.out.println("数据库中的总条数："+count);
		if (count <= 0)
			return null;
		int pages = (int) count / countPerPage;  //page总页数（共可分多少页）
		if (count > pages * countPerPage)
			pages++;		
		
		int offset = countPerPage * (pageNo - 1);		
		String limitClause = " limit " + offset + "," + countPerPage;	
		
		System.out.println("一共可分"+pages+"页。");
		List<Map<String, Object>> mapList = null;
		mapList = getSimpleJdbcTemplate().queryForList(SEARCH_BY_COMPANY_NAME +" where name like '%"+name+"%' order by id desc "+limitClause);
		if (mapList == null || mapList.size() == 0)
			return null;
		CompanyList2 result = new CompanyList2();
		result.setRecordCount(count);
		result.setPageNo(pageNo);
		result.setCountPerPage(countPerPage);
		for (Map<String, Object> map : mapList) {
			result.getList().add(mapToCompany(map));
		}
		return result;
		
	}
	
	public  List<Company> searchByCompanyName(String name){
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(SEARCH_BY_COMPANY_NAME +" where name like '%"+name+"%' order by id desc ");
		if (list == null || list.size() == 0){
			return null;
		}
		List<Company> result = new ArrayList<Company>();
		for (Map<String, Object> map : list) {
			Company c = mapToCompany(map);
			if (c != null)
				result.add(c);
		}
		return result;
	}
	
	/**
	 * 
	 * @param pageNo当前页
	 * @param countPerPage每页显示的条数
	 * @return
	 */
	public CompanyList2 getAllCompaniesByPage(Integer pageNo, Integer countPerPage){
		int count=0;
		count = getSimpleJdbcTemplate().queryForInt(GET_COMPANY_COUNT); 
		System.out.println("数据库中的总条数："+count);
		if (count <= 0)
			return null;
		int pages = (int) count / countPerPage;  //page总页数（共可分多少页）
		if (count > pages * countPerPage)
			pages++;		
		
		int offset = countPerPage * (pageNo - 1);		
		String limitClause = " limit " + offset + "," + countPerPage;	
		
		System.out.println("一共可分"+pages+"页。");
		List<Map<String, Object>> mapList = null;
		mapList = getSimpleJdbcTemplate().queryForList(GET_ALL_COMPANY+limitClause);
		if (mapList == null || mapList.size() == 0)
			return null;
		CompanyList2 result = new CompanyList2();
		result.setRecordCount(count);
		result.setPageNo(pageNo);
		result.setCountPerPage(countPerPage);
		for (Map<String, Object> map : mapList) {
			result.getList().add(mapToCompany(map));
		}
		return result;
		
	}
	
	
	public  List<Company> getCompanyByTime(Timestamp start, Timestamp end){	
		List<Map<String, Object>> list = getSimpleJdbcTemplate().queryForList(SELECT_COMPANY_BY_CREATETIME,start,end);
		if(list == null || list.size() == 0){
			return null;
		}
		List<Company> result = new ArrayList<Company>();
		for (Map<String, Object> map : list) {
			Company c= mapToCompany(map);
			if(c != null){
				result.add(c);
			}
		}
		return result;
	}
	
}
