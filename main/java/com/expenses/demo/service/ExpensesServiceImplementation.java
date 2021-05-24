package com.expenses.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expenses.demo.modal.Expenses;
import com.expenses.demo.repository.ExpenseRepository;

@Service
public class ExpensesServiceImplementation implements ExpensesService{
	
	@Autowired
	ExpenseRepository expensesRepository;
	
	@Override
	public List<Expenses> findAll(){
		return expensesRepository.findAll();
	}

	@Override
	public void save(Expenses expense) {
		expensesRepository.save(expense);
		
	}

	@Override
	public Expenses findByID(Long id) {
		if(expensesRepository.findById(id).isPresent()){
			return expensesRepository.findById(id).get();
		}
		return null;
	}

	@Override
	public void delete(Long id) {
		Expenses expense= findByID(id);
		expensesRepository.delete(expense);
	}

}
