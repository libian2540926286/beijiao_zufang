/**
 * 
 */
package com.beijiao.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beijiao.model.Company;
import com.beijiao.service.CompanyService;


/**
 * @author cmy
 *����4:55:59
 */
@Controller
@RequestMapping("/company")
public class CompanyController {

	@Resource
	private CompanyService companyService;
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	
	/**
	 * ��ѯ������˾
	 * */
	@RequestMapping("toCompany")
	public String selectCompany(int companyId,Model model){
		
		Company company=companyService.selectCompany(companyId);
		System.out.println(company.getCompanyIntro());
		model.addAttribute("company", company);
		return "success";
	}
	/*
	 * ��ѯǰ�����˾
	 * */
	@RequestMapping("getFive")
	public String getFive(Model model){
		List<Company> companys=new ArrayList<Company>();
		companys=companyService.selectListComany();
		model.addAttribute("companys", companys);
		return "success";
	}
	/**
	 *  ��ѯ���й�˾
	 * */
	@RequestMapping("companyList")
	public ModelAndView getcompanyList(){
		ModelAndView mac=new ModelAndView();
		List<Company> companys=new ArrayList<Company>();
		companys=companyService.selectListComany();
		mac.addObject("companys",companys);
		mac.setViewName("success");
		return mac;
	}
	/*
	 * ��ӹ�˾
	 * */
	@RequestMapping("addCompany")
	public String addCompany(Company company,Model model){
		int n=companyService.addCompany(company);
		if(n!=0){
			return "forward:companyList";
		}else{
			return "login";
		}	
	}
    /*
     * �޸Ĺ�˾��Ϣ
     * */
	@RequestMapping("updateCompany")
	public String updateCompany(Company company,Model model){
		int n=companyService.changeCompany(company);
		if(n!=0){
			return "forward:companyList";
		}else{
			return "login";
		}	
	}
	/** 
	 * ɾ��˾
	 * */
	@RequestMapping("deleteCompany")
	public String deleteCompany(int companyId,Model model){
		int n=companyService.deleteComapany(companyId);
		if(n!=0){
			return "success";
		}else{
			return "login";
		}	
	}	
}
