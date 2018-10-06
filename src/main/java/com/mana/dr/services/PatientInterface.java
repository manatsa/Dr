package com.mana.dr.services;

import com.mana.dr.entities.Patient;

import java.util.List;

public interface PatientInterface {
    public List<Patient> getAllPatients();
    public Patient getPatientById(Long id);
    public Patient savePatient(Patient patient);
    public Patient editPatient(Patient patient,Long id);
    public int deletePatient(Long id);

}
