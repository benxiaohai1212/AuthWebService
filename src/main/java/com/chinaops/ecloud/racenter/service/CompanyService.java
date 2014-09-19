package com.chinaops.ecloud.racenter.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.chinaops.ecloud.pub.constant.MessageTips;
import com.chinaops.ecloud.pub.entity.ErrorResponse;
import com.chinaops.ecloud.pub.entity.ResponseResult;
import com.chinaops.ecloud.pub.entity.SimpleResponse;
import com.chinaops.ecloud.pub.service.BaseService;
import com.chinaops.ecloud.racenter.dao.ICompanyDao;
import com.chinaops.ecloud.racenter.entity.Company;
import com.chinaops.ecloud.racenter.entity.CompanyList;
import com.chinaops.ecloud.racenter.entity.CompanyList2;

/**
 * 公司服务类
 * @author wb
 */
@Service
public class CompanyService extends BaseService {
	private ICompanyDao companyDao;

	public ICompanyDao getCompanyDao() {
		return companyDao;
	}

	public void setCompanyDao(ICompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	/**
	 * 根据id获取公司
	 */
	public ResponseResult getCompany(Map<String, Object> param) {
		Integer id = Integer.parseInt((String) param.get("id"));
		if (id == null) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		}
		Company company = companyDao.getCompanyById(id);
		if (company == null)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		else
			return company;
	}

	/**
	 * 获取所有公司
	 */

	public ResponseResult getAllCompanies(Map<String, Object> param) {	
		String name = (String) param.get("name");
		List<Company> list = new ArrayList<Company>();
		if(name == null ){
			list = companyDao.getAllCompanies();
		}else {
			list = companyDao.searchByCompanyName(name);
		}		
		if (list == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		else {
			CompanyList result = new CompanyList();
			result.getList().addAll(list);
			return result;
		}
	}

	/**
	 * 验证公司名
	 */
	public ResponseResult checkNameUnique(Map<String, Object> param) {
		String name = (String) param.get("name");
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(name))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: name can't be null.");
		int id_temp =0 ;
		if(id != null){
			id_temp = Integer.valueOf(id);
		}
		boolean ret = companyDao.isNameUnique(name,id_temp);
		return boolToResponseResult(ret);
	}

	/**
	 * 验证suffix
	 */
	public ResponseResult checkSuffixUnique(Map<String, Object> param) {
		String suffix = (String) param.get("suffix");
		if (StringUtils.isEmpty(suffix))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: suffix can't be null.");
		boolean ret = companyDao.isSuffixUnique(suffix);
		return boolToResponseResult(ret);
	}

	/**
	 * 创建公司
	 */
	public ResponseResult createCompany(Map<String, Object> param) {
		String name = (String) param.get("name");
	//	String contact = (String) param.get("contact");  //联系内容。。
		String address = (String) param.get("address");
	//	String suffix = (String) param.get("suffix");  //公司标志
		String status = (String) param.get("status");
		String enable_dynamic_password_card = (String)param.get("enable_dynamic_password_card");
        String contact_person=(String) param.get("contact_person");
        String contact_cell_phone=(String) param.get("contact_cell_phone");
        String contact_phone=(String) param.get("contact_phone");
        String contact_email=(String) param.get("contact_email");
        
        String domain_name=(String) param.get("domain_name");
        String logo_img=(String) param.get("logo_img");
        String footer=(String) param.get("footer");
        String isOpenDept = (String)param.get("isopendept");
        //StringUtils.isEmpty(suffix)||
		if (StringUtils.isEmpty(name)||
				StringUtils.isEmpty(address)||StringUtils.isEmpty(enable_dynamic_password_card)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: name,suffix,address,enable_dynamic_password_card," +
					"all can't be null.");
		}
		if (StringUtils.isEmpty(status))
			status = "1";

		Company c = new Company();
		c.setName(name);
		//c.setSuffix(suffix);
//		c.setContact(contact);
		c.setAddress(address);
		c.setStatus(status);
		c.setEnable_dynamic_password_card(Integer.parseInt(enable_dynamic_password_card));
        c.setContact_person(contact_person);
        c.setContact_cell_phone(contact_cell_phone);
        c.setContact_phone(contact_phone);
        c.setContact_email(contact_email);
        
