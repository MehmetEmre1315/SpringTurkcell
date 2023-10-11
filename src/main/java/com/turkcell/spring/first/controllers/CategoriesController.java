package com.turkcell.spring.first.controllers;

import com.turkcell.spring.first.business.abstracts.CategoryService;
import com.turkcell.spring.first.entities.Category;

import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForDeleteDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("categories")
@RequiredArgsConstructor
//http://localhost:8080/swagger-ui/index.html
// localhost:8080/categories/action
public class CategoriesController {

    private final CategoryService categoryService;
    private final MessageSource messageSource;

    @GetMapping()
    public List<CategoryForListingDto> getAllCategoriesDto() {
        List<CategoryForListingDto> categoriesInDb = categoryService.getAllCategoriesDto();
        return categoriesInDb;
    }

    @DeleteMapping("deleteCategory")
    public ResponseEntity deleteCategoryDto(@RequestBody @Valid CategoryForDeleteDto request) {
        categoryService.deleteCategoryDto(request);
        return new ResponseEntity(messageSource.getMessage("CategoryDeleted", null, LocaleContextHolder.getLocale()), HttpStatus.OK);
    }

    @PostMapping("addCategory")
    public ResponseEntity addCategoryToDto(@RequestBody @Valid CategoryForAddDto request){
        categoryService.addCategoryToDto(request);
        return new ResponseEntity(messageSource.getMessage("CategoryAdded", null, LocaleContextHolder.getLocale()), HttpStatus.CREATED);
    }

    @PostMapping("updateCategory")
    public ResponseEntity updateCategoryDto(@RequestBody @Valid CategoryForUpdateDto request) {
        categoryService.updateCategoryDto(request);
        return new ResponseEntity(messageSource.getMessage("CategoryUpdated", null, LocaleContextHolder.getLocale()), HttpStatus.CREATED);
    }



}