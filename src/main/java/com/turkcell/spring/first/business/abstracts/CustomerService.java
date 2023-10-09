package com.turkcell.spring.first.business.abstracts;

import org.springframework.stereotype.Service;

@Service
public interface CustomerService {
    boolean checkCustomerExists(String customerId);
}
