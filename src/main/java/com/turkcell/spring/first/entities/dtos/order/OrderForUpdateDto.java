package com.turkcell.spring.first.entities.dtos.order;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.Date;

@Data
public class OrderForUpdateDto {

    @NotBlank(message = "orderId  girmek zorunludur.")
    private int orderId;

    @NotBlank
    @Size(min=3,max=10)
    private String customerId;

    @NotBlank
    private Date orderDate;

    @NotBlank
    private Date shippedDate;

    @NotBlank
    @Size(min=3)
    private String shipName;
}
