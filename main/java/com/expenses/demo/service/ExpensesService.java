package com.expenses.demo.service;

import java.util.List;

import com.expenses.demo.modal.Expenses;


public interface ExpensesService {

	List <Expenses> findAll();
	void save(Expenses expense);
	Expenses findByID(Long id);
	void delete(Long id);
	
}
