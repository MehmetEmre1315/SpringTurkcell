package com.turkcell.spring.first.entities.dtos.product;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class ProductForDeleteDto {
    @NotNull()
    @Min(1)
    private short id;
}
