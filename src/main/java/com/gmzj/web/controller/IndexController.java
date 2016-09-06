package com.gmzj.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmzj.entity.Company;
import com.gmzj.entity.Company.ComType;
import com.gmzj.service.CompanyService;

@Controller
public class IndexController {

	@Autowired
	private CompanyService companyService;

    @RequestMapping("/")
    public String index(Model model) throws Exception {
    	//公墓陵园
    	List<Company> gmlist = companyService.findCompanys4Index(ComType.fw01.getIndex(), 4);
    	model.addAttribute("gmlist", gmlist);
    	//殡仪服务
    	List<Company> bylist = companyService.findCompanys4Index(ComType.fw02.getIndex(), 4);
    	model.addAttribute("bylist", bylist);
    	//风水堪舆
    	List<Company> fslist = companyService.findCompanys4Index(ComType.fw03.getIndex(), 4);
    	model.addAttribute("fslist", fslist);
        return "index";
    }

}
