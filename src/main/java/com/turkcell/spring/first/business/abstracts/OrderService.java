package com.turkcell.spring.first.business.abstracts;

import com.turkcell.spring.first.entities.dtos.order.OrderForAddDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForDeleteDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForListingDto;
import com.turkcell.spring.first.entities.dtos.order.OrderForUpdateDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    OrderForListingDto getOrdersByIdDto(short orderId);
    void add(OrderForAddDto request);

}
