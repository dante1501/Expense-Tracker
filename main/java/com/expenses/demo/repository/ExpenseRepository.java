package com.expenses.demo.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.expenses.demo.modal.Expenses;

@Repository
public interface ExpenseRepository extends JpaRepository<Expenses , Long> {
	

}
