package com.turkcell.spring.first.business.abstracts;

import com.turkcell.spring.first.entities.dtos.product.ProductForAddDto;
import com.turkcell.spring.first.entities.dtos.product.ProductForDeleteDto;
import com.turkcell.spring.first.entities.dtos.product.ProductForListingDto1;
import com.turkcell.spring.first.entities.dtos.product.ProductForUpdateDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {

    List<ProductForListingDto1> getAllProductsDto();
    void addProductToDto(ProductForAddDto request);
    void updateProductDto(ProductForUpdateDto request);
    void deleteProductDto(ProductForDeleteDto request);
}
