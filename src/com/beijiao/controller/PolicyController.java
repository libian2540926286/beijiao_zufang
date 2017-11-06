/**
 * 
 */
package com.beijiao.controller;


import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.PClass;
import com.beijiao.model.Policy;
import com.beijiao.service.PClassService;
import com.beijiao.service.PolicyService;

/**
 * @author cmy lh
 *time 4:54:52
 */
@Controller
@RequestMapping("/policy")
public class PolicyController {

	@Resource
	private PolicyService policyService;
	@Resource
	private PClassService pClassService;
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	
	/*topolicy*/
	@RequestMapping("toPolicy")
	public String selectPolicy(int policyId,Model model){
		Policy policy=policyService.selectPolicy(policyId);
		model.addAttribute("policy", policy);		
		return "policy";
		
	}
	/*toListPolicy*/
	@RequestMapping("toListPolicy")
	public String selectListPolicy(Model model){
		List<Policy> policys=policyService.selectListPolicy();
		model.addAttribute("policys", policys);		
		return "policylist";
		
	}
	
	/*toListPolicy*/
	@RequestMapping("allPolicy")
	public String selectAllPolicy(Model model){
		List<Policy> policys=policyService.selectListPolicy();
		model.addAttribute("policys", policys);		
		return "admin/policy";
		
	}
	
	/*toPolicyType*/
	@RequestMapping("toPolicyType")
	public String selectPolicyType(Model model,String polDrade){
		
		String polDrade1=null;
		try {
			polDrade1 = new String(polDrade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Policy hint=new Policy();
		hint.setPolDrade(polDrade1);
		model.addAttribute("hint", hint);
		List<Policy> policys=policyService.selectPolicyType(polDrade1);		
		model.addAttribute("policys", policys);		
		return "policylist";		
	}
	
	/*toPolicyArea*/
	@RequestMapping("toPolicyArea")
	public String selectPolicyArea(Model model,String area){
		
		Policy hint=new Policy();
		hint.setPolArea(area);
		model.addAttribute("hint", hint);
		List<Policy> areas=policyService.selectPolicyArea(area);
		model.addAttribute("areas", areas);		
		return "policylist";		
	}
	
	/*toIndustryPolicy*/
	@RequestMapping("toIndustryPolicy")
	public String selectIndustryPolicy(Model model,String  pClassName){
		System.out.println(pClassName);
		String pClassName1=null;
		try {
			pClassName1 = new String(pClassName.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(pClassName1);
		PClass hint=new PClass();
		hint.setpClassName(pClassName1);
		model.addAttribute("hint", hint);
		List<Policy> policys=policyService.searchIndustryPlocy(pClassName1);		
		model.addAttribute("policys", policys);		
		return "policylist";		
	}
	
	@RequestMapping("getArea")
	public @ResponseBody List<Policy> getArea(Policy area){
		
		//System.out.println(area);
		System.out.println(area.getPolArea());
		List<Policy> areas=policyService.selectPolicyArea(area.getPolArea());
		//System.out.println(areas.get().getPolTime());
		return areas;
	}
	
	/*addPolicy*/
	@RequestMapping("addPolicy")
	public String addPolicy(Policy policy,MultipartFile file,HttpServletRequest request){
		
		policy.setPolTime(String.valueOf(policy.getPolTime()));
		UpAndDownload upFile=new UpAndDownload();
		String filename=upFile.doUploadDoc(file, request);
		policy.setPolFile(filename);
		int n=policyService.addPolicy(policy);				
		if(n!=0){
		   return "forward:toListPolicy";
		}else{
		   return "login";
		}
		
	}
	/*deletePolicy*/
	@RequestMapping("deletePolicy")
	public String deletePolicy(int policyId){
		int n=policyService.deletePolicy(policyId);				
		if(n!=0){
		   return "forward:toListPolicy";
		}else{
		   return "login";
		}
		
	}
	/*updatePolicy*/
	@RequestMapping("updatePolicy")
	public String updatePolicy(String policyContent){
		int n=policyService.changePolicy(policyContent);
		if(n!=0){
			   return "forward:toListPolicy";
			}else{
			   return "login";
			}
	}
	
	/*
	 * toAllFile
	 
	@RequestMapping("toAllFile")
	public String toAllFile(Model model){
		List<Policy> files=policyService.getAllFile();
		model.addAttribute("files", files);
		return "";
	}
		
	
	 * toFile
	 
	@RequestMapping("toFile")
	public void toLimitFile(Model model,int policyId,HttpServletRequest request,
	         HttpServletResponse response){
		Policy file=policyService.getFile(policyId);
		UpAndDownload down = new UpAndDownload();
		down.doDownLadFile(file.getPolFile(), request, response);
	}
	*/
}
