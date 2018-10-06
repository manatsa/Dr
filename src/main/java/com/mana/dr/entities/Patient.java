package com.mana.dr.entities;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @NotNull
    private String address;

    @NotNull
    private String phone;


    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    @Column(nullable = false, updatable = false)
    private Date createDate;


    @Temporal(TemporalType.TIMESTAMP)
    @LastModifiedDate
    @Column(nullable = false)
    private Date modifyDate;

    @Column
    private String email;

    @Column(nullable = false)
    private String idNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @NotNull
    Kinsman kinsman;


}
