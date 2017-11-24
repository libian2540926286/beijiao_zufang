/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.File;
import com.beijiao.model.Reply;
import com.beijiao.service.ReplyService;



/**
 * @author cmy
 *下午2:10:51
 */
@Controller
@RequestMapping("/reply")
public class ReplyController {

	@Resource
	private ReplyService replyService;
	/*查询回帖*/
	@RequestMapping("getReply")
	public String getReply(Model model,int replyId){
		Reply reply=replyService.selectReply(replyId);
		model.addAttribute("reply", reply);
		return "success";
	}
	/*查询所有回帖*/
	@RequestMapping("getListReply")
	public String getListReply(Model model){
		List<Reply> replys=replyService.selectListReply();
		model.addAttribute("replys", replys);
		return "success";
	}
	/*添加回帖*/
	@RequestMapping("addReply")
	public String addReply(Reply reply){
		int n=replyService.insertDiscuss(reply);
		if(n!=0){
			return "forward:getListReply";
		}else{
			return "";
		}		
	}
	/*删除回帖*/
	@RequestMapping("deleteReply")
	public String deleteReply(int replyId){
		int n=replyService.deleteReply(replyId);
		if(n!=0){
			return "forward:getListReply";
		}else{
			return "";
		}	
	}
	
}
