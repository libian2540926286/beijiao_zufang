/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Policy;

/**
 * @author cmy lh
 *time 11:15:37
 */
public interface PolicyService {


	/*
	 * search
	 */
	
	public Policy selectPolicy(int policyId);
	public List<Policy> selectListPolicy();
	public List<Policy> selectAllPolicy();
	public List<Policy> selectPolicyType(String type);
	public List<Policy> selectPolicyArea(String area);
	public List<Policy> searchPlocy(String search);
	public List<Policy> searchIndustryPlocy(String  pClassName);
	public List<Policy> getAllFile(Map map);
	public int getRecordCount();
	public List<Policy> getLimitFile();
	public Policy getFile(int policyId);
	/*
	 * addPolicy
	 */
	public int addPolicy(Policy policy);
	/*
	 * deletePolicy
	 */
	public int deletePolicy(int policyId);
	/*
	 * changePolicy
	 */
	public int changePolicy(String policyContent);
}
