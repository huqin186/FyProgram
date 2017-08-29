package com.fuyuan.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.fuyuan.dao.UserDao;
import com.fuyuan.entity.UserBean;


public class TestCase {
	
	public Object getBean(String str){
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mvc.xml");
		return ac.getBean(str);
	}
	
	@Test
	public void test1(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mvc.xml");
		UserDao uDao = ctx.getBean(UserDao.class);
		List<UserBean> lists = uDao.findAll();
		for(UserBean user : lists){
			System.out.println(user.getUserName());
		}
	}

}
