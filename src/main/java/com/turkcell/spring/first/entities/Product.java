package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name="products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="product_id")
    private short productId;

    @Column(name="product_name")
    private String productName;

    @Column(name="quantity_per_unit")
    private String quantityPerUnit;

    @Column(name="unit_price")
    private float unitPrice;

    @Column(name="units_in_stock")
    private short unitsInStock;

    @Column(name="units_on_order")
    private short unitsOnOrder;

    @Column(name="reorder_level")
    private short reorderLevel;

    @Column(name="discontinued")
    private int discontinued;

    @ManyToOne()
    @JoinColumn(name="supplier_id")
    private Supplier supplier;

    @ManyToOne()
    @JoinColumn(name="category_id")
    @JsonIgnore
    private Category category;

    @OneToMany(mappedBy = "product") // Başlangıç
    private List<OrderDetail> orderDetails; // Varış


}
