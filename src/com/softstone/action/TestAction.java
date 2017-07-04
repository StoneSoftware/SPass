package com.softstone.action;

import java.util.List;
import java.util.UUID;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.softstone.domain.PasswordBean;
import com.softstone.service.IPasswordService;

@Controller
@ParentPackage("struts-default")
@Namespace("/")
@ResultPath(value = "/WEB-INF/page/")
public class TestAction {

	private List<PasswordBean> passwordBeanList;

	@Autowired
	private IPasswordService passwordService;

	@Action(value = "test", results = { @Result(name = "success", location = "test.jsp") })
	public String test() {
		return "success";

	}

	@Actions(value = {
			@Action(value = "getPasswordList", results = { @Result(name = "success", location = "passwordList.jsp") }),
			@Action(value = "link2", results = { @Result(name = "success", location = "link2.jsp") }),
			@Action(value = "link3", results = { @Result(name = "success", location = "link3.jsp") }) })
	public String home() {
		PasswordBean passwordBean = new PasswordBean();
		passwordBean.setId(UUID.randomUUID().toString());
		passwordBean.setAccount("abc");
		// passwordService.savePassword(passwordBean);
		passwordBeanList = passwordService.getAllPasswordBeans();

		return "success";
	}

	public List<PasswordBean> getPasswordBeanList() {
		return passwordBeanList;
	}

	public void setPasswordBeanList(List<PasswordBean> passwordBeanList) {
		this.passwordBeanList = passwordBeanList;
	}

	public IPasswordService getPasswordService() {
		return passwordService;
	}

	public void setPasswordService(IPasswordService passwordService) {
		this.passwordService = passwordService;
	}

}
