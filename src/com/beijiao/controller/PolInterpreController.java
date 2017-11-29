/**
 * 
 */
package com.beijiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.File;
import com.beijiao.model.PolInterpre;
import com.beijiao.page.Page;
import com.beijiao.service.PolInterpreService;

/**
 * @author cmy lh
 *����4:55:39
 */
@Controller
@RequestMapping("/polInterpre")
public class PolInterpreController {

	@Resource
	private PolInterpreService polInterpreService;
	
	
	/*
	 * all for user
	 * 
	 */
	
	/*toPolInterpre*/
	@RequestMapping("toPolInterpre")
	public String selectPolInterpre(int polInterpreId,Model model){
		PolInterpre polInterpre=polInterpreService.selectPolInterpre(polInterpreId);
		model.addAttribute("polInterpre", polInterpre);		
		return "polInterpre";
		
	}
	/*toListPolInterpre*/
	@RequestMapping("tolistPolInterpre")
	public String selectListPolInterpre(String pageNow,Model model){
		List<PolInterpre> polInterpres;
		Page page=null;
		int totalCount=polInterpreService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		polInterpres=polInterpreService.selectAllPolInterpre(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		polInterpres=polInterpreService.selectAllPolInterpre(map);
		}
		model.addAttribute("page", page);
		model.addAttribute("polInterpres", polInterpres);	
		return "polInterpreslist";		
	}
	
	
	/*
	 * all for admin
	 * 
	 */
	
	
	/*
	 * toAdminPolInterpre
	 * */
	@RequestMapping("adminPolInterpre")
	public String selectAdminPolInterpre(int polInterpreId,Model model){
		PolInterpre polInterpre=polInterpreService.selectPolInterpre(polInterpreId);
		model.addAttribute("polInterpre", polInterpre);		
		return "admin/polInterprete_detail";
		
	}
	
	/*toAllPolInterpre*/
	@RequestMapping("allPolInterpre")
	public String selectAllPolInterpre(Model model,String pageNow){
		List<PolInterpre> polInterpres;
		Page page=null;
		int totalCount=polInterpreService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
			polInterpres=polInterpreService.selectListPolInterpre();
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
			polInterpres=polInterpreService.selectListPolInterpre();
		}
		model.addAttribute("page", page);	
		model.addAttribute("polInterpres", polInterpres);		
		return "admin/polInterprete";
		
	}
	
	/*addPolInterpre*/
	@RequestMapping("addPolInterpre")
	public String addPolInterpre(PolInterpre polInterpre,HttpServletRequest request){
		int n=polInterpreService.addPolInterpre(polInterpre);			
		if(n!=0){
		   return "forward:allPolInterpre";
		}else{
		   return "login";
		}
		
	}
	
	/*
	 * delete
	 * */
	@RequestMapping("deletePolInterpre")
	public String deletePolInterpre(int polInterpreId){
		int n=polInterpreService.deletePolInterpre(polInterpreId);		
		if(n!=0){
		   return "forward:allPolInterpre";
		}else{
		   return "login";
		}
		
	}
	
	/*
	 * update
	 * */
	@RequestMapping("updatePolInterpre")
	public String updatePolInterpre(String polInterpreContent){
		int n=polInterpreService.changePolInterpre(polInterpreContent);
		if(n!=0){
		   return "forward:allPolInterpre";
		}else{
		   return "login";
		}
		
	}
	
	/*
	 * WebApp
	 */	
	
	@RequestMapping("toAppPolInterpre")
	public String selectAppPolInterpre(int polInterpreId,Model model){
		PolInterpre polInterpre=polInterpreService.selectPolInterpre(polInterpreId);
		model.addAttribute("polInterpre", polInterpre);		
		return "Webapp/";
		
	}
	
	@RequestMapping("allPolInterpreApp")
	public String selectAllPolInterpreApp(Model model){
		List<PolInterpre> polInterpres;
		Map<String, Integer> map=new HashMap<String, Integer>();
		polInterpres=polInterpreService.selectListPolInterpre();
		model.addAttribute("polInterpres", polInterpres);		
		return "Webapp/test2";
	}
}
