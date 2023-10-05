package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name="suppliers")
@Data
public class Supplier {
    @Column(name="supplier_id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int supplierID;

    @Column(name="company_name")
    private String companyName;

    @Column(name="contact_name")
    private String contactName;

    @Column(name="contact_title")
    private String contactTitle;

    @Column(name="address")
    private String address;

    @Column(name="city")
    private String city;

    @Column(name="region")
    private String region;

    @Column(name="postal_code")
    private String postalCode;

    @Column(name="country")
    private String country;

    @Column(name="phone")
    private String phone;

    @Column(name="fax")
    private String fax;

    @Column(name="homepage")
    private String homePage;


    @OneToMany(mappedBy= "supplier")
    @JsonManagedReference
    private List<Product> products;
}
