package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name="customer_demographics")
public class CustomerDemographic {
    @Id
    @Column(name = "customer_type_id")
    private String customerTypeId;

    @Column(name = "customer_desc")
    private String customerDesc;

    @OneToMany(mappedBy = "customerDemographic")
    private List<CustomerCustomerDemo> customerCustomerDemo ;

}
