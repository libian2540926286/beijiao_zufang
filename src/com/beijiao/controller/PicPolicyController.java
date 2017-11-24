package com.beijiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.PicPolicy;
import com.beijiao.page.Page;
import com.beijiao.service.PicPolicyService;

@Controller
@RequestMapping("/picpol")
public class PicPolicyController {

	@Resource
	private PicPolicyService picPolicyService;
	
	
	@RequestMapping("topicPol")
	public String getPicPol(int picPolId,Model model){
		PicPolicy picPol=picPolicyService.getPicPolicy(picPolId);
		model.addAttribute("picPol", picPol);
		return "success";
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
		    return "admin/picPolicylist";
		}else{
			return "admin/picPolicy";
		}
	}
	
	@RequestMapping("deletepicPol")
	public String deletePicPol(int picPolId,Model model){
		int  n=picPolicyService.deletePicPolicy(picPolId);
		if(n==0){
		    return "";
		}else{
			return "";
		}
	}
	
	/*
	 * WebApp
	 */	
	@RequestMapping("getPicPol_app")
	public String getPicPol_app(int picPolId,Model model){
		PicPolicy picPol=picPolicyService.getPicPolicy(picPolId);
		model.addAttribute("picPol", picPol);
		return "Webapp/";
	}
	
}
