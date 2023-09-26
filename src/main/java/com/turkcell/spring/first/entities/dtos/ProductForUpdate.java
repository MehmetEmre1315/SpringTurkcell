package com.turkcell.spring.first.entities.dtos;

import lombok.Data;

@Data
public class ProductForUpdate {

    private int productId;
    private String productName;
    private String quantityPerUnit;
    private double unitPrice;
}
