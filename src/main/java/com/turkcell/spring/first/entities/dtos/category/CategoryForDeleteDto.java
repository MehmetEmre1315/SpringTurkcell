package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class CategoryForDeleteDto {

    @NotNull()
    @Min(1)
    private int id;
}
