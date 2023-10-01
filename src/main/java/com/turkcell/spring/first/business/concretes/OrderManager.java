package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.OrderService;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.repositories.OrderRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderManager implements OrderService {

    private final OrderRepository orderRepository;
    @Autowired
    public OrderManager(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Override
    public void addOrder(Order order) {
        orderRepository.save(order);
    }

    @Override
    public void deleteOrder(int orderId) {
        orderRepository.deleteById(orderId);
    }

    @Override
    public Order updateOrder(int orderId, Order order) {
        Order existingOrder = orderRepository.findById(orderId).orElseThrow(() -> new EntityNotFoundException("Sipariş bulunamadı"));
        existingOrder.setCustomerId(order.getCustomerId());
        return orderRepository.save(existingOrder);
    }

    @Override
    public Order getOrder(int orderId) {
        return orderRepository.findById(orderId).orElseThrow(() -> new EntityNotFoundException("Sipariş bulunamadı"));
    }

    @Override
    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }
}
