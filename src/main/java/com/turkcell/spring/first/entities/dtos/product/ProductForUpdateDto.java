package com.turkcell.spring.first.entities.dtos.product;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data
public class ProductForUpdateDto {

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short productId;

    @NotBlank(message = "Ürün adı girmek zorunludur.")
    @Size(min=3)
    @Size(max= 50)
    private String productName;

    @NotBlank(message = "quantityPerUnit girmek zorunludur.")
    private String quantityPerUnit;

    @NotNull(message = "unitPrice girmek zorunludur.")
    @DecimalMin(value = "0.0",inclusive = true,message = "Ürün Fiyatı 0.0 dan küçük olamaz")
    private float unitPrice;

    @DecimalMin(value = "0",inclusive = true)
    private short unitsInStock;

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short supplierId;

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private short categoryId;
}
