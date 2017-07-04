package com.softstone.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.softstone.dao.IBaseDao;
import com.softstone.page.Page;

/**
 * 数据库操作基类
 * 
 * @author Administrator
 * @param <T>
 */
@Repository
public class BaseDaoImpl<T> implements IBaseDao<T> {

	@Autowired
	private SessionFactory sessionFactory;

	public BaseDaoImpl() {
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void save(T obj) {
		if (obj != null) {
			getSession().save(obj);
		}
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void update(T obj) {
		getSession().update(obj);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public T delete(T obj) {
		getSession().delete(obj);
		return obj;
	}

	/**
	 * {@inheritDoc}
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<T> getEntity() {
		String hql = "from " + getEntityName();
		Query query = getSession().createQuery(hql);
		List<T> resultList = (List<T>) query.list();
		return resultList;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void saveOrUpdate(T obj) {
		getSession().saveOrUpdate(obj);
	}

	/**
	 * 获取JavaBean的Entity的name值
	 * 
	 * @return String JaveBean的name的值
	 */
	private String getEntityName() {
		Class<T> entityClazz = getEntityParameterType();
		if (entityClazz != null) {
			Entity entity = entityClazz.getAnnotation(Entity.class);
			return entity.name();
		}
		return this.getClass().getSimpleName();
	}

	/**
	 * 获取JaveBean的表名
	 * 
	 * @return String 表名
	 */
	@SuppressWarnings("unused")
	private String getTableName() {
		Class<T> entityClazz = getEntityParameterType();
		if (entityClazz != null) {
			Table table = entityClazz.getAnnotation(Table.class);
			return table.name();
		}
		return this.getClass().getSimpleName();
	}

	/**
	 * 获取参数化类型
	 * 
	 * @return 参数化类型的字节码
	 */
	@SuppressWarnings("unchecked")
	private Class<T> getEntityParameterType() {
		Class<T> entityClazz = null;
		Type type = this.getClass().getGenericSuperclass();
		if (type instanceof ParameterizedType) {
			Type[] parameterizedTypes = ((ParameterizedType) type)
					.getActualTypeArguments();
			if (parameterizedTypes != null && parameterizedTypes.length > 0) {
				entityClazz = (Class<T>) parameterizedTypes[0];
				return entityClazz;
			}
		}
		return null;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public Session getSession() {
		return getSessionFactory().getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Page<T> getEntityByPage(String hql, int pageNo, int pageSize,
			Map<String, String> paramMap) {
		Page<T> page = new Page<T>();
		Query query = getSession().createQuery(hql);
		Iterator<Entry<String, String>> iterator = paramMap.entrySet()
				.iterator();
		while (iterator.hasNext()) {
			Entry<String, String> entry = iterator.next();
			query.setParameter(entry.getKey(), entry.getValue());
		}
		query.setFirstResult((pageNo - 1) * pageSize);
		query.setMaxResults(pageSize);
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		List<T> resultList = (List<T>) query.list();
		page.setResultList(resultList);
		return page;
	}

}
