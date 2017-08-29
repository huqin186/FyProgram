package com.fuyuan.dao;

import java.util.List;

import com.fuyuan.annotation.MyBatisRepository;
import com.fuyuan.entity.UserBean;

/**
 * 用户表的DAO组件
 */
@MyBatisRepository
public interface UserDao {
	
	List<UserBean> findAll();

}
