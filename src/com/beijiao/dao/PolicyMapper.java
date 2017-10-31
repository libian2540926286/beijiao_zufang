/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Policy;

/**
 * @author cmy lh
 *time 11:11:38
 */
public interface PolicyMapper {

	/*
	 * selectPolicy
	 */
	public Policy selectPolicy(int policyId);
	public List<Policy> selectListPolicy();
	public List<Policy> selectAllPolicy();
	public List<Policy> selectPolicyType(String type);
	public List<Policy> selectPolicyArea(String area);
	public List<Policy> searchPlocy(String search);
	public List<Policy> searchIndustryPlocy(String pClassName);
	public List<Policy> getAllFile();
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
