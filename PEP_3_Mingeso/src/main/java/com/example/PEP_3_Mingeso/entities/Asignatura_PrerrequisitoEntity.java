package com.example.PEP_3_Mingeso.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "asignatura_prerrequisito")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Asignatura_PrerrequisitoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id_asignatura_prerrequisito;


}
