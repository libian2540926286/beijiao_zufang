/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.CompanyMapper;
import com.beijiao.model.Company;
import com.beijiao.service.CompanyService;

/**
 * @author cmy
 *ÉÏÎç11:26:15
 */
@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

	@Resource
	private CompanyMapper companyMapper;
	
	/* (non-Javadoc)
	 * @see com.beijiao.service.CompanyService#selectCompany(int)
	 */
	@Override
	public Company selectCompany(int companyId) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompany(companyId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.CompanyService#selectListComany()
	 */
	@Override
	public List<Company> selectListComany() {
		// TODO Auto-generated method stub
		return companyMapper.selectListComany();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.CompanyService#addCompany(com.beijiao.model.Company)
	 */
	@Override
	public int addCompany(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.addCompany(company);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.CompanyService#changeCompany(com.beijiao.model.Company)
	 */
	@Override
	public int changeCompany(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.changeCompany(company);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.CompanyService#deleteComapany(int)
	 */
	@Override
	public int deleteComapany(int companyId) {
		// TODO Auto-generated method stub
		return companyMapper.deleteComapany(companyId);
	}

}
