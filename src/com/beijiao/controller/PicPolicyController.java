package com.beijiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.PicPolicy;
import com.beijiao.page.Page;
import com.beijiao.service.PicPolicyService;

@Controller       
@RequestMapping("/picpol")
public class PicPolicyController {

	@Resource
	private PicPolicyService picPolicyService;
	
	

	/*
	 * all for user
	 * 
	 */
	                
	@RequestMapping("topicPol")
	public String getPicPol(int picPolId,Model model){
		PicPolicy picPol=picPolicyService.getPicPolicy(picPolId);
		model.addAttribute("picPol", picPol);
		return "picPolicy";
	}
	

	/*
	 * all for admin
	 * 
	 */
	
	@RequestMapping("toAdminpicPol")
	public String getAdminPicPol(int picPolId,Model model){
		PicPolicy picPol=picPolicyService.getPicPolicy(picPolId);
		model.addAttribute("picPol", picPol);
		return "admin/picPolicy_detail";
	}
	
	
	@RequestMapping("allpicPol")
	public String getAllPicPol(Model model,String pageNow){
		List<PicPolicy> picPols;
		Page page=null;
		int totalCount=picPolicyService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		picPols=picPolicyService.getAll(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		picPols=picPolicyService.getAll(map);
		}
		model.addAttribute("page", page);
		model.addAttribute("picPols", picPols);
		return "admin/picPolicylist";
	}
	
	@RequestMapping("addpicPol")
	public String insertPicPol(@RequestParam MultipartFile file,PicPolicy picPol,Model model,HttpServletRequest request){
		System.out.println(file);
		UpAndDownload upFile=new UpAndDownload();
		String filename=upFile.doUploadPic(file, request);
		picPol.setPicPolFile(filename);
		int  n=picPolicyService.insertPicPolicy(picPol);
		if(n==0){
		    return "forward:allpicPol";
		}else{
			return "admin/picPolicy";
		}
	}
	
	@RequestMapping("deletepicPol")
	public String deletePicPol(int picPolId,Model model){
		int  n=picPolicyService.deletePicPolicy(picPolId);
		if(n==0){
		    return "forward:allpicPol";
		}else{
			return "forward:allpicPol";
		}
	}
	
	/*
	 * WebApp
	 */	
	/*
	 * app页面图片政策
	 */
	@ResponseBody 
	@RequestMapping("getPicPol_app")
	public PicPolicy getPicPol_app(String picPolId,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		PicPolicy picPol=picPolicyService.getPicPolicy(Integer.parseInt(picPolId));
		return picPol;
	}
    /*
     * 图片政策详细内容
     */
	@ResponseBody 
	@RequestMapping("allpicPol_app")
	public List<PicPolicy>  getAllPicPol_app(HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		List<PicPolicy> picPols=picPolicyService.getFive();
		return picPols;
	}
	
	
}
