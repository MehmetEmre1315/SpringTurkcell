package com.turkcell.spring.first.controllers;


import com.turkcell.spring.first.business.abstracts.ProductService;
import com.turkcell.spring.first.entities.Product;
import com.turkcell.spring.first.entities.dtos.product.ProductForAddDto;
import com.turkcell.spring.first.entities.dtos.product.ProductForListingDto1;
import com.turkcell.spring.first.entities.dtos.product.ProductForListingDto2;
import com.turkcell.spring.first.entities.dtos.product.ProductForUpdate;
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
    public List<ProductForListingDto1> getAllProducts() {return productService.getAllProducts();}

    // localhost:8080/products/getProductById/1
    @GetMapping("getProductById/{productId}")
    public Product getProductById(@PathVariable("productId") int productId) {return productService.getProductById(productId);}

    @GetMapping("getByIdDto/{productId}")
    public List<ProductForListingDto2> getByIdDto(@PathVariable("productId") int productId){
        return productService.getByIdDto(productId);
    }

    // localhost:8080/products/addProduct/78
    // Post
    @PostMapping("addProduct")
    public ResponseEntity addProduct(@RequestBody Product product) {
        productService.addProduct(product);
        return new ResponseEntity("Ürün eklendi", HttpStatus.CREATED);
    }

    // localhost:8080/products/updateProduct/
    // Put
    @PostMapping("updateProduct/{productId}")
    public ResponseEntity updateProduct (@PathVariable("productId") int productId, @RequestBody Product updatedProduct) {
        productService.updateProduct(productId, updatedProduct);
        return new ResponseEntity("Ürün güncellendi", HttpStatus.OK);
    }

    // localhost:8080/products/deleteProduct
    // Delete
    @PostMapping("deleteProduct/{productId}")
    public ResponseEntity deleteProduct(@PathVariable("productId") int productId ) {
        productService.deleteProduct(productId);
        return new ResponseEntity("Ürün Silindi", HttpStatus.OK);
    }

    @PostMapping("addProductToDto")
    public ResponseEntity addProductToDto(@RequestBody @Valid ProductForAddDto request) {
        productService.addProductToDto(request);
        return new ResponseEntity ("Ürün eklendi", HttpStatus.CREATED );
    }

    @PostMapping("updateProductDto")
    public ResponseEntity updateProductDto (@RequestBody @Valid ProductForUpdate request) {
        productService.updateProductDto(request);
        return new ResponseEntity("Ürün güncellendi", HttpStatus.OK);
    }

    @PostMapping("deleteProductDto/{productId}")
    public ResponseEntity deleteProductDto(@PathVariable("productId") int productId ) {
        productService.deleteProductDto(productId);
        return new ResponseEntity("Ürün Silindi", HttpStatus.OK);
    }





}
