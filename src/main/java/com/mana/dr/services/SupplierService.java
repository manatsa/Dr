package com.mana.dr.services;

import com.mana.dr.entities.Supplier;
import com.mana.dr.interfaces.SupplierInterface;
import com.mana.dr.repositories.SupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("/supply")
public class SupplierService implements SupplierInterface {

    @Autowired
    SupplierRepository supplierRepository;

    @Override
    @GetMapping("/list/")
    public List<Supplier> getAllSuppliers() {
        return supplierRepository.findAll();
    }

    @Override
    public Supplier getSupplierById(Long id) {
        return supplierRepository.findById(id).get();
    }

    @Override
    public Supplier saveSupplier(Supplier supplier) {
        return supplierRepository.save(supplier);
    }

    @Override
    public Supplier editSupplier(Supplier supplier, Long id) {
        Supplier sup=supplierRepository.findById(id).get();
        sup.setAddress(supplier.getAddress());
        sup.setContact(supplier.getContact());
        sup.setEmail(supplier.getEmail());
        sup.setName(supplier.getName());
        sup.setPhone(supplier.getPhone());
        sup.setType(supplier.getType());
        return supplierRepository.save(sup);
    }

    @Override
    public int deleteSupplier(Long id) {
        supplierRepository.deleteById(id);
        return 1;
    }
}
