package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.OrderService;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.Product;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForUpdateDto;
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
        //existingOrder.setCustomerId(order.getCustomerId());
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

    @Override
    public void addOrderToDto(OrderForAddDto request) {

        orderWithSameOrderIdShouldNotExist(request.getOrderId());
        allLetterOfCustomerIdShouldBeUpperCase(request.getCustomerId());

        Order order = new Order();
        //order.setOrderId(request.getOrderId());
        //order.setCustomerId(request.getCustomerId());
        //order.setOrderDate(request.getOrderDate());
        //order.setShippedDate(request.getShippedDate());
        order.setShipName(request.getShipName());

        orderRepository.save(order);
    }

    @Override
    public void updateOrderToDto(OrderForUpdateDto request) {

        allLetterOfCustomerIdShouldBeUpperCase(request.getCustomerId());
        orderIdShouldBeBiggerThan10000(request.getOrderId());

        Order existingOrder = orderRepository.findByOrderId(request.getOrderId());
        //existingOrder.setOrderId(request.getOrderId());
        //existingOrder.setCustomerId(request.getCustomerId());
        //existingOrder.setOrderDate(request.getOrderDate());
        //existingOrder.setShippedDate(request.getShippedDate());
        existingOrder.setShipName(request.getShipName());

        orderRepository.save(existingOrder);
    }

    // Business Rules Başlangıç
    private void orderWithSameOrderIdShouldNotExist(int orderId){
        Order orderWithSameOrderId = orderRepository.findByOrderId(orderId);
        if(orderWithSameOrderId != null){
            throw new BusinessException("Aynı sipariş id'inden 2 adet bulunamaz.");
        }
    }
    private void orderIdShouldBeBiggerThan10000 (int orderId){
        if(orderId <= 10000){
            throw new BusinessException("Order id 10000'den büyük olmalıdır.");
        }
    }
    private void allLetterOfCustomerIdShouldBeUpperCase(String customerId){
        if(!customerId.equals(customerId.toUpperCase())){
            throw new BusinessException("Müşteri id'si büyük harfle yazılmalıdır.");
        }
    }
    // Business Rules Bitiş


}
