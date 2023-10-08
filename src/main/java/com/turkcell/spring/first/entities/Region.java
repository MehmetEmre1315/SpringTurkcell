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
@Table(name="region")
@Entity
public class Region {
    @Id
    @Column(name="region_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private short regionId;

    @Column(name="region_description")
    private String regionDescription;

    @OneToMany(mappedBy = "region")
    private List<Territory> territories;
}
