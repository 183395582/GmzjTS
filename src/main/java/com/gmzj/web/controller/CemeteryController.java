package com.gmzj.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmzj.entity.CemArticle;
import com.gmzj.entity.CemArticleExample;
import com.gmzj.entity.CemType;
import com.gmzj.entity.CemTypeExample;
import com.gmzj.entity.CemTypeExample.Criteria;
import com.gmzj.entity.Cemetery;
import com.gmzj.entity.CemeteryExample;
import com.gmzj.entity.Page;
import com.gmzj.entity.custom.CemTypeCustom;
import com.gmzj.service.CemArticleService;
import com.gmzj.service.CemTypeService;
import com.gmzj.service.CemeteryService;
import com.gmzj.util.Tools;

/**
 * 公墓陵园controller
 * @author huangtao
 *
 */
@Controller
@RequestMapping(value = "/cemetery")
public class CemeteryController extends BaseController{
	//private Logger logger = Logger.getLogger(this.getClass()); 
	@Autowired
	private CemeteryService cemeteryService;
	@Autowired 
	private CemTypeService cemTypeService;
	@Autowired
	private CemArticleService articleService; 

	@InitBinder("cemetery")   
    public void initBinder1(WebDataBinder binder) { 
		binder.setFieldDefaultPrefix("cemetery.");
    }
	
	@InitBinder("page")   
    public void initBinder2(WebDataBinder binder) { 
		binder.setFieldDefaultPrefix("page.");
    }
	
	@RequestMapping("/{page}")
	public String view(Model model, @PathVariable("page") String page){
		model.addAttribute("page", page);
		return "cemetery/" + page;
	}
	
	/**
	 * 公墓陵园首页-尊享墓型
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getEnjoyMX")
	public Object getEnjoyCT() throws Exception{
		CemTypeExample example = new CemTypeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEnjoyEqualTo(true);
		return getCemType(example);
	}
	
	/**
	 * 公墓陵园首页-特惠墓型
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getSpecialMX")
	public Object getSpecialCT() throws Exception{
		CemTypeExample example = new CemTypeExample();
		Criteria criteria = example.createCriteria();
		criteria.andSpecialEqualTo(true);
		return getCemType(example);
	}
	
	/**
	 * 公墓分页查询
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value = "getCemeterysByPage", method = RequestMethod.GET)
	public Object getCemeterysByPage(HttpServletRequest req, Page<Cemetery> page, Cemetery cemetery) throws Exception{
		req.getParameter("page.currentPage");
		page.setParm(cemetery);
		List<Cemetery> result = this.cemeteryService.listPage(page);
		page.setResult(result);
		return page;
	}
	
	/**
	 * 公墓查询
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getCemeterys")
	public Object getCemeterys(HttpServletRequest req) throws Exception{
		CemeteryExample example = this.getExample(req, Cemetery.class);
		return this.cemeteryService.findCemeterys(example);
	}
	
	/**
	 * 公墓咨询、指南、风水查询
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getCemArticles")
	public Object getCemArticles(HttpServletRequest req) throws Exception{
		CemArticleExample example = this.getExample(req, CemArticle.class);
		return this.articleService.findCemArticles(example);
	}
	
	@ResponseBody
	@RequestMapping("getGMName")
	public Object getCemName(int id) throws Exception{
		Cemetery cemetery = cemeteryService.findCemeteryByKey(id);
		return cemetery.getName();
	}
	
	private List<CemTypeCustom> getCemType(CemTypeExample example) throws Exception {
		List<CemType> list = cemTypeService.findCemTypes(example);
		List<CemTypeCustom> cemTypes = new ArrayList<CemTypeCustom>();
		if (CollectionUtils.isNotEmpty(list))
			for (CemType cemType : list) {
				CemTypeCustom custom = Tools.copyProperty(cemType, CemTypeCustom.class);
				custom.setCemeteryName(cemeteryService.findCemeteryByKey(cemType.getCemId()).getName());
				cemTypes.add(custom);
			}
		return cemTypes;
	}

	
	public static void main(String[] args) throws UnsupportedEncodingException {
		String str = new String("\u6210\u90fd\u5e02".getBytes(), "utf-8");
		System.out.println(str);
	}
}
