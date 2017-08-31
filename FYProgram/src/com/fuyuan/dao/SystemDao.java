package com.fuyuan.dao;

import java.util.List;

import com.fuyuan.annotation.MyBatisRepository;
import com.fuyuan.entity.DictionaryBean;

/**
 * DAO组件
 */
@MyBatisRepository
public interface SystemDao {
	
	List<DictionaryBean> getDictList(DictionaryBean dictionary);
	List<DictionaryBean> getSubDictList(DictionaryBean dictionary);

}
