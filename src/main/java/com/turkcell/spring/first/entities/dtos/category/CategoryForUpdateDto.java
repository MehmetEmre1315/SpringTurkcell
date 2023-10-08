package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data
public class CategoryForUpdateDto {

    @NotNull()
    @Min(1)
    private int id;

    @NotBlank(message = "Kategori adı girmek zorunludur.")
    @Size(min=3)
    private String categoryName;

    @NotBlank(message = "Açıklama alanı zorunludur.")
    @Size(max= 50)
    private String description;

}
