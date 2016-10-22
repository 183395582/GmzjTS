package com.gmzj.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmzj.entity.Article;
import com.gmzj.entity.Cemetery;
import com.gmzj.entity.Cemetery.ComType;
import com.gmzj.entity.CemeteryExample;
import com.gmzj.entity.CemeteryExample.Criteria;
import com.gmzj.entity.News;
import com.gmzj.service.ArticleService;
import com.gmzj.service.CemeteryService;
import com.gmzj.service.NewsService;

/**
 * 公墓之家首页
 * @author huangtao
 *
 */
@Controller
public class IndexController {

	@Autowired
	private CemeteryService CemeteryService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private ArticleService articleService;

    @RequestMapping("/")
    public String index(Model model) throws Exception {
    	//查询记录数
    	int num = 4;
    	//公墓陵园
    	model.addAttribute("gmlist", getCemeterys(ComType.gmly.getIndex(), num));
    	//殡仪服务
    	model.addAttribute("bylist", getCemeterys(ComType.byfw.getIndex(), num));
    	//风水堪舆
    	model.addAttribute("fslist", getCemeterys(ComType.fsky.getIndex(), num));
    	//新闻资讯
    	List<News> newslist = newsService.findNews4Index(num);
    	model.addAttribute("newslist", newslist);
    	//百科
    	List<Article> articlelist = articleService.findArticle4Index(6);
    	model.addAttribute("articlelist", articlelist);
        return "index";
    }
    
    /**
     * 根据类型和数量获取墓型
     * @param type
     * @param num
     * @return
     * @throws Exception 
     */
    private List<Cemetery> getCemeterys(String type,int num) throws Exception {
    	CemeteryExample example = new CemeteryExample();
    	Criteria criteria = example.createCriteria();
    	criteria.andTypeEqualTo(type);
    	List<Cemetery> bylist = CemeteryService.findCemeterys(example);
    	if (bylist.size() >= 4)
    		return bylist.subList(0, num);
    	return bylist;
    }

}
