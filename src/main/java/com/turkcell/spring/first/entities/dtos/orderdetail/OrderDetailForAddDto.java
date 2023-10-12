package com.turkcell.spring.first.entities.dtos.orderdetail;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderDetailForAddDto {
    private short productId;
    @NotNull()
    @Min(1)
    private short quantity;

}
