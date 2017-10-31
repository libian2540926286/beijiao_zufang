/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Discuss;
import com.beijiao.service.DiscussService;



/**
 * @author cmy
 *����10:14:04
 */
@RequestMapping("/consult")
public class DiscussController {

	private DiscussService discussService;
	/*��ѯ����*/
	@RequestMapping("getDiscuss")
	public String getDiscuss(Model model,int discussId){
		Discuss discuss=discussService.selectDiscuss(discussId);
		model.addAttribute("discus",discuss);
		return "success";
	}
	/*��ѯ��������*/
	@RequestMapping("getListDiscuss")
	public String getListDiscuss(Model model){
		List<Discuss> dis=discussService.selectListDiscuss();
		model.addAttribute("dis", dis);
		return "success";
	}
	/*�������*/
	@RequestMapping("addConsult")
	public String addDiscuss(Discuss discuss){
		int n=discussService.insertDiscuss(discuss);
		if(n!=0){
			return "forward:getListDiscuss";
		}else{
			return "login";
		}	
	}
	/*ɾ������*/
	@RequestMapping("deleteConsult")
	public String deleteDiscuss(int discussId){
		int n=discussService.deleteDiscuss(discussId);
		if(n!=0){
			return "forward:getListDiscuss";
		}else{
			return "login";
		}	
	}
}
