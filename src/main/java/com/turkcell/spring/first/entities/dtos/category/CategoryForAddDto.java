package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data // Getter+Setter
public class CategoryForAddDto {
    @NotBlank(message = "Kategori adı girmek zorunludur.")
    @Size(min=3,max=10,  message="{categoryNameShouldBeMinimum}")
    private String categoryName;

    @NotBlank(message = "Açıklama alanı zorunludur.")
    @Size(max= 50)
    private String description;

}
