/**
 * 
 */
package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
	public int getRecordCount();
	public List<Policy> selectPolicyType(String type);
	public List<Policy> selectPolicyType1(@Param("type") String type,@Param("startPos") Integer startPos,@Param("pageSize") Integer pageSize);
	public int getRecordCountPlocyDrade(String type);
	public List<Policy> selectPolicyArea(String area);
	public List<Policy> searchPolicy(@Param("search") String search,@Param("startPos") Integer startPos,@Param("pageSize") Integer pageSize);
	public int getRecordCountSearch(String search);
	public List<Policy> searchIndustryPlocy(@Param("pClassName") String pClassName,@Param("startPos") Integer startPos,@Param("pageSize") Integer pageSize);
	public int getRecordCountIndustryPlocy(String pClassName);
	public List<Policy> getAllFile(Map map);	
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
