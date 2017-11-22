/**
 * 
 */
package com.beijiao.controller;


import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.beijiao.model.File;
import com.beijiao.model.PClass;
import com.beijiao.model.Policy;
import com.beijiao.page.Page;
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
	public String selectPolicyType1(Model model,String polDrade,String pageNow){
		
		String polDrade1=null;
		try {
			polDrade1 = new String(polDrade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(polDrade1);
		PClass hint=new PClass();
		hint.setpClassName(polDrade1);
		model.addAttribute("hint", hint);
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountPlocyDrade(polDrade1);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.selectPolicyType1(polDrade1, startPos, pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.selectPolicyType1(polDrade1, startPos, pageSize);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);
		return "policydradelist";
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
	public String selectIndustryPolicy(Model model,String  pClassName,String pageNow){
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
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountIndustryPlocy(pClassName1);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchIndustryPlocy(pClassName1, startPos,pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchIndustryPlocy(pClassName1, startPos,pageSize);
		}
		model.addAttribute("page", page);
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
	
	
	@RequestMapping("toSearch")
	public String searchPolicy(Model model,String search,String pageNow){
		System.out.println("山东师范"+search);	
		PClass hint=new PClass();
		hint.setpClassName(search);
		model.addAttribute("hint", hint);
		List<Policy> policys;
		Page page=null;
		int totalCount=policyService.getRecordCountSearch(search);
		if(pageNow==null){
			page=new Page(1, totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchPolicy(search, startPos, pageSize);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			Integer startPos =page.getStartPos();
			Integer pageSize =page.getPageSize();
    		policys=policyService.searchPolicy(search, startPos, pageSize);
		}
		model.addAttribute("page", page);
		model.addAttribute("policys", policys);
		return "searchpolicy";
	}
	
	
	
	/*
	 * 
	 * WebApp
	 * 政策
	 * 
	 */
	
	/*
	 * 所有政策
	 */
	@RequestMapping("app_allPolicy")
	public String app_allPolicy(Model model){
		
		List<Policy> policys=policyService.selectAllPolicy_app();
		model.addAttribute("policys", policys);
		return "webapp/";
	}
	
	/*
	 * 所有等级政策
	 */
	@RequestMapping("app_dradePolicy")
	public String app_dradePolicy(Model model,String polDrade){
		String polDrade1=null;
		try {
			polDrade1 = new String(polDrade.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Policy> policys=policyService.selectPolicyType_app(polDrade1);
		model.addAttribute("policys", policys);
		return "webapp/";
	}
	
	/*
	 * 所有行业政策
	 */
	@RequestMapping("app_IndustryPolicy")
	public String app_IndustryPolicy(Model model,String pClassName){
		String pClassName1=null;
		try {
			pClassName1 = new String(pClassName.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Policy> policys=policyService.searchIndustryPlocy_app(pClassName1);
		model.addAttribute("policys", policys);
		return "webapp/";
	}
	
	/*
	 * 政策查询
	 */
	@RequestMapping("app_IndustryPolicy")
	public String app_searchPolicy(Model model,String search){	
		List<Policy> policys=policyService.searchPolicy_app(search);
		model.addAttribute("policys", policys);
		return "webapp/";
	}
	
	/*
	 * 最新政策
	 */
	@RequestMapping("app_LatestPolicy")
	public String app_LatestPolicy(Model model){
		Date date = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String polTime = dateFormat.format(date);
		List<Policy> policys=policyService.getLatestPolicy_app(polTime);
		model.addAttribute("policys", policys);
		return "webapp/";
	}
	
	/*
	 * 政策查询
	 */
	@RequestMapping("app_toPolicy")
	public String app_searchPolicy(Model model,int policyId){	
		Policy policy=policyService.selectPolicy(policyId);
		model.addAttribute("policy", policy);
		return "webapp/";
	}
	
}
