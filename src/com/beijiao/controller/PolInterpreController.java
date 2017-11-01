/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.PolInterpre;
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
	@RequestMapping("toListPolInterpre")
	public String selectListPolInterpre(Model model){
		List<PolInterpre> polInterpres=polInterpreService.selectListPolInterpre();
		model.addAttribute("polInterpres", polInterpres);		
		return "polinterprelist";
		
	}
	
	/*toAllPolInterpre*/
	@RequestMapping("toAllPolInterpre")
	public String selectAllPolInterpre(Model model){
		List<PolInterpre> polInterpres=polInterpreService.selectAllPolInterpre();
		model.addAttribute("polInterpres", polInterpres);		
		return "polinterprelist";
		
	}
	/*addPolInterpre*/
	@RequestMapping("addPolInterpre")
	public String addPolInterpre(PolInterpre polInterpre){
		int n=polInterpreService.addPolInterpre(polInterpre);			
		if(n!=0){
		   return "forward:toListPolInterpre";
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
