package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, String> {
    Customer findByCustomerId(String customerId);
}
