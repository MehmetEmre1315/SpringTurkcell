package com.turkcell.spring.first.entities.dtos.order;

import lombok.Data;

import java.util.Date;

@Data
public class OrderForCreateDto {

    private int orderId;
    private String customerId;
    private int employeeId;
    private Date orderDate;
    private Date requiredDate;
    private Date shippedDate;
    private int shipVia;
    private double freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private String shipPostalCode;
    private String shipCountry;
}