        c.setDomain_name(domain_name);
		c.setLogo_img(logo_img);
		c.setFooter(footer);
		c.setIsOpenDept(Integer.parseInt(isOpenDept));
		Company cmpy = companyDao.addCompany(c);	
		if (cmpy != null)
			return cmpy;
		else
			return new ErrorResponse(MessageTips.FAILED);
	}

	/**
	 * 修改公司
	 */
	public ResponseResult updateCompany(Map<String, Object> param) {
		String name = (String) param.get("name");
		//String contact = (String) param.get("contact");
		String address = (String) param.get("address");
		//String suffix = (String) param.get("suffix");
		String status = (String) param.get("status");
		String enable_dynamic_password_card = (String)param.get("enable_dynamic_password_card");
		String contact_person=(String) param.get("contact_person");
	    String contact_cell_phone=(String) param.get("contact_cell_phone");
	    String contact_phone=(String) param.get("contact_phone");
	    String contact_email=(String) param.get("contact_email");
		String id = (String) param.get("id");
		
		String domain_name=(String) param.get("domain_name");
        String logo_img=(String) param.get("logo_img");
        String footer=(String) param.get("footer");
        
		//StringUtils.isEmpty(suffix)||
		if (StringUtils.isEmpty(id))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		if (StringUtils.isEmpty(name)||
				StringUtils.isEmpty(address)|| StringUtils.isEmpty(enable_dynamic_password_card)) {// StringUtils.isEmpty(contact)||
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: name,suffix,address,enable_dynamic_password_card," +
					"all can't be null.");
		}
		
		if (StringUtils.isEmpty(status))
			status = "1";
		Company c = new Company();
		c.setId(Integer.parseInt(id));
		c.setName(name);
	//	c.setSuffix(suffix);
//		c.setContact(contact);
		c.setAddress(address);
		c.setStatus(status);
		c.setEnable_dynamic_password_card(Integer.parseInt(enable_dynamic_password_card));
		c.setContact_person(contact_person);
	    c.setContact_cell_phone(contact_cell_phone);
	    c.setContact_phone(contact_phone);
	    c.setContact_email(contact_email);
	    
	    c.setDomain_name(domain_name);
		c.setLogo_img(logo_img);
		c.setFooter(footer);
		
		boolean ret = companyDao.updateCompany(c);
		return boolToResponseResult(ret);
	}
	
	public ResponseResult updateFirstLogin(Map<String, Object> param) {
		String isFirstLogin = (String) param.get("is_firstlogin");		
		String id = (String) param.get("id");
		if (StringUtils.isEmpty(id))
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: id can't be null.");
		if (StringUtils.isEmpty(isFirstLogin)) {
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: isFirstLogin Can't be null.");
		}
		
		Company c = new Company();
		c.setId(Integer.valueOf(id));
		c.setIsFirstLogin(Integer.valueOf(isFirstLogin));
		boolean ret = companyDao.updateIsFirstLogin(c);
		return boolToResponseResult(ret);
	}

	/**
	 * 根据id查询
	 */
	public ResponseResult getCompanysByIds(Map<String, Object> param) {
		List<String> companyIds = getListFromMap(param, "id");
		if (companyIds == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: one id is needed at least!");
		List<Integer> ids = new ArrayList<Integer>();
		for (String s : companyIds)
			ids.add(Integer.parseInt(s));
		List<Company> list = companyDao.getCompaniesByIds(ids);
		if (list == null)
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		CompanyList clist = new CompanyList();
		clist.setList(list);
		return clist;
	}
	
/*	*//**	/*	
	 * //根据公司名称模糊搜索：
	 * @param param
	 * @return
	 *//*
	public ResponseResult searchByCompanyName(Map<String, Object> param){
		String name = (String) param.get("name");
		List<Company> list = companyDao.searchByCompanyName(name);
		if(list == null ){
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		}
		else {
			CompanyList result = new CompanyList();
			result.getList().addAll(list);
			return result;
		}
	}
	**/	
	
	public ResponseResult getAllCompaniesByPage(Map<String, Object> param){
	
		String name = (String) param.get("name");
		
		 //当前页，每页显示的条数：
		String pageNo = (String) param.get("pageno");
		String countPerPage = (String) param.get("countperpage");
		
		if (pageNo == null || countPerPage == null)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: all pageNo & countPerPage can't be null.");
		
		int ipageNo = Integer.parseInt(pageNo);
		int icountPerPage = Integer.parseInt(countPerPage);
		
		
		if (ipageNo <= 0)
			return new ErrorResponse(MessageTips.CUSTOM_ERROR, "Error: pageNo can't be <= 0.");
		
		//调分页查询方法：!!!!
		CompanyList2 result = new CompanyList2();
		if(name == null ){
			result = companyDao.getAllCompaniesByPage(ipageNo, icountPerPage);
		}else {		
			result = companyDao.searchByCompanyName(name, ipageNo, icountPerPage);
		}
		//CompanyList2 result = companyDao.getAllCompaniesByPage(ipageNo, icountPerPage);
		if (result == null || result.getList().size() == 0)
			return new SimpleResponse(MessageTips.SUCCESS_BUT_NODATA);
		else
			return result;		
		}
	
	
	public ResponseResult getCompanyByTime(Map<String, Object> param){
		String start = (String) param.get("start");
		String end = (String) param.get("end");
		// 转格式
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Timestamp st = null, en = null;
		if (start != null) {
			try {
				java.util.Date s= df.parse(start);
				st = new Timestamp(s.getTime());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		if (end != null) {
			try {
				java.util.Date e= df.parse(end);
				en= new Timestamp(e.getTime());
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}			
		}
		List<Company> list = companyDao.getCompanyByTime(st, en);
		if(list == null ){
			return new ErrorResponse(MessageTips.SUCCESS_BUT_NODATA);
		}
		CompanyList clist = new CompanyList();
		clist.setList(list);
		return clist;
		
	}
	
	
}
