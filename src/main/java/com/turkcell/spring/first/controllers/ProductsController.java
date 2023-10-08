package com.turkcell.spring.first.controllers;


import com.turkcell.spring.first.business.abstracts.ProductService;
import com.turkcell.spring.first.entities.Product;
import com.turkcell.spring.first.entities.dtos.product.ProductForAddDto;
import com.turkcell.spring.first.entities.dtos.product.ProductForDeleteDto;
import com.turkcell.spring.first.entities.dtos.product.ProductForListingDto1;
import com.turkcell.spring.first.entities.dtos.product.ProductForUpdateDto;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("products")
// localhost:8080/products/action
public class ProductsController {
    private ProductService productService;

    @Autowired
    public ProductsController(ProductService productService) {
        this.productService = productService;
    }

    // localhost:8080/products
    @GetMapping()
    public List<ProductForListingDto1> getAllProducts() {return productService.getAllProductsDto();}

    @PostMapping("addProduct")
    public ResponseEntity addProductToDto(@RequestBody @Valid ProductForAddDto request) {
        productService.addProductToDto(request);
        return new ResponseEntity ("Ürün eklendi", HttpStatus.CREATED );
    }

    @PostMapping("updateProduct")
    public ResponseEntity updateProductDto (@RequestBody @Valid ProductForUpdateDto request) {
        productService.updateProductDto(request);
        return new ResponseEntity("Ürün güncellendi", HttpStatus.OK);
    }

    @DeleteMapping("deleteProduct")
    public ResponseEntity deleteProductDto(@RequestBody @Valid ProductForDeleteDto request ) {
        productService.deleteProductDto(request);
        return new ResponseEntity("Ürün Silindi", HttpStatus.OK);
    }





}
