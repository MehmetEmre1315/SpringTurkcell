package com.turkcell.spring.first.business.abstracts;

import org.springframework.stereotype.Service;

@Service
public interface EmployeeService {
    boolean checkEmployeeExists(short employeeId);
}
