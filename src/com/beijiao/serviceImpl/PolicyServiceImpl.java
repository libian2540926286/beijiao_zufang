/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.PolicyMapper;
import com.beijiao.model.Policy;
import com.beijiao.service.PolicyService;

/**
 * @author cmy lh
 *����11:28:37
 */
@Service(" policyService")
public class PolicyServiceImpl implements PolicyService {

	@Resource
	private PolicyMapper policyMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#selectPolicy(int)
	 */
	@Override
	public Policy selectPolicy(int policyId) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicy(policyId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#selectListPolicy()
	 */
	@Override
	public List<Policy> selectListPolicy() {
		// TODO Auto-generated method stub
		return policyMapper.selectListPolicy();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#addPolicy(com.beijiao.model.Policy)
	 */
	@Override
	public int addPolicy(Policy policy) {
		// TODO Auto-generated method stub
		return policyMapper.addPolicy(policy);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#deletePolicy(int)
	 */
	@Override
	public int deletePolicy(int policyId) {
		// TODO Auto-generated method stub
		return policyMapper.deletePolicy(policyId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#changePolicy(java.lang.String)
	 */
	@Override
	public int changePolicy(String policyContent) {
		// TODO Auto-generated method stub
		return policyMapper.changePolicy(policyContent);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#searchPlocy(java.lang.String)
	 */
	@Override
	public List<Policy> searchPolicy(String search,Integer startPos,Integer pageSize) {
		// TODO Auto-generated method stub
		return policyMapper.searchPolicy(search,startPos,pageSize);
	}
	@Override
	public int getRecordCountSearch(String search) {
		// TODO Auto-generated method stub
		return policyMapper.getRecordCountSearch(search);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#selectAllPolicy()
	 */
	@Override
	public List<Policy> selectAllPolicy(Map map) {
		// TODO Auto-generated method stub
		return policyMapper.selectAllPolicy(map);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#selectPolicyType(int)
	 */
	@Override
	public List<Policy> selectPolicyType(String type) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicyType(type);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolicyService#searchIndustryPlocy(int)
	 */
	@Override
	public List<Policy> searchIndustryPlocy(String  pClassName,Integer startPos,Integer pageSize) {
		// TODO Auto-generated method stub
		return policyMapper.searchIndustryPlocy(pClassName,startPos,pageSize);
	}

	@Override
	public List<Policy> selectPolicyArea(String area) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicyArea(area);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return policyMapper.getRecordCount();
	}

	@Override
	public int getRecordCountIndustryPlocy(String pClassName) {
		// TODO Auto-generated method stub
		return policyMapper.getRecordCountIndustryPlocy(pClassName);
	}

	@Override
	public int getRecordCountPlocyDrade(String type) {
		// TODO Auto-generated method stub
		return policyMapper.getRecordCountPlocyDrade(type);
	}

	@Override
	public List<Policy> selectPolicyType1(String type, Integer startPos,
			Integer pageSize) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicyType1(type, startPos, pageSize);
	}

	@Override
	public List<Policy> getLatestPolicy(String polTime) {
		// TODO Auto-generated method stub
		return policyMapper.getLatestPolicy(polTime);
	}

	
	/*
	 * webapp
	 */
	@Override
	public List<Policy> selectAllPolicy_app() {
		// TODO Auto-generated method stub
		return policyMapper.selectAllPolicy_app();
	}

	@Override
	public List<Policy> selectPolicyType_app(String type) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicyType_app(type);
	}


	@Override
	public List<Policy> selectPolicyArea_app(String area) {
		// TODO Auto-generated method stub
		return policyMapper.selectPolicyArea_app(area);
	}

	@Override
	public List<Policy> searchIndustryPlocy_app(String pClassName) {
		// TODO Auto-generated method stub
		return policyMapper.searchIndustryPlocy_app(pClassName);
	}

	@Override
	public List<Policy> searchPolicy_app(String search) {
		// TODO Auto-generated method stub
		return policyMapper.searchPolicy_app(search);
	}

	@Override
	public List<Policy> getLatestPolicy_app(String polTime) {
		// TODO Auto-generated method stub
		return policyMapper.getLatestPolicy_app(polTime);
	}




}
