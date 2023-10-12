package com.turkcell.spring.first.entities.dtos.order;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class OrderForDeleteDto {

    @NotBlank(message = "{notBlank}")
    private int orderId;
}
