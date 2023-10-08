package com.turkcell.spring.first.controllers;

import com.turkcell.spring.first.business.abstracts.CategoryService;
import com.turkcell.spring.first.entities.Category;

import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForDeleteDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("categories")
//http://localhost:8080/swagger-ui/index.html
// localhost:8080/categories/action
public class CategoriesController {

    private CategoryService categoryService;
    @Autowired
    public CategoriesController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping()
    public List<CategoryForListingDto> getAllCategoriesDto() {
        List<CategoryForListingDto> categoriesInDb = categoryService.getAllCategoriesDto();
        return categoriesInDb;
    }

    @DeleteMapping("deleteCategory")
    public ResponseEntity deleteCategoryDto(@RequestBody @Valid CategoryForDeleteDto request) {
        categoryService.deleteCategoryDto(request);
        return new ResponseEntity("Kategori silindi", HttpStatus.OK);
    }

    @PostMapping("addCategory")
    public ResponseEntity addCategoryToDto(@RequestBody @Valid CategoryForAddDto request){
        categoryService.addCategoryToDto(request);
        return new ResponseEntity("Kategori eklendi", HttpStatus.CREATED);
    }

    @PostMapping("updateCategory")
    public ResponseEntity updateCategoryDto(@RequestBody @Valid CategoryForUpdateDto request) {
        categoryService.updateCategoryDto(request);
        return new ResponseEntity("Kategori güncellendi", HttpStatus.CREATED);
    }



}