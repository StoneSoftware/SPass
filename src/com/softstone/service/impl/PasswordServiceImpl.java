package com.softstone.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softstone.dao.IPasswordDao;
import com.softstone.domain.PasswordBean;
import com.softstone.service.IPasswordService;

@Service
public class PasswordServiceImpl implements IPasswordService {

	@Autowired
	private IPasswordDao passwordDao;

	/**
	 * {@inheritDoc}
	 */
	@Override
	@Transactional
	public void savePassword(PasswordBean passwordBean) {
		passwordDao.save(passwordBean);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	@Transactional
	public List<PasswordBean> getAllPasswordBeans() {
		List<PasswordBean> passwordList = passwordDao.getEntity();
		return passwordList;
	}

}
