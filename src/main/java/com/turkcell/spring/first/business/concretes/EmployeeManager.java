package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.EmployeeService;
import com.turkcell.spring.first.entities.Employee;
import com.turkcell.spring.first.repositories.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmployeeManager implements EmployeeService {
    private final EmployeeRepository employeeRepository;
    private final ModelMapper modelMapper;

    @Override
    public boolean checkEmployeeExists(short employeeId) {
        Employee checkEmployee = employeeRepository.findByEmployeeId(employeeId);
        boolean isEmployeeExists = true;
        if (checkEmployee == null) {
            isEmployeeExists = false;
        }
        return isEmployeeExists;
    }
}
