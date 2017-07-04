package com.softstone.service;

import java.util.List;

import com.softstone.domain.PasswordBean;

public interface IPasswordService {
	public void savePassword(PasswordBean passwordBean);

	public List<PasswordBean> getAllPasswordBeans();
}
