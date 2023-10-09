package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.CustomerService;
import com.turkcell.spring.first.entities.Customer;
import com.turkcell.spring.first.repositories.CustomerRepository;
import org.springframework.stereotype.Service;

@Service
public class CustomerManager implements CustomerService {

    private final CustomerRepository customerRepository;

    public CustomerManager(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public boolean checkCustomerExists(String customerId) {
        Customer checkCustomer = customerRepository.findByCustomerId(customerId);
        boolean isCustomerExists = true;
        if (checkCustomer == null) {
            isCustomerExists = false;
        }
        return isCustomerExists;
    }
}
