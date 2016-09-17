package com.gmzj.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 公墓陵园controller
 * @author huangtao
 *
 */
@Controller
@RequestMapping(value = "/cemetery")
public class CemeteryController {

	@RequestMapping
	public String index(Model model){
		return "cemetery/index";
	}
}
