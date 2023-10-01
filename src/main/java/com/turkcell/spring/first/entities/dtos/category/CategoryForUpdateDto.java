package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class CategoryForUpdateDto {
    @NotBlank(message = "Kategori adı girmek zorunludur.")
    @Size(min=3)
    private String categoryName;

    @NotBlank(message = "Açıklama alanı zorunludur.")
    @Size(max= 50)
    private String description;

}
