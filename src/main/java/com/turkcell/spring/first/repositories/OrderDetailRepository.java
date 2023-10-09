package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Short> {
}
