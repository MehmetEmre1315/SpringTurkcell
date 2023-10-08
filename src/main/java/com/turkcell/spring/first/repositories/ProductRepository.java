package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.Product;
import com.turkcell.spring.first.entities.dtos.product.ProductForListingDto1;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Integer> {

    Product findProductByProductId(short productId);
    Product findProductByProductName(String productName);

    //Şunları çıkardım
    //, p.quantityPerUnit, p.unitPrice, p.unitsInStock, p.unitsOnOrder, p.discontinued
    @Query(value = "SELECT new " +
            "com.turkcell.spring.first.entities.dtos.product.ProductForListingDto1" +
            "(p.productId, p.productName) " +
            "FROM Product p")
    List<ProductForListingDto1> getForListing();
}