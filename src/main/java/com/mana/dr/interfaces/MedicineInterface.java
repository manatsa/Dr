package com.mana.dr.interfaces;



import com.mana.dr.entities.Medicine;

import java.util.List;

public interface MedicineInterface {

    public List<Medicine> getAllMedicines();
    public Medicine getMedicineById(Long id);
    public Medicine saveMedicine(Medicine medicine);
    public Medicine editMedicine(Medicine medicine,Long id);
    public int deletePatient(Long id);
}
