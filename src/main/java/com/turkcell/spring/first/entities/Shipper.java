package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name="shippers")
public class Shipper {
    @Id
    @Column(name="shipper_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private short shipperId;

    @Column(name="company_name")
    private String companyName;

    @Column(name="phone")
    private String phone;

    @OneToMany(mappedBy = "shipper")
    private List<Order> orders;
}
