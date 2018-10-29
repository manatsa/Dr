package com.mana.dr.services;

import com.mana.dr.entities.Medicine;
import com.mana.dr.interfaces.MedicineInterface;
import com.mana.dr.repositories.MedicineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MedicineService implements MedicineInterface{

    @Autowired
    MedicineRepository medicineRepository;

    @Override
    public List<Medicine> getAllMedicines() {
        return medicineRepository.findAll();
    }

    @Override
    public Medicine getMedicineById(Long id) {
        return medicineRepository.findById(id).get();
    }

    @Override
    public Medicine saveMedicine(Medicine medicine) {
        return medicineRepository.save(medicine);
    }

    @Override
    public Medicine editMedicine(Medicine medicine, Long id) {
        Medicine medicine1=medicineRepository.findById(id).get();
        medicine1.setClassification(medicine.getClassification());
        medicine1.setCommonUses(medicine.getCommonUses());
        medicine1.setExpiryDate(medicine.getExpiryDate());
        medicine1.setForeignName(medicine.getForeignName());
        medicine1.setName(medicine.getName());
        medicine1.setType(medicine.getType());
        return medicineRepository.save(medicine1);
    }

    @Override
    public int deletePatient(Long id) {
        medicineRepository.deleteById(id);
        return 1;
    }
}


