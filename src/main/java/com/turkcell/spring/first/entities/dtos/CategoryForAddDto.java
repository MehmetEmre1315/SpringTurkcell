package com.turkcell.spring.first.entities.dtos;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data // Getter+Setter
public class CategoryForAddDto {
    @NotBlank(message = "Kategori adı girmek zorunludur.")
    @Size(min=3)
    private String categoryName;

    @NotBlank(message = "Açıklama alanı zorunludur.")
    @Size(max= 50)
    private String description;

    @DecimalMin(value = "0.0",inclusive = true)
    @DecimalMax(value = "1.0",inclusive = true)
    private int discontinued;
}
