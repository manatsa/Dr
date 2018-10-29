package com.mana.dr.entities;

import com.mana.dr.audit.Auditable;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@ToString
@EntityListeners(AuditingEntityListener.class)
public class Medicine extends Auditable<String> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @Column
    private String name;

    @Column
    private String foreignName;

    @NotNull
    @Column
    private String type;

    @NotNull
    @Column
    private String classification;

    @Column
    private Date expiryDate;

    @Column
    private String commonUses;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "medicine_supplier",
            joinColumns = { @JoinColumn(name = "medicine_id") },
            inverseJoinColumns = { @JoinColumn(name = "supplier_id") }
    )
    Set<Supplier> projects = new HashSet<>();

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

    public String getForeignName() {
        return foreignName;
    }

    public void setForeignName(String foreignName) {
        this.foreignName = foreignName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public String getCommonUses() {
        return commonUses;
    }

    public void setCommonUses(String commonUses) {
        this.commonUses = commonUses;
    }
}
