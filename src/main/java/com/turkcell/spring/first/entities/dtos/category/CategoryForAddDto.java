package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data // Getter+Setter
public class CategoryForAddDto {
    @NotBlank(message = "{categoryNameIsMandatory}")
    @Size(min=3,max=10,  message="{categoryNameShouldBeMinimum}")
    private String categoryName;

    @NotBlank(message = "{descriptionFieldIsMandatory}")
    @Size(max= 50,  message = "{maxSize}")
    private String description;

}
