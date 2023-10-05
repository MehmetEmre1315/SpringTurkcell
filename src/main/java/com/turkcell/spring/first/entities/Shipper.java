package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name="shippers")
@Entity
public class Shipper {
    @Id
    @Column(name="shipper_id")
    private int shipperId;

    @Column(name="company_name")
    private String companyName;

    @Column(name="phone")
    private String phone;

    @OneToMany(mappedBy = "shipper")
    private List<Order> orders;
}
