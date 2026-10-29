package com.employee.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.employee.entity.Employee;

@Repository
public class EmployeeDao implements EmpDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveEmp(Employee emp) {

		Integer i = (Integer) hibernateTemplate.save(emp);
		return i;
	}

	public Employee getEmployeeId(int id) {

		Employee emp = hibernateTemplate.get(Employee.class, id);

		return emp;
	}

	public List<Employee> getAllEmp() {
		List<Employee> list = hibernateTemplate.loadAll(Employee.class);

		return list;
	}

	@Transactional
	public int  update(Employee emp) {

		hibernateTemplate.update(emp);
		return 0;

	}

	@Transactional
	public void deleteEmp(int id) {
		Employee emp = hibernateTemplate.get(Employee.class, id);
		if(emp !=null)
		{
			hibernateTemplate.delete(emp);
		}
	}

}
