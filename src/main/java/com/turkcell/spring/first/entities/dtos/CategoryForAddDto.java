package com.turkcell.spring.first.entities.dtos;

import lombok.Data;

@Data // Getter+Setter
public class CategoryForAddDto {
    private String categoryName;
    private String description;
    private int discontinued;
}
