package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

    Category findByCategoryId(int categoryId);
    Category findByCategoryName(String categoryName);

    @Query(value="SELECT new " +
            "com.turkcell.spring.first.entities.dtos.category.CategoryForListingDto(c.categoryId, c.categoryName) FROM Category c")
    List<CategoryForListingDto> getForListing();

    @Query(value = "SELECT COUNT(*) " +
            "FROM products p " +
            "INNER JOIN categories c ON p.category_id = c.category_id " +
            "WHERE c.category_name = :categoryName", nativeQuery = true)
    int getTotalProductCountByCategoryName(@Param("categoryName") String categoryName);

    // @Modifying ve @Transactional yazınca No results returned by the Query error 500 hatası çözüldü
    @Modifying
    @Transactional
    @Query(value = "Delete From categories Where category_id = :categoryId", nativeQuery = true)
    void deleteCategoryWithCategoryId(@Param("categoryId") int categoryId);



}