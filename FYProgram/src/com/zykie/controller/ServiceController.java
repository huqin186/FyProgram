package com.zykie.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zykie.dao.ServiceDaoImp;
import com.zykie.model.Page;
import com.zykie.model.ServiceBean;

@Controller
@RequestMapping("/service")
public class ServiceController {
	
	@Resource(name="serviceDaoImp")
	ServiceDaoImp sDao;
	
	@RequestMapping("/searchAjax")
	public void searchAjax(ServiceBean service, Page page, HttpServletRequest req, HttpServletResponse resp){
		try {
			ArrayList<ServiceBean> array = new ArrayList<ServiceBean>();
			int totalRows = sDao.search(service, array, page);
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
