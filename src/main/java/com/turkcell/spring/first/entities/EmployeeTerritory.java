package com.turkcell.spring.first.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "employee_territory")
public class EmployeeTerritory {
    @Id
    @ManyToOne()
    @JoinColumn(name="employee_id")
    @JsonBackReference
    private Employee employee;

    @ManyToOne()
    @JoinColumn(name="territory_id")
    @JsonBackReference
    private Territory territory;
}
