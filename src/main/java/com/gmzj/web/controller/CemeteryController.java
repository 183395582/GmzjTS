package com.gmzj.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmzj.entity.CemType;
import com.gmzj.entity.CemTypeExample;
import com.gmzj.entity.CemTypeExample.Criteria;
import com.gmzj.entity.Cemetery;
import com.gmzj.service.CemTypeService;
import com.gmzj.service.CemeteryService;

/**
 * 公墓陵园controller
 * @author huangtao
 *
 */
@Controller
@RequestMapping(value = "/cemetery")
public class CemeteryController {
	
	@Autowired
	private CemeteryService cemeteryService;
	
	@Autowired 
	private CemTypeService cemTypeService;

	@RequestMapping
	public String view(Model model, String page){
		return "cemetery/" + page;
	}
	
	/**
	 * 公墓陵园首页查询尊享墓型
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getCemType4Enjoy")
	public Object getCemType4Enjoy() throws Exception{
		CemTypeExample example = new CemTypeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEnjoyEqualTo(true);
		List<CemType> list = cemTypeService.findCemTypes(example);
		Map<String, Object> map = new HashMap<String, Object>(8);
		map.put("cemTypes", list);
		return map;
	}
	
	/**
	 * 公墓陵园首页查询尊享墓型
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping("getCemName")
	public Object getCemName(int id) throws Exception{
		Cemetery cemetery = cemeteryService.findCemeteryByKey(id);
		Map<String, Object> map = new HashMap<String, Object>(8);
		map.put("cemName", cemetery.getName());
		return map;
	}
}
