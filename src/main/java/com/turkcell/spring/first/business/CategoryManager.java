package com.turkcell.spring.first.business;

import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.dtos.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.CategoryForListingDto;
import com.turkcell.spring.first.repositories.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryManager implements CategoryService{

    private final CategoryRepository categoryRepository;
    @Autowired
    public CategoryManager(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @Override
    public List<CategoryForListingDto> getAllCategories() {
        return categoryRepository.getForListing();
    }

    @Override
    public Category getCategory(int categoryId) {
        Category category = categoryRepository.findById(categoryId).orElse(null);
        return category;
    }

    @Override
    public void addCategory(Category category) {
        categoryRepository.save(category);
    }

    @Override
    public void deleteCategory(int categoryId) {
        categoryRepository.deleteById(categoryId);
    }

    @Override
    public Category updateCategory(int categoryId, Category category) {
        Category existingCategory = categoryRepository.findById(categoryId).orElseThrow(() -> new EntityNotFoundException("Kategori bulunamadı"));
        existingCategory.setCategoryName(category.getCategoryName());
        return categoryRepository.save(existingCategory);
    }



    public List<Category> getCategoriesByName(String name){
        List<Category> categories = categoryRepository.findByCategoryNameContaining(name);
        return categories;
    }
    public List<Category> findByDescription(String description) {
        List<Category> categories = categoryRepository.findByDescription(description);
        return categories;
    }
    public List<Category> findByCategoryNameStartingWith(String prefix) {return categoryRepository.findByCategoryNameStartingWith(prefix);}
    public List<Category> search(String name){
        List<Category> categories = categoryRepository.searchNative(name);
        return categories;
    }
    public List<Category> searchFirst(String categoryName) {return categoryRepository.searchFirst(categoryName);}
    public List<Category> searchEnd(String categoryName) {return categoryRepository.searchEnd(categoryName);}
    public List<Category> searchNative(String categoryName){
        return categoryRepository.searchNative(categoryName);
    }
    public List<Category> searchNativeFirst(String categoryName){return categoryRepository.searchNativeFirst(categoryName);}

    public void addCategoryToDto(CategoryForAddDto request){
        Category category = new Category();
        category.setCategoryName(request.getCategoryName());
        category.setDescription(request.getDescription());
    }

}

