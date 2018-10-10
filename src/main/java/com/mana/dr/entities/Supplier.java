package com.mana.dr.entities;

import com.mana.dr.audit.Auditable;
import lombok.ToString;

import javax.persistence.*;

@Entity
@ToString
public class Supplier extends Auditable<String>{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, length = 60)
    private String name;

    @Column(nullable = false, length = 30)
    private String type;

    @Column(nullable = false, length = 60)
    private String address;

    @Column(nullable = false, length = 60)
    private String phone;

    @Column(length = 60)
    private String email;

    @Column(nullable = false, length = 60)
    private String contact;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
