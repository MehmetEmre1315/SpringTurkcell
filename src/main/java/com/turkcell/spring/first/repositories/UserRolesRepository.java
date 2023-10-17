package com.turkcell.spring.first.repositories;

import com.turkcell.spring.first.entities.User;
import com.turkcell.spring.first.entities.UserRoles;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRolesRepository extends JpaRepository<UserRoles,Integer> {
}
