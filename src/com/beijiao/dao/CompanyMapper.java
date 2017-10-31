/**
 * 
 */
package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Company;

/**
 * @author cmy
 *上午11:11:38
 */
public interface CompanyMapper {

	
	
	/*
	 * 查询企业
	 */
	public Company selectCompany(int companyId);
	
	public List<Company> selectListComany();
	/*
	 * 添加孵化企业
	 */
    public int addCompany(Company company);
	
	/*
	 * 修改企业信息
	 */
	public int changeCompany(Company company);
	/*
	 * 删除企业信息
	 */
	public int deleteComapany(int companyId);
}
