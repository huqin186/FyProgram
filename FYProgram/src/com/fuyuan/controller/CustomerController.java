package com.fuyuan.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fuyuan.dao.CustomerDao;
import com.fuyuan.dao.CustomerDaoImp;
import com.fuyuan.entity.CustomerBean;
import com.fuyuan.entity.Page;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Resource(name="customerDao")
	CustomerDao cDao;
	
	@RequestMapping("/toList")
	public String toList(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		System.out.println("-------------------"+customer);
//		ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
		List<CustomerBean> array = cDao.find(customer);
		model.addAttribute("data", JSONArray.fromObject(array).toString());
		model.addAttribute("obj", customer);
		return "customer/list";
	}
	
	@RequestMapping("/list")
	public String listAll(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		try {
//			int curPage = Integer.parseInt(request.getParameter("curPage"));
//			int pageSize = Integer.parseInt(request.getParameter("pageSize"));
//			int startRow = pageSize * (curPage - 1);
//			ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
			List<CustomerBean> array = cDao.find(customer);
			model.addAttribute("data", array);
			model.addAttribute("obj", customer);
			return "customer/customerList";
//			String jsonStr = null;
//			if (totalRows > 0) {
//				jsonStr = "{\"success\": true, \"totalRows\": " + totalRows + ", \"curPage\": "+page.getCurPage()+" , \"data\":[";
//				CustomerBean form = null;
//				for (int i=0; i<array.size(); i++) {
//					if(i!=0){
//						jsonStr += ",";
//					}
//					form = array.get(i);
//			    	jsonStr += "{\"CustomerId\":\"" + form.getCustomerId() + "\",";
//			    	jsonStr += "\"CustomerName\":\"" + form.getCustomerName() + "\",";
//			    	jsonStr += "\"ReceverId\":\"" + form.getReceverId() + "\",";
//			    	jsonStr += "\"ReceverName\":\"" + form.getReceverName() + "\",";
//			    	jsonStr += "\"Address\":\"" + form.getAddress() + "\",";
//			    	jsonStr += "\"Telephone\":\"" + form.getTelephone() + "\",";
//			    	jsonStr += "\"DueDate\":\"" + form.getDueDate() + "\"}";
//				}
//			    jsonStr += "]}";
//			}else{
//				jsonStr = "{\"success\": true,\"totalRows\": 0, \"curPage\": 1, \"data\":[]}";
//			}
//			response.setContentType("text/html;charset=UTF-8");
//			PrintWriter out;
//			out = response.getWriter();
//			out.println(jsonStr);
//			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/listAjax")
	public String list(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		try {
			//ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
			List<CustomerBean> array = cDao.find(customer);
			int records = cDao.countByCustomer(customer);
			customer.setRecords(records);
			String jsonStr = null;
			if (records > 0) {
				jsonStr = "{\"page\": "+customer.getPage()+", \"total\": " + customer.getTotal() + ", \"records\": " + records + " , \"rows\":[";
				CustomerBean form = null;
				for (int i=0; i<array.size(); i++) {
					if(i!=0){
						jsonStr += ",";
					}
					form = array.get(i);
			    	jsonStr += "{\"customerId\":\"" + form.getCustomerId() + "\",";
			    	jsonStr += "\"customerName\":\"" + form.getCustomerName() + "\",";
			    	jsonStr += "\"receiverId\":\"" + form.getReceiverId() + "\",";
			    	jsonStr += "\"receiverName\":\"" + form.getReceiverName() + "\",";
			    	jsonStr += "\"address\":\"" + form.getAddress() + "\",";
			    	jsonStr += "\"telephone\":\"" + form.getTelephone() + "\",";
			    	jsonStr += "\"contactTime\":\"" + form.getContactTime() + "\",";
			    	jsonStr += "\"dueDate\":\"" + form.getDueDate() + "\"}";
				}
			    jsonStr += "]}";
			}else{
				jsonStr = "{\"success\": true,\"totalRows\": 0, \"curPage\": 1, \"data\":[]}";
			}
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter	out = response.getWriter();
			out.println(jsonStr);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@RequestMapping("/view")
	public String view(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		System.out.println("-------------------"+customer);
		//ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
		List<CustomerBean> array = cDao.find(customer);
		model.addAttribute("obj", array.get(0));
		return "customer/view";
	}
	
	@RequestMapping("/toSign")
	public String toSign(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		System.out.println("-------------------"+customer);
		//ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
		List<CustomerBean> array = cDao.find(customer);
		model.addAttribute("obj", array.get(0));
		return "customer/sign";
	}
	@RequestMapping("/sign")
	public String sign(CustomerBean customer, Model model, HttpServletRequest request, HttpServletResponse response){
		System.out.println("-------------------"+customer);
		//ArrayList<CustomerBean> array = new ArrayList<CustomerBean>();
		List<CustomerBean> array = cDao.find(customer);
		model.addAttribute("obj", array.get(0));
		return "customer/sign";
	}

}
