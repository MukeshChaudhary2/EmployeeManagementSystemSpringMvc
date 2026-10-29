package com.employee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.employee.dao.EmpDao;

import com.employee.entity.Employee;


@Controller
public class HomeController {
	@Autowired
	private EmpDao empDao;
	private int id;
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		List<Employee> list = empDao.getAllEmp();
		m.addAttribute("empList",list);
		return "home";
	}
	
	@RequestMapping("/addEmp")
	public String AddEmployee()
	{
		return "add_emp";
	}
	
	@RequestMapping(path = "/createEmp", method = RequestMethod.POST)
	public String createEmp(@ModelAttribute Employee emp, HttpSession session)
	{
		System.out.println(emp);
		
		int i = empDao.saveEmp(emp);
		session.setAttribute("msg", "Register Successfully");
		return "redirect:/addEmp";
		
	}
	
	@RequestMapping(path = "/edit/{id}")
	public String editEmp(@PathVariable int id, Model m)
	{
		Employee employee=empDao.getEmployeeId(id);
		m.addAttribute("emp", employee);
		return "edit";
	}
	
	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute Employee emp, Model m, HttpSession session)
	{
		System.out.println(emp);
		
		empDao.update(emp);
		session.setAttribute("msg", "Updated Successfully");
		return "redirect:/home";
	}
	@RequestMapping(path = "/deleteEmp/{id}")
	public String deleteEmp(@PathVariable int id, HttpSession session)
	{
		
		
		empDao.deleteEmp(id);
		session.setAttribute("msg", "Deleted Successfully");
		return "redirect:/home";
	}
	
}
