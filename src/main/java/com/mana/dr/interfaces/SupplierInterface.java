package com.mana.dr.interfaces;

import com.mana.dr.entities.Supplier;

import java.util.List;

public interface SupplierInterface {

    public List<Supplier> getAllSuppliers();
    public Supplier getSupplierById(Long id);
    public Supplier saveSupplier(Supplier supplier);
    public Supplier editSupplier(Supplier supplier,Long id);
    public int deleteSupplier(Long id);
}
