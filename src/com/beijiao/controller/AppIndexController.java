package com.beijiao.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("app_index")
public class AppIndexController {

	@RequestMapping("toApp")
	public String toIndex(Model model){
		
		return "Webapp/";
	}
}
