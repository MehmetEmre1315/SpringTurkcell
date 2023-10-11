package com.turkcell.spring.first.business.concretes;

import com.turkcell.spring.first.business.abstracts.OrderDetailService;
import com.turkcell.spring.first.business.abstracts.ProductService;
import com.turkcell.spring.first.core.exceptions.types.BusinessException;
import com.turkcell.spring.first.entities.Order;
import com.turkcell.spring.first.entities.OrderDetail;
import com.turkcell.spring.first.entities.Product;
import com.turkcell.spring.first.entities.dtos.orderdetail.OrderDetailForAddDto;
import com.turkcell.spring.first.repositories.OrderDetailRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderDetailManager implements OrderDetailService {

    private final OrderDetailRepository orderDetailRepository;
    private final ProductService productService;
    private final MessageSource messageSource;

    @Override
    public void addItemsToOrder(Order order, List<OrderDetailForAddDto> items) {
        for (OrderDetailForAddDto item: items) {

            maxQuantityOfOrder(item.getProductId(), item.getQuantity());
            productService.setProductStockValue(item.getProductId(), (short) ((productService.getProductStockValue(item.getProductId())) - item.getQuantity()));

            OrderDetail od = OrderDetail.builder()
                    .product(Product.builder().productId(item.getProductId()).build())
                    .order(Order.builder().orderId(order.getOrderId()).build())
                    .discount(0)
                    .quantity(item.getQuantity())
                    .unitPrice(productService.getProductPrice(item.getProductId()))
                    .build();
            orderDetailRepository.save(od);
        }
    }

    private void maxQuantityOfOrder(short productId,  short quantity){
        if(quantity > productService.getProductStockValue(productId)){
            throw new BusinessException(messageSource.getMessage("maxQuantityOfOrder",null, LocaleContextHolder.getLocale()));
        }
    }
}
