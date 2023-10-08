package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.CategoryService;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForDeleteDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import com.turkcell.spring.first.repositories.CategoryRepository;
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

    // Manager methods start
    @Override
    public List<CategoryForListingDto> getAllCategoriesDto() {
        return categoryRepository.getForListing();
    }


    @Override
    public void deleteCategoryDto(CategoryForDeleteDto request) {
        int categoryId = request.getId();
        categoryRepository.deleteCategoryWithCategoryId(categoryId);

    }
    @Override
    public void addCategoryToDto(CategoryForAddDto request) {

        categoryWithSameNameShouldNotExist(request.getCategoryName());
        firstLetterShouldBeUpperCase(request.getCategoryName());
        productLimitForEachCategoryShouldNotBeMoreThan30(request.getCategoryName());

        Category category = new Category();
        category.setCategoryName( request.getCategoryName());
        category.setDescription(request.getDescription());

        categoryRepository.save(category);
    }
    @Override
    public void updateCategoryDto(CategoryForUpdateDto request) {

        categoryUpdateDescriptionShouldNotBeSame(categoryRepository.findByCategoryId(request.getId()), request);

        Category existingCategory = categoryRepository.findByCategoryId(request.getId());
        existingCategory.setCategoryName(request.getCategoryName());
        existingCategory.setDescription(request.getDescription());

        categoryRepository.save(existingCategory);
    }
    // Manager methods end

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

