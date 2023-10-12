package com.turkcell.spring.first.entities.dtos.order;

import com.turkcell.spring.first.entities.dtos.orderdetail.OrderDetailForAddDto;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class OrderForAddDto {

    @NotBlank
    @Size(min=3,max=10)
    private String customerId;
    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short employeeId;
    //@NotBlank
    //private LocalDate orderDate;
    private LocalDate requiredDate;
    private short shipperId;
    private float freight;
    @NotBlank(message = "{notBlank}")
    @Size(min=3)
    private String shipName;
    @NotBlank(message = "{notBlank}")
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private String shipPostalCode;
    private String shipCountry;
    private List<OrderDetailForAddDto> items;




}
