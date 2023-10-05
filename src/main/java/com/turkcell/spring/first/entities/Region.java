package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name="region")
@Entity
public class Region {
    @Id
    @Column(name="region_id")
    private int regionId;

    @Column(name="region_description")
    private String regionDescription;

    @OneToMany(mappedBy = "region")
    private List<Territory> territories;
}
