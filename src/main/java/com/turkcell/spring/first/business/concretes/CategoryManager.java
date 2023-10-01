package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.CategoryService;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import com.turkcell.spring.first.repositories.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryManager implements CategoryService {

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

    public void addCategoryToDto(CategoryForAddDto request) {

        categoryWithSameNameShouldNotExist(request.getCategoryName());
        firstLetterShouldBeUpperCase(request.getCategoryName());
        productLimitForEachCategoryShouldNotBeMoreThan30(request.getCategoryName());

        Category category = new Category();
        category.setCategoryName(request.getCategoryName());
        category.setDescription(request.getDescription());

        categoryRepository.save(category);
    }

    public void updateCategoryDto(CategoryForUpdateDto request) {

        Category existingCategory = categoryRepository.findByCategoryName(request.getCategoryName());
        categoryUpdateDescriptionShouldNotBeSame(existingCategory, request);

        existingCategory.setCategoryName(request.getCategoryName());
        existingCategory.setDescription(request.getDescription());

        categoryRepository.save(existingCategory);
    }

    // Business Rules Başlangıç
    private void categoryWithSameNameShouldNotExist(String categoryName){
        Category categoryWithSameName = categoryRepository.findByCategoryName(categoryName);
        if(categoryWithSameName != null){
            throw new BusinessException("Aynı kategori isminden 2 kategori bulunamaz.");
        }
    }
    private void categoryUpdateDescriptionShouldNotBeSame(Category existingCategory, CategoryForUpdateDto request){
        if(existingCategory.getDescription().equals(request.getDescription())){
            throw new BusinessException("Kategori açıklaması aynı olamaz");
        }
    }
    private void productLimitForEachCategoryShouldNotBeMoreThan30 (String categoryName){
        if(categoryRepository.getTotalProductCountByCategoryName(categoryName) > 30){
            throw new BusinessException("Bir kategoride en fazla 30 öğe olabilir.");
        }
    }
    private void firstLetterShouldBeUpperCase(String categoryName){
        if(!Character.isUpperCase(categoryName.charAt(0))){
            throw new BusinessException("Kategori ismi ilk harfi büyük olmalıdır.");
        }
    }
    // Business Rules Bitiş
}

