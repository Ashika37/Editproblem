package com.finalProject.service;

import javax.transaction.Transactional
;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finalProject.dao.RegisterDao;
import com.finalProject.entity.Register;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {
	private RegisterDao dao;
	
	@Autowired
	public RegisterServiceImpl(RegisterDao dao) {
		super();
		this.dao = dao;
	}
@Override
public boolean saveUser(Register register) {
	Boolean as=dao.saveUser(register);
	return as;
}
}
