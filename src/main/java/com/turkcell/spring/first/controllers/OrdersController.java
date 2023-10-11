package com.turkcell.spring.first.controllers;


import com.turkcell.spring.first.business.abstracts.OrderService;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForUpdateDto;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("orders")
@RequiredArgsConstructor
// localhost:8080/orders/action
public class OrdersController {

    private final OrderService orderService;
    private final MessageSource messageSource;


    @PostMapping("addOrder")
    public ResponseEntity addOrderToDto(@RequestBody @Valid OrderForAddDto request) {
        orderService.add(request);
        return new ResponseEntity (messageSource.getMessage("OrderAdded", null, LocaleContextHolder.getLocale()), HttpStatus.CREATED );
    }
}