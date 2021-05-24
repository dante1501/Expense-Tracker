package com.expenses.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.expenses.demo.modal.Expenses;
import com.expenses.demo.service.ExpensesService;

@Controller
public class MasterController {

@Autowired
ExpensesService expensesService;

@RequestMapping("/register")
public ModelAndView register() {
	ModelAndView mav = new ModelAndView("register");
	return mav;
	}

@RequestMapping("/")
public ModelAndView homepage() {
	ModelAndView mav = new ModelAndView("homepage");
	return mav;
	}


@RequestMapping("/home")
public ModelAndView home() {
	ModelAndView mav = new ModelAndView("home"); 
	mav.addObject("message","List Of Expenses");
	List<Expenses> expenses=expensesService.findAll();
	mav.addObject("expenses",expenses);
	return mav;
	}


@RequestMapping("/expense")
public ModelAndView addexpense() {
	ModelAndView mav = new ModelAndView("expense"); 
	mav.addObject("expense",new Expenses());
	return mav;
	}

@RequestMapping(value="/expense", method=RequestMethod.POST)
public String save(@ModelAttribute("expense") Expenses expense) {
			expensesService.save(expense);
			return "redirect:/home/";
	}

@RequestMapping(value="/expense/{id}")
public ModelAndView edit(@PathVariable("id") Long id) {
	ModelAndView mav = new ModelAndView("expense");
	Expenses expense = expensesService.findByID(id);
	mav.addObject("expense", expense);
	return mav;
	}

@RequestMapping(value="/expense/{id}/delete")
public String delete(@PathVariable("id") Long id) {
	expensesService.delete(id);
	return "redirect:/home/";
	}










}
