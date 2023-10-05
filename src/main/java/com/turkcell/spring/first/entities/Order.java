package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
@Table(name="orders")
@Entity
public class Order {
    @Id
    @Column(name = "order_id")
    private int orderId;

    @ManyToOne()
    @JoinColumn(name="customer_id")
    @JsonBackReference
    private Customer customer;

    @ManyToOne()
    @JoinColumn(name="employee_id")
    @JsonBackReference
    private Employee employee;

    @Column(name = "order_date")
    private Date orderDate;

    @Column(name = "required_date")
    private Date requiredDate;

    @Column(name = "shipped_date")
    private Date shippedDate;

    @ManyToOne()
    @JoinColumn(name="ship_via")
    @JsonBackReference
    private Shipper shipper;

    @Column(name = "freight")
    private double freight;

    @Column(name = "ship_name")
    private String shipName;

    @Column(name = "ship_address")
    private String shipAddress;

    @Column(name = "ship_city")
    private String shipCity;

    @Column(name = "ship_region")
    private String shipRegion;

    @Column(name = "ship_postal_code")
    private String shipPostalCode;

    @Column(name = "ship_country")
    private String shipCountry;

    @OneToMany(mappedBy = "order")
    private List<OrderDetails> orderDetails ;

}
