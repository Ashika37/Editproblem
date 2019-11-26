package com.finalProject.dao;

import javax.persistence.EntityManager
;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.entity.Register;


@Repository
public class LoginDao {
	@PersistenceContext
	private EntityManager entityManager;

	@Transactional
	/*public void save(Register register) {
		//entityManager.persist(customer);
		//int studId= getNextId();
		//student.setId(studId);
		entityManager.merge(register);
	}*/
	public Register fetch(String firstname, String Password) {
		String ql = "select r from Register r where r.firstname = :app and r.Password = :pwd";
		Query q = entityManager.createQuery(ql);
		q.setParameter("app", firstname);
		q.setParameter("pwd", Password);
		return (Register) q.getSingleResult();
	}

}
