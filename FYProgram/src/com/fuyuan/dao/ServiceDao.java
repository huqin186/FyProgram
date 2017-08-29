package com.fuyuan.dao;

import java.util.List;

import com.fuyuan.annotation.MyBatisRepository;
import com.fuyuan.entity.ServiceBean;

/**
 * 服务表的DAO组件
 */
@MyBatisRepository
public interface ServiceDao {
	
	List<ServiceBean> search(ServiceBean service);
	
}
