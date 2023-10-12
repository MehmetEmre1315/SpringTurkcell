package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.CategoryService;
import com.turkcell.spring.first.core.exceptions.types.BusinessException;
import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.dtos.category.CategoryForAddDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForDeleteDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import com.turkcell.spring.first.repositories.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryManager implements CategoryService {

    private final CategoryRepository categoryRepository;
    private final MessageSource messageSource;
    private final ModelMapper modelMapper;

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

//        modelMapper.getConfiguration().setAmbiguityIgnored(true).setMatchingStrategy(MatchingStrategies.STANDARD);
//        Category categoryFromAutoMapping = modelMapper.map(request, Category.class);
//        categoryRepository.save(categoryFromAutoMapping);

        Category category = new Category();
        category.setCategoryName( request.getCategoryName());
        category.setDescription(request.getDescription());

        categoryRepository.save(category);
    }
    @Override
    public void updateCategoryDto(CategoryForUpdateDto request) {

        categoryUpdateDescriptionShouldNotBeSame(categoryRepository.findByCategoryId(request.getId()), request);

//        Category categoryFromAutoMapping = categoryRepository.findByCategoryId(request.getId());
//        categoryFromAutoMapping = modelMapper.map(request, Category.class);
//        categoryRepository.save(categoryFromAutoMapping);



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
            throw new BusinessException(messageSource.getMessage("categoryWithSameNameShouldNotExist", null, LocaleContextHolder.getLocale()));
        }
    }
    private void categoryUpdateDescriptionShouldNotBeSame(Category existingCategory, CategoryForUpdateDto request){
        if(existingCategory.getDescription().equals(request.getDescription())){
            throw new BusinessException(messageSource.getMessage("categoryUpdateDescriptionShouldNotBeSame", null, LocaleContextHolder.getLocale()));
        }
    }
    private void productLimitForEachCategoryShouldNotBeMoreThan30 (String categoryName){
        if(categoryRepository.getTotalProductCountByCategoryName(categoryName) > 30){
            throw new BusinessException(messageSource.getMessage("productLimitForEachCategoryShouldNotBeMoreThan30", null, LocaleContextHolder.getLocale()));
        }
    }
    private void firstLetterShouldBeUpperCase(String categoryName){
        if(!Character.isUpperCase(categoryName.charAt(0))){
            throw new BusinessException(messageSource.getMessage("firstLetterShouldBeUpperCase", null, LocaleContextHolder.getLocale()));
        }
    }
    // Business Rules Bitiş
}

