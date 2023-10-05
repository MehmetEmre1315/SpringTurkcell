package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.Data;

@Data
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
}
