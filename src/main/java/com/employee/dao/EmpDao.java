package com.employee.dao;

import java.util.List;

import com.employee.entity.Employee;

public interface EmpDao
{
public  int saveEmp(Employee emp);

public Employee getEmployeeId(int id);

public List<Employee> getAllEmp();

public int update(Employee emp);

public void deleteEmp(int id);

}
