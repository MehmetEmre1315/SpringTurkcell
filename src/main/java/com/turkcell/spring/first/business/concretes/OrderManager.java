package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.*;
import com.turkcell.spring.first.core.exceptions.types.BusinessException;
import com.turkcell.spring.first.entities.Customer;
import com.turkcell.spring.first.entities.Employee;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForListingDto;
import com.turkcell.spring.first.repositories.OrderRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderManager implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderDetailService orderDetailService;
    private final CustomerService customerService;
    private final EmployeeService employeeService;
    private final ProductService productService;
    private final ModelMapper modelMapper;

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

        customerIdShouldExist(request.getCustomerId());
        employeeIdShouldExist(request.getEmployeeId());
        requiredDateShouldBeBiggerThanOrderDate(request.getRequiredDate(), LocalDate.now());

        /*
        // Builder ile manuel mapping
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
        order = orderRepository.save(order);
        */

        // Auto mapping
        Order orderFromAutoMapping = modelMapper.map(request, Order.class);
        orderFromAutoMapping = orderRepository.save(orderFromAutoMapping);

        orderDetailService.addItemsToOrder(orderFromAutoMapping, request.getItems());
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
