package com.turkcell.spring.first.entities.dtos.product;

import jakarta.validation.constraints.*;
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
    private float unitPrice;

    @DecimalMin(value = "0",inclusive = true)
    private short unitsInStock;
    private short unitsOnOrder;
    private short reorderLevel;
    @Min(0)
    @Max(1)
    private int discontinued;

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short supplierId;

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short categoryId;
}
