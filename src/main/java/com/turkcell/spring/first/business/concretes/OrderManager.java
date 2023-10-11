package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.*;
import com.turkcell.spring.first.core.exceptions.types.BusinessException;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForListingDto;
import com.turkcell.spring.first.repositories.OrderRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class OrderManager implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderDetailService orderDetailService;
    private final CustomerService customerService;
    private final EmployeeService employeeService;
    private final ProductService productService;
    private final ModelMapper modelMapper;
    private final MessageSource messageSource;

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

        // Auto mapping
        Order orderFromAutoMapping = modelMapper.map(request, Order.class);
        orderFromAutoMapping = orderRepository.save(orderFromAutoMapping);

        orderDetailService.addItemsToOrder(orderFromAutoMapping, request.getItems());
    }
    // Manager methods end

    // Business Rules Başlangıç



    private void requiredDateShouldBeBiggerThanOrderDate(LocalDate requiredDate, LocalDate orderDate){
        if(requiredDate.isBefore(orderDate)){
            throw new BusinessException(messageSource.getMessage("requiredDateShouldBeBiggerThanOrderDate", null, LocaleContextHolder.getLocale()));
        }
    }

    private void customerIdShouldExist(String customerId){
        if(!customerService.checkCustomerExists(customerId)){
            throw new BusinessException(messageSource.getMessage("customerIdShouldExist", new Object[] {customerId}, LocaleContextHolder.getLocale()));
        }
    }
    private void employeeIdShouldExist(short employeeId){
        if(!employeeService.checkEmployeeExists(employeeId)){
            throw new BusinessException(messageSource.getMessage("employeeIdShouldExist", new Object[] {employeeId}, LocaleContextHolder.getLocale()));
        }
    }
    private void orderWithSameOrderIdShouldNotExist(int orderId){
        Order orderWithSameOrderId = orderRepository.findByOrderId(orderId);
        if(orderWithSameOrderId != null){
            throw new BusinessException(messageSource.getMessage("orderWithSameOrderIdShouldNotExist", null, LocaleContextHolder.getLocale()));
        }
    }
    private void orderIdShouldBeBiggerThan10000 (int orderId){
        if(orderId <= 10000){
            throw new BusinessException(messageSource.getMessage("orderIdShouldBeBiggerThan10000", null, LocaleContextHolder.getLocale()));
        }
    }
    private void allLetterOfCustomerIdShouldBeUpperCase(String customerId){
        if(!customerId.equals(customerId.toUpperCase())){
            throw new BusinessException(messageSource.getMessage("allLetterOfCustomerIdShouldBeUpperCase", null, LocaleContextHolder.getLocale()));
        }
    }
    // Business Rules Bitiş


}
