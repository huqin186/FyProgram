package com.zykie.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestCase {
	
	public Object getBean(String str){
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mvc.xml");
		return ac.getBean(str);
	}

}
