package com.turkcell.spring.first.business.abstracts;

import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForDeleteDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
    //CRUD

    void addCategoryToDto(CategoryForAddDto request);
    List<CategoryForListingDto> getAllCategoriesDto();
    void updateCategoryDto(CategoryForUpdateDto request);
    void deleteCategoryDto(CategoryForDeleteDto request);
}
