package com.finalProject.service;

import org.springframework.beans.factory.annotation.Autowired
;
import org.springframework.stereotype.Service;

import com.finalProject.dao.LoginDao;
import com.finalProject.entity.Register;


@Service

public class LoginService {
	@Autowired
	private LoginDao loginDao;
	
	
	public Register get(String firstname, String Password) {
		return loginDao.fetch(firstname,Password);
	}
	
}
