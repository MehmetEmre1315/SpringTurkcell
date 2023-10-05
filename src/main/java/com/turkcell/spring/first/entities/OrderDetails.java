package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="order_details")
@Data
public class OrderDetails {
    @ManyToOne()
    @MapsId("orderId")
    @JoinColumn(name = "order_id")
    @JsonIgnore
    private Order order;

    @Id
    @ManyToOne()
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    @JsonBackReference
    private Product product;

    @Column(name = "unit_price")
    private double unit_price;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "discount")
    private double discount;
}
