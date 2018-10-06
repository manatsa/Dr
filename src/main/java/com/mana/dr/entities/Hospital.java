package com.mana.dr.entities;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Hospital {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotNull
    @Column(length = 30)
    private String name;

    @NotNull
    @Column(length = 200)
    private String address;

    @NotNull
    @Column(length = 30)
    private String phone;

    @NotNull
    @Column(length = 60)
    private String contact;

    @Column(length = 60)
    private String email;

    @Column(updatable = false, nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    private Date createDate;

    @Column(nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @LastModifiedDate
    private Date modifyDate;


}
