package com.turkcell.spring.first.entities.dtos.order;

import com.turkcell.spring.first.entities.dtos.orderdetail.OrderDetailForAddDto;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderForListingDto {

    private short orderId;
    private String customerId;
    private short employeeId;
    private LocalDate orderDate;
    private LocalDate requiredDate;
    private short shipVia;
    private float freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private String shipPostalCode;
    private String shipCountry;
    private List<OrderDetailForAddDto> items;
}
