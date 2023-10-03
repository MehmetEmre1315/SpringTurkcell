package com.turkcell.spring.first.entities.dtos.product;

import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class ProductForAddDto {

    @NotBlank(message = "Ürün adı girmek zorunludur.")
    @Size(min=3)
    private String productName;

    @NotBlank(message = "quantityPerUnit alanı zorunludur.")
    @Size(max= 50)
    private String quantityPerUnit;

    @DecimalMin(value = "0.0",inclusive = true)
    @DecimalMax(value = "1.0",inclusive = true)
    private double unitPrice;

    @DecimalMin(value = "0",inclusive = true)
    private int unitsInStock;
}
