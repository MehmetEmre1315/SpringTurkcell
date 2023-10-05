package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name="products")
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="product_id")
    private int productId;

    @Column(name="product_name")
    private String productName;

    @ManyToOne()
    @JoinColumn(name="supplier_id")
    @JsonBackReference
    private Supplier supplier;

    @ManyToOne()
    @JoinColumn(name="category_id")
    @JsonIgnore
    private Category category;

    @Column(name="quantity_per_unit")
    private String quantityPerUnit;

    @Column(name="unit_price")
    private double unitPrice;

    @Column(name="units_in_stock")
    private int unitsInStock;

    @Column(name="units_on_order")
    private int unitsOnOrder;

    @Column(name="reorder_level")
    private int reorderLevel;

    @Column(name="discontinued")
    private int discontinued;

    @OneToMany(mappedBy = "product") // Başlangıç
    @JsonManagedReference
    private List<OrderDetails> orderDetails; // Varış


}
