package com.gmzj.web.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
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
import com.gmzj.entity.IntEnum;
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
    public void initCemetery(WebDataBinder binder) { 
		binder.setFieldDefaultPrefix("cemetery.");
    }
	
	@InitBinder("page")   
    public void initBinder2(WebDataBinder binder) { 
		binder.setFieldDefaultPrefix("page.");
    }
	
	@ModelAttribute
	public void init(Model model) {
		model.addAttribute("priceSection", priceSection.values());
		model.addAttribute("rangeSection", rangeSection.values());
	}
	
	@RequestMapping("/{page}")
	public String view(HttpServletRequest req, Model model, @PathVariable("page") String page){
		Enumeration<String> enumerations = req.getParameterNames();
		while (enumerations.hasMoreElements()) {
			String name = enumerations.nextElement();
			model.addAttribute(name, req.getParameter(name));
		}
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

	
	public static enum priceSection implements IntEnum<priceSection> {
		price1("1", "1万以下"), price2("1,2", "1-2万"), price3("2,5", "2-5万"), 
		price4("5,10", "5-10万"), price5("10,20", "10-20万"), price6("20", "20万以上");

		private final String index;
		private final String name;
		private priceSection(String index, String name) {
			this.index = index;
			this.name = name;
		}

		public static String getName(String index) {
			for (priceSection p : priceSection.values()) {
				if (p.getIndex().equals(index)) {
					return p.name;
				}
			}
			return null;
		}

		public String getName() {
			return name;
		}

		public String getIndex() {
			// TODO Auto-generated method stub
			return index;
		}
	}
	
	public static enum rangeSection implements IntEnum<rangeSection> {
		range1("5", "5公里以内"), range2("5,10", "5-10公里"), range3("10,20", "10-20公里"), 
		range4("20,30", "20-30公里"), range5("30,50", "30-50公里"), range6("50", "50公里以上");

		private final String index;
		private final String name;
		private rangeSection(String index, String name) {
			this.index = index;
			this.name = name;
		}

		public static String getName(String index) {
			for (rangeSection r : rangeSection.values()) {
				if (r.getIndex().equals(index)) {
					return r.name;
				}
			}
			return null;
		}

		public String getName() {
			return name;
		}

		public String getIndex() {
			// TODO Auto-generated method stub
			return index;
		}
	}
}
