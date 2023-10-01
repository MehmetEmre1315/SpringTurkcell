package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.ProductService;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.Product;

import com.turkcell.spring.first.entities.dtos.category.CategoryForUpdateDto;
import com.turkcell.spring.first.entities.dtos.product.*;
import com.turkcell.spring.first.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductManager implements ProductService {

    private final ProductRepository productRepository;
    @Autowired
    public ProductManager(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public void addProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public void deleteProduct(int productId) {
        Product product = getProductById(productId);
        if (product != null) {
            productRepository.delete(product);
        } else {
            throw new RuntimeException("Product not found");
        }
    }

    @Override
    public Product updateProduct(int productId, Product product) {
        Product product1 = getProductById(productId);
        if (product1 != null) {
            product1.setProductName(product.getProductName());
            product1.setUnitPrice(product.getUnitPrice());
            productRepository.save(product1);
            return product1;
        } else {
            throw new RuntimeException("Product not found");
        }
    }

    @Override
    public Product getProductById(int productId) {
        return productRepository.findById(productId).orElse(null);
    }

    public List<ProductForListingDto2> getByIdDto(int productId) {
        return productRepository.getForIdListing(productId);

    }

    @Override
    public List<ProductForListingDto1> getAllProducts() {
        return productRepository.getForListing();
    }

    public void addProductToDto(ProductForAddDto request) {

        productWithSameNameShouldNotExist(request.getProductName());
        firstLetterShouldBeUpperCase(request.getProductName());
        productUnitPriceShouldNotBe99(request.getUnitPrice());

        Product product = new Product();
        product.setProductName(request.getProductName());
        product.setQuantityPerUnit(request.getQuantityPerUnit());
        product.setUnitPrice(request.getUnitPrice());
        product.setDiscontinued(0);

        productRepository.save(product);
    }

    public void updateProductDto(ProductForUpdate request){

        firstLetterShouldBeUpperCase(request.getProductName());
        productUnitPriceShouldNotBe99(request.getUnitPrice());

        Product existingProduct = productRepository.findProductByProductId(request.getProductId());
        existingProduct.setProductName(request.getProductName());
        existingProduct.setProductName(request.getProductName());
        existingProduct.setQuantityPerUnit(request.getQuantityPerUnit());
        existingProduct.setUnitPrice(request.getUnitPrice());

        productRepository.save(existingProduct);
    }

    public void deleteProductDto(int productId){
        ProductForDeleteDto productForDeleteDto = new ProductForDeleteDto();
        productForDeleteDto.setProductId(productId);
        Product product = getProductById(productForDeleteDto.getProductId());
        if (product != null) {
            productRepository.delete(product);
        } else {
            throw new RuntimeException("Product not found");
        }
    }

    // Business Rules Başlangıç
    private void productWithSameNameShouldNotExist(String productName){
        Product productWithSameName = productRepository.findProductByProductName(productName);
        if(productWithSameName != null){
            throw new BusinessException("Aynı ürün isminden 2 adet bulunamaz.");
        }
    }
    private void productUnitPriceShouldNotBe99 (double unitPrice){
        if(unitPrice == 99.00){
            throw new BusinessException("Ürünün fiyatı 99.00 olamaz.");
        }
    }
    private void firstLetterShouldBeUpperCase(String productName){
        if(!Character.isUpperCase(productName.charAt(0))){
            throw new BusinessException("Ürün ismi ilk harfi büyük olmalıdır.");
        }
    }
    // Business Rules Bitiş




}
