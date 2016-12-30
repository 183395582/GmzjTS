package com.gmzj.web.controller;

import java.lang.reflect.Field;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.MethodUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BaseController {
	
	protected String input;

	protected Map<String, Object> modelMap;
	
	protected HttpServletRequest request;
	
	static Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	public String getInput() {
		return input;
	}

	public void setInput(String input) {
		this.input = input;
	}

	public Map<String, Object> getModelMap() {
		return modelMap;
	}

	public void setModelMap(Map<String, Object> modelMap) {
		this.modelMap = modelMap;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	protected String getFileName(String type, String extName) {
		StringBuffer path = new StringBuffer(type);
		path.append(String.format("%d", System.currentTimeMillis()));
		path.append(String.format("%03d", (int) (Math.random() * 1000)));
		path.append(".");
		path.append(extName);
		return path.toString();
	}
	
	@SuppressWarnings("unchecked")
	protected <T> T getExample(HttpServletRequest req, Class<?> z){
		Object example;
		try {
			String exampleClass = z.getName() + "Example";
			example = Class.forName(exampleClass).newInstance();
			Object criteria = MethodUtils.invokeMethod(example, "createCriteria", null);
			Enumeration<String> enu = req.getParameterNames();
			while(enu.hasMoreElements()){
				//参数格式为price_equalTo
				String name = enu.nextElement();
				String[] strs = name.split("_");
				if (strs == null || strs.length != 2) continue;
				String value = new String(req.getParameter(name).getBytes("ISO-8859-1"),"utf-8");
				if (StringUtils.isBlank(value) || "null".equals(value)) continue;
				if (strs[1].equals("in")) {
					
				}
				//方法名
				String methodName = "and" + StringUtils.capitalize(strs[0]) + StringUtils.capitalize(strs[1]);
				//获取参数类型
				Field field = z.getDeclaredField(strs[0]);
				Object arg = ConvertUtils.convert(value, field.getType());
				MethodUtils.invokeMethod(criteria, methodName, arg);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return (T) example;
	}
	
}
