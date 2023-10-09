package com.turkcell.spring.first.controllers;


import com.turkcell.spring.first.business.abstracts.OrderService;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForUpdateDto;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("orders")
// localhost:8080/orders/action
public class OrdersController {

    private OrderService orderService;

    @Autowired
    public OrdersController(OrderService orderService) {
        this.orderService = orderService;
    }



    @PostMapping("addOrder")
    public ResponseEntity addOrderToDto(@RequestBody @Valid OrderForAddDto request) {
        orderService.add(request);
        return new ResponseEntity ("Sipariş eklendi", HttpStatus.CREATED );
    }
}