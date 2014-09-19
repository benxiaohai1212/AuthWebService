/**
 * China-Ops Inc. All Rights Reserved.
 * Author: ljyang
 * 2011-3-29 上午11:08:57
 */
package com.chinaops.ecloud.racenter.dao;

import java.sql.Timestamp;
import java.util.List;

import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.CompanyList2;
/**
 * 公司持久层实接口
 * @author wb
 */
public interface ICompanyDao {
	/**
	 * Get all companies. NOTE: Only System Operator can call this method.
	 * 
	 * @return
	 */
	List<Company> getAllCompanies();

	List<Company> getCompaniesByIds(List<Integer> ids);

	Company addCompany(Company newCompany);

	boolean updateCompany(Company company);

	/**
	 * Check company name uniqueness.
	 * 
	 * @param companyName
	 * @return true: company name is unique.
	 */
	boolean isNameUnique(String companyName,Integer id);

	/**
	 * Check company suffix uniqueness.
	 * 
	 * @param companySuffix
	 * @return true: company suffix is unique.
	 */
	boolean isSuffixUnique(String companySuffix);

	/**
	 * Get a company by its ID.
	 * 
	 * @param companyId
	 * @return
	 */
	Company getCompanyById(int companyId);
	
	boolean updateIsFirstLogin(Company company);
	
	//根据公司名称模糊搜索：
	List<Company> searchByCompanyName(String name);
	
	CompanyList2 searchByCompanyName(String name,Integer pageNo, Integer countPerPage);
	
	
	CompanyList2 getAllCompaniesByPage(Integer pageNo, Integer countPerPage);
	
	
	List<Company> getCompanyByTime(Timestamp start, Timestamp end);
}
