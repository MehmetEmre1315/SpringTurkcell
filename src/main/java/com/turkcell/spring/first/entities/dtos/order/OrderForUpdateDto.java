package com.turkcell.spring.first.entities.dtos.order;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.Date;

@Data
public class OrderForUpdateDto {

    @NotBlank(message = "{notBlank}")
    private int orderId;

    @NotBlank(message = "{notBlank}")
    @Size(min=3,max=10)
    private String customerId;

    @NotBlank(message = "{notBlank}")
    private Date orderDate;

    @NotBlank(message = "{notBlank}")
    private Date shippedDate;

    @NotBlank(message = "{notBlank}")
    @Size(min=3)
    private String shipName;
}
