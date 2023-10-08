package com.turkcell.spring.first.entities.dtos.category;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryForListingDto {
    private short categoryId;
    private String categoryName;
}
