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
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	
	/*toPolInterpre*/
	@RequestMapping("toPolInterpre")
	public String selectPolInterpre(int polInterpreId,Model model){
		PolInterpre polInterpre=polInterpreService.selectPolInterpre(polInterpreId);
		polInterpre.getPolInterpreContent().replace(" ", "<br>");
		polInterpre.getPolInterpreContent().replace("   ", "<br>");
		model.addAttribute("polInterpre", polInterpre);		
		return "polInterpre";
		
	}
	/*toListPolInterpre*/
	@RequestMapping("tolistPolInterpre")
	public String selectListPolInterpre(String pageNow,Model model){
		List<PolInterpre> polInterpres;
		Page page=null;
		int totalCount=polInterpreService.getRecordCount();
		if(pageNow==null){
			page=new Page(Integer.parseInt(pageNow), totalCount);
			polInterpres=polInterpreService.selectListPolInterpre();
		}else{
			page=new Page(1, totalCount);
			polInterpres=polInterpreService.selectListPolInterpre();
		}
		
		model.addAttribute("polInterpres", polInterpres);		
		return "polInterpreslist";		
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
		   return "forward:admin/polInterprete";
		}else{
		   return "login";
		}
		
	}
	/*ɾ�����߽��*/
	@RequestMapping("deletePolInterpre")
	public String deletePolInterpre(int polInterpreId){
		int n=polInterpreService.deletePolInterpre(polInterpreId);		
		if(n!=0){
		   return "forward:toListPolInterpre";
		}else{
		   return "login";
		}
		
	}
	/*�޸����߽��*/
	@RequestMapping("updatePolInterpre")
	public String updatePolInterpre(String polInterpreContent){
		int n=polInterpreService.changePolInterpre(polInterpreContent);
		if(n!=0){
		   return "forward:toListPolInterpre";
		}else{
		   return "login";
		}
		
	}
}
