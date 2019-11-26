package com.finalProject.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.finalProject.entity.Register;



@Repository("RegisterDao")
public class RegisterDaoImpl extends AbstractDao<Long, Register> implements RegisterDao {
	EntityManager entityManager;
	@Override
	public Boolean saveUser(Register register) {
		persist(register);
		return true;
	}
}
