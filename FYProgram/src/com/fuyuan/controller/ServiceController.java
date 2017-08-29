package com.fuyuan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fuyuan.dao.ServiceDao;
import com.fuyuan.entity.ServiceBean;

@Controller
@RequestMapping("/service")
public class ServiceController {
	
	@Resource(name="serviceDao")
	ServiceDao sDao;
	
	@RequestMapping("/searchAjax")
	public void searchAjax(ServiceBean service, HttpServletRequest req, HttpServletResponse resp){
		try {
			//ArrayList<ServiceBean> array = new ArrayList<ServiceBean>();
			List<ServiceBean> array = sDao.search(service);
			String jsonStr = "{\"data\":[";
			for(int i=0;i<array.size();i++){
				if(i != 0){jsonStr+=",";}
				jsonStr += "{\"serviceName\":\""+array.get(i).getServiceName()+"\",";
				jsonStr += "\"serviceId\":"+array.get(i).getServiceId()+"}";
			}
			jsonStr += "]}";
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out;
			out = resp.getWriter();
			out.print(jsonStr);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
