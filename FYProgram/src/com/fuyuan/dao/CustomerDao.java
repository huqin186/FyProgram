package com.fuyuan.dao;

import java.util.List;

import com.fuyuan.annotation.MyBatisRepository;
import com.fuyuan.entity.CustomerBean;

/**
 * 客户表的DAO组件
 */
@MyBatisRepository
public interface CustomerDao {
	
	List<CustomerBean> find(CustomerBean customer);
	
	int countByCustomer(CustomerBean customer);

}
