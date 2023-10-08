package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "employee_territories")
public class EmployeeTerritory {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private short id;

    @ManyToOne()
    @JoinColumn(name="employee_id")
    private Employee employee;

    @ManyToOne()
    @JoinColumn(name="territory_id")
    private Territory territory;
}
