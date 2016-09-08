package com.gmzj.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmzj.entity.Article;
import com.gmzj.entity.Company;
import com.gmzj.entity.Company.ComType;
import com.gmzj.entity.News;
import com.gmzj.service.ArticleService;
import com.gmzj.service.CompanyService;
import com.gmzj.service.NewsService;

@Controller
public class IndexController {

	@Autowired
	private CompanyService companyService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private ArticleService articleService;

    @RequestMapping("/")
    public String index(Model model) throws Exception {
    	//查询记录数
    	int num = 4;
    	//公墓陵园
    	List<Company> gmlist = companyService.findCompanys4Index(ComType.fw01.getIndex(), num);
    	model.addAttribute("gmlist", gmlist);
    	//殡仪服务
    	List<Company> bylist = companyService.findCompanys4Index(ComType.fw02.getIndex(), num);
    	model.addAttribute("bylist", bylist);
    	//风水堪舆
    	List<Company> fslist = companyService.findCompanys4Index(ComType.fw03.getIndex(), num);
    	model.addAttribute("fslist", fslist);
    	//新闻资讯
    	List<News> newslist = newsService.findNews4Index(num);
    	model.addAttribute("newslist", newslist);
    	//百科
    	List<Article> articlelist = articleService.findArticle4Index(6);
    	model.addAttribute("articlelist", articlelist);
        return "index";
    }

}
