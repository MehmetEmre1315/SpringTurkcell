package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="customer_customer_demo")
public class CustomerCustomerDemo {
    @Id
    @ManyToOne()
    @JoinColumn(name="customer_id")
    @JsonBackReference
    private Customer customer;

    @ManyToOne()
    @JoinColumn(name="customer_type_id")
    @JsonBackReference
    private CustomerDemographic customerDemographic;
}
