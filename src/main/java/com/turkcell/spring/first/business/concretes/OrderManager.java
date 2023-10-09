package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.*;
import com.turkcell.spring.first.business.exceptions.BusinessException;
import com.turkcell.spring.first.entities.Customer;
import com.turkcell.spring.first.entities.Employee;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForListingDto;
import com.turkcell.spring.first.repositories.OrderRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class OrderManager implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderDetailService orderDetailService;
    private final CustomerService customerService;
    private final EmployeeService employeeService;
    private final ProductService productService;

    public OrderManager(OrderRepository orderRepository, OrderDetailService orderDetailService, CustomerService customerService, EmployeeService employeeService, ProductService productService) {
        this.orderRepository = orderRepository;
        this.orderDetailService = orderDetailService;
        this.customerService = customerService;
        this.employeeService = employeeService;
        this.productService = productService;
    }

    // Manager methods start
    @Override
    public OrderForListingDto getOrdersByIdDto(short orderId) {
        OrderForListingDto orderForListingDto = new OrderForListingDto();
        Order order = orderRepository.findByOrderId(orderId);
        return null;
    }
    @Override
    @Transactional // metotun tamamen başarılı bir şekilde bitmesini bekleyip değişiklikleri o şekilde pushlayan metot
    public void add(OrderForAddDto request) {
        // Order'ı dbye kaydet, orderin bir id'si oluşsun..
        // oluşan id'yi ve itemları orderdetail service gönder o da bu idye detay eklemelerini yapsın..
        customerIdShouldExist(request.getCustomerId());
        employeeIdShouldExist(request.getEmployeeId());
        requiredDateShouldBeBiggerThanOrderDate(request.getRequiredDate(), LocalDate.now());

        Order order = Order.builder()
                .customer(Customer.builder().customerId(request.getCustomerId()).build())
                .orderDate(LocalDate.now())
                .employee(Employee.builder().employeeId(request.getEmployeeId()).build())
                .requiredDate(request.getRequiredDate())
                .shipAddress(request.getShipAddress())
                .shipCity(request.getShipCity())
                .shipName(request.getShipName())
                .shipRegion(request.getShipRegion())
                .build();

        order = orderRepository.save(order);  // gönderen hesaptan parayı düş

        // bu satırdan sonra order'ın id alanı set edilmiş..
        orderDetailService.addItemsToOrder(order, request.getItems()); // gönderilen hesaba parayı göndermek
    }
    // Manager methods end

    // Business Rules Başlangıç



    private void requiredDateShouldBeBiggerThanOrderDate(LocalDate requiredDate, LocalDate orderDate){
        if(requiredDate.isBefore(orderDate)){
            throw new BusinessException("Requried date, order date tarihinden önce olamaz.");
        }
    }

    private void customerIdShouldExist(String customerId){
        if(customerService.checkCustomerExists(customerId) == false){
            throw new BusinessException("Müşteri bulunamadı.");
        }
    }
    private void employeeIdShouldExist(short employeeId){
        if(employeeService.checkEmployeeExists(employeeId) == false){
            throw new BusinessException("Çalışan bulunamadı.");
        }
    }
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
