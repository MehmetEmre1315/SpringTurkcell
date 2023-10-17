package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name="user_roles")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserRoles {
    @Id
    @Column(name="id")
    @GeneratedValue()
    private Integer id;
    @Column(name = "role")
    private String role;

    @OneToMany(mappedBy = "role")
    private List<User> users;
}
