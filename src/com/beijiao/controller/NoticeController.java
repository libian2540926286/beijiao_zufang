package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beijiao.model.Notice;
import com.beijiao.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Resource
	private NoticeService noticeService;
	
	@RequestMapping("toNotice")
	public String toNotice(int noticeId,Model model){
		Notice notice=noticeService.selectNotice(noticeId);
		if(notice!=null){
		model.addAttribute("notice", notice);
			return "notice";
		}else{
			return "";
		}
	}
	
	@RequestMapping("toNotices")
	public String toNotices(Model model){
		List<Notice> notices=noticeService.selectListNotice();
		model.addAttribute("notices", notices);
		return "notice-list";
	}
	
	/*
	 * for admin
	 */
	
	
	@RequestMapping("toadminNotice")
	public String toadminNotice(Model model){
		List<Notice> notices=noticeService.selectListNotice();
		model.addAttribute("notices", notices);
		return "admin/Notice";
	}
	
	@RequestMapping("toAdminno")
	public String toAdminno(int noticeId,Model model){
		Notice notice=noticeService.selectNotice(noticeId);
		model.addAttribute("notice", notice);
			return "admin/Notice_detail";
	}
	
	@RequestMapping("addNotice")
	public String addNotice(Notice notice,Model model){
		int n=noticeService.insertNotice(notice);
		if(n!=0){
		    return "forward:toadminNotice";	 
	    }else{
	    	return "forward:toadminNotice:";
	         }
	}	
	
	@RequestMapping("changeNotice")
	public String changeNotice(Notice notice,Model model){
		int n=noticeService.updateNotice(notice);
		if(n!=0){
		    return "forward:toadminNotice";	 
	    }else{
	    	return "forward:toadminNotice:";
	         }
	}
	
	@RequestMapping("deleteNotice")
	public String deleteNotice(int noticeId,Model model){
		int n=noticeService.deleteNotice(noticeId);
		if(n!=0){
		    return "forward:toadminNotice";	 
	    }else{
	    	return "forward:toadminNotice:";
	         }
	}
	
	/*
	 * webApp  
	 */
	@ResponseBody
	@RequestMapping("toNotice_app")
	public Notice toNotice_app(int noticeId,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Notice notice=noticeService.selectNotice(noticeId);
		return notice;
	}
	@ResponseBody
	@RequestMapping("toallNotices_app")
	public List<Notice> toNotices_app(HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		List<Notice> notices=noticeService.selectListNotice();
		return notices;
	}
	
}
