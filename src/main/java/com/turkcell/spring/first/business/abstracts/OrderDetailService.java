package com.turkcell.spring.first.business.abstracts;

import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.orderdetail.OrderDetailForAddDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderDetailService {
    void addItemsToOrder(Order order, List<OrderDetailForAddDto> items);
}