package com.turkcell.spring.first.entities;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Table(name="us_states")
@Entity
public class UsState {
    @Id
    @Column(name = "state_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int stateId;

    @Column(name = "state_name")
    private String stateName;

    @Column(name = "state_abbr")
    private String stateAbbreviation;

    @Column(name = "state_region")
    private String stateRegion;
}
