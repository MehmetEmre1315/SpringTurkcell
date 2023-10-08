package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
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
@Table(name="suppliers")
public class Supplier {
    @Id
    @Column(name="supplier_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private short supplierId;

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
    private List<Product> products;


}
