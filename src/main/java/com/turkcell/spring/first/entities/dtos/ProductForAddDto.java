package com.turkcell.spring.first.entities.dtos;

import lombok.Data;

@Data
public class ProductForAddDto {

    private String productName;
    private String quantityPerUnit;
    private double unitPrice;
}
