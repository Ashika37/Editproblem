package com.finalProject.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.finalProject.entity.Passenger;

@Repository("PassengerDao")
public class PassengerDaoImpl extends AbstractDao<Long, Passenger> implements PassengerDao{

	@Override
	public List<Passenger> getAllPassenger() {
		List<Passenger> passenger =getEntityManager().createQuery("SELECT u FROM Passenger u ").getResultList();
		return passenger;
	}

	@Override
	public Passenger getPassengerById(Long id) {
		Passenger passenger =(Passenger) getEntityManager()
                .createQuery("SELECT u FROM Passenger u WHERE u.passenger_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();
		
		return passenger;
	}

	@Override
	public boolean savePassenger(Passenger passenger) {
		persist(passenger);
		return true;
	}

	@Override
	public boolean deletePassengerById(Long id) {
		Passenger passenger =(Passenger) getEntityManager()
                .createQuery("SELECT u FROM Passenger u WHERE u.passenger_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();
		delete(passenger);
		return true;
	}

}
