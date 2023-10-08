package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name="territories")
@Entity
public class Territory {
    @Id
    @Column(name="territory_id")
    private String territoryId;

    @Column(name="territory_description")
    private String territoryDescription;

    @ManyToOne()
    @JoinColumn(name="region_id")
    private Region region;

    @OneToMany(mappedBy ="territory")
    private List<EmployeeTerritory> employeeTerritories;
}
