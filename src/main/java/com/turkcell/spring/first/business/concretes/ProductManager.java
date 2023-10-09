package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.ProductService;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.Product;

import com.turkcell.spring.first.entities.Supplier;
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
    public float getProductPrice(short productId) {
        Product product = productRepository.findProductByProductId(productId);
        return product.getUnitPrice();
    }
    @Override
    public short getProductStockValue(short productId){
        Product product = productRepository.findProductByProductId(productId);
        return product.getUnitsInStock();
    }
    @Override
    public void setProductStockValue(short productId, short stockValue){
        Product product = productRepository.findProductByProductId(productId);
        product.setUnitsInStock(stockValue);
        productRepository.save(product);
    }


    // Manager methods start

    @Override
    public List<ProductForListingDto1> getAllProductsDto() {
        return productRepository.getForListing();
    }

    public void addProductToDto(ProductForAddDto request) {

        productWithSameNameShouldNotExist(request.getProductName());
        firstLetterShouldBeUpperCase(request.getProductName());
        productUnitPriceShouldNotBe99(request.getUnitPrice());

        Product newProduct = Product.builder()
                .productName(request.getProductName())
                .quantityPerUnit(request.getQuantityPerUnit())
                .unitPrice(request.getUnitPrice())
                .unitsInStock(request.getUnitsInStock())
                .unitsOnOrder(request.getUnitsOnOrder())
                .reorderLevel(request.getReorderLevel())
                .category(Category.builder().categoryId(request.getCategoryId()).build())
                .supplier(Supplier.builder().supplierId(request.getSupplierId()).build())
                .discontinued(0)
                .build();
        productRepository.save(newProduct);
    }

    public void updateProductDto(ProductForUpdateDto request){

        productWithSameNameShouldNotExist(request.getProductName());
        firstLetterShouldBeUpperCase(request.getProductName());
        productUnitPriceShouldNotBe99(request.getUnitPrice());

        Product existingProduct = Product.builder()
                .productId(request.getProductId())
                .productName(request.getProductName())
                .quantityPerUnit(request.getQuantityPerUnit())
                .unitPrice(request.getUnitPrice())
                .unitsInStock(request.getUnitsInStock())
                .category(Category.builder().categoryId(request.getCategoryId()).build())
                .supplier(Supplier.builder().supplierId(request.getSupplierId()).build())
                .discontinued(0)
                .build();
        productRepository.save(existingProduct);
    }

    public void deleteProductDto(ProductForDeleteDto request){
        Product productToDelete = productRepository.findProductByProductId(request.getId());
        productRepository.delete(productToDelete);
    }

    // Manager methods end

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
