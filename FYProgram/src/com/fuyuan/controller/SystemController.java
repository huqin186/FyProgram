package com.fuyuan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fuyuan.dao.SystemDao;
import com.fuyuan.entity.DictionaryBean;

@Controller
@RequestMapping("/system")
public class SystemController {
	
	@Resource(name="systemDao")
	SystemDao sDao;
	
	@ResponseBody
	@RequestMapping("/getDictList")
	public void getDictList(DictionaryBean dictionary, HttpServletRequest req, HttpServletResponse resp){
		try {
			List<DictionaryBean> array = sDao.getDictList(dictionary);
			String jsonStr = "{\"data\":[";
			for(int i=0;i<array.size();i++){
				if(i != 0){jsonStr+=",";}
				jsonStr += "{\"id\":"+array.get(i).getId()+",";
				jsonStr += "\"code\":\""+array.get(i).getCode()+"\",";
				jsonStr += "\"status\":"+array.get(i).getStatus()+",";
				jsonStr += "\"text\":\""+array.get(i).getText()+"\"}";
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
	
	@ResponseBody
	@RequestMapping("/getSubDictList")
	public void getSubDictList(DictionaryBean dictionary, HttpServletRequest req, HttpServletResponse resp){
		try {
			List<DictionaryBean> array = sDao.getSubDictList(dictionary);
			String jsonStr = "{\"data\":[";
			for(int i=0;i<array.size();i++){
				if(i != 0){jsonStr+=",";}
				jsonStr += "{\"id\":"+array.get(i).getId()+",";
				jsonStr += "\"value\":"+array.get(i).getValue()+",";
				jsonStr += "\"subText\":\""+array.get(i).getSubText()+"\",";
				jsonStr += "\"sort\":"+array.get(i).getSort()+",";
				jsonStr += "\"subId\":"+array.get(i).getSubId()+"}";
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
