package com.gmzj.web.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gmzj.entity.RegionMap;
import com.gmzj.entity.RegionMapExample;
import com.gmzj.service.RegionMapService;
import com.gmzj.spring.SpringUtils;
import com.gmzj.util.AddressUtils;

/**
 * 
 * 处理页面显示城市的拦截器
 * @author Edward
 *
 */
public class RegionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		RegionMap regionMap = (RegionMap) request.getSession().getAttribute("cityMap");
		if (regionMap == null) {
			String ip = request.getRemoteAddr();
			//通过ip获取地址信息
			RegionMapService regionMapService = SpringUtils.getBean(RegionMapService.class);
			String resultStr = AddressUtils.getAddresses("ip="+ip, "utf-8");
			if (StringUtils.isNotBlank(resultStr)) {
				JSONObject object = JSONObject.fromObject(resultStr);
				String city = object.getString("city");
				RegionMapExample example = new RegionMapExample();
				example.createCriteria().andNameLike(city + "%");
				List<RegionMap> list = regionMapService.findRegionMaps(example);
				if (CollectionUtils.isNotEmpty(list) && list.size() > 0) {
					regionMap = list.get(0);
					request.getSession().setAttribute("cityMap", regionMap);
					example = new RegionMapExample();
					example.createCriteria().andManagenoEqualTo(regionMap.getNo());
					List<RegionMap> regions = regionMapService.findRegionMaps(example);
					if (CollectionUtils.isNotEmpty(regions))
						request.getSession().setAttribute("regions", regions);
				}
			}
		}
		return super.preHandle(request, response, handler);
	}
	
}
