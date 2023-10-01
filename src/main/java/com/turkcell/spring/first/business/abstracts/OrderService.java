package com.turkcell.spring.first.business.abstracts;


import com.turkcell.spring.first.entities.Order;

import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForUpdateDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    void addOrder(Order order);

    void deleteOrder(int orderId);
    Order updateOrder(int orderId, Order order);

    Order getOrder(int orderId);
    List<Order> getAllOrders();

    void addOrderToDto(OrderForAddDto request);
    void updateOrderToDto(OrderForUpdateDto request);

}
