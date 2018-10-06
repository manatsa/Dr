package com.mana.dr.entities;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Kinsman {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String firstName;

    @NotNull
    @Column
    private String lastName;

    @NotNull
    @Column
    private String address;

    @NotNull
    @Column
    private String phone;

    @Column
    private String email;

    @NotNull
    @Column
    private String idNumber;

//    @OneToOne
//    private Patient patient;

}
