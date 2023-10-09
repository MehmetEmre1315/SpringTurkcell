package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Short> {
    Employee findByEmployeeId(Short employeeId);

}
