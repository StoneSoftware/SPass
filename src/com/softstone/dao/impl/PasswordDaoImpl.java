package com.softstone.dao.impl;

import org.springframework.stereotype.Repository;

import com.softstone.dao.IPasswordDao;
import com.softstone.domain.PasswordBean;

@Repository
public class PasswordDaoImpl extends BaseDaoImpl<PasswordBean> implements
		IPasswordDao {

}
