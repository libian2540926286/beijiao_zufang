/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Link;
import com.beijiao.service.LinkService;

/**
 * @author cmy
 *下午4:56:49
 */
@Controller
@RequestMapping("/link")
public class LinkController {

	@Resource
	private LinkService linkService;
	

	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	/*
	 * 查询链接
	 * */
	@RequestMapping("toLink")
	public String selectLink(int linkId,Model model){
		Link link=linkService.selectLink(linkId);
		System.out.println(link);
		model.addAttribute("link", link);
		return "success";
	}
	/*查询多条连接*/
	@RequestMapping("toListLink")
	public String selectListLink(Model model){
		List<Link> links=linkService.selectLIstLink();
		System.out.println(links);
		model.addAttribute("links", links);
		return "success";
	}
	/*插入链接*/
	@RequestMapping("addLink")
	public String addLink(Link link,Model model){
		int n=linkService.addLink(link);
		if(n!=0){
			return "forward:toListLink";
		}else{
			return "login";
		}
		
	}
	
	/*删除链接*/
	@RequestMapping("deleteLink")
	public String deleteLink(Model model,int linkId){
		int n=linkService.deleteLink(linkId);
		if(n!=0){
			return "forward:toListLink";
		}else{
			return "login";
		}
	}
	/*修改链接*/
	@RequestMapping("updateLink")
	public String updateLink(Link link){
	     int n=linkService.changeLink(link);
		if(n!=0){
			return "forward:toListLink";
		}else{
			return "login";
		}
	}
}
