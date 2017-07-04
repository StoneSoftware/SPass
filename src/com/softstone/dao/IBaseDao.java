package com.softstone.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.softstone.page.Page;

public interface IBaseDao<T> {
	/**
	 * 获取SessionFactory
	 * 
	 * @return
	 */
	SessionFactory getSessionFactory();

	/**
	 * 获取Session
	 * 
	 * @return
	 */
	Session getSession();

	void save(T obj);

	void update(T obj);

	void saveOrUpdate(T obj);

	T delete(T obj);

	List<T> getEntity();

	Page<T> getEntityByPage(String hql, int pageNo, int pageSize,
			Map<String, String> paramMap);
}
