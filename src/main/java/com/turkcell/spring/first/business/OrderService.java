package com.turkcell.spring.first.business;

import com.turkcell.spring.first.entities.Category;
import com.turkcell.spring.first.entities.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    void addOrder(Order order);

    void deleteOrder(int orderId);
    Order updateOrder(int orderId, Order order);

    Order getOrder(int orderId);
    List<Order> getAllOrders();
}
