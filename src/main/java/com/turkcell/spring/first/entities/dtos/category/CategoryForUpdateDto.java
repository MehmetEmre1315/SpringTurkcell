package com.turkcell.spring.first.entities.dtos.category;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data
public class CategoryForUpdateDto {

    @NotNull(message = "{idFieldIsMandatory}" )
    @Min(value = 1, message = "{idFieldShouldBeGreaterThanValue}")
    private int id;

    @NotBlank(message = "{categoryNameIsMandatory}")
    @Size(min=5, message = "{categoryNameShouldBeMinimum}")
    private String categoryName;

    @NotBlank(message = "{descriptionFieldIsMandatory}")
    @Size(max= 50,  message = "{maxSize}")
    private String description;

}
