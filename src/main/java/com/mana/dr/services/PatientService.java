package com.mana.dr.services;

import com.mana.dr.entities.Patient;
import com.mana.dr.interfaces.PatientInterface;
import com.mana.dr.repositories.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PatientService implements PatientInterface {

    @Autowired
    PatientRepository patientRepository;

    @Override
    public List<Patient> getAllPatients() {
        return patientRepository.findAll();
    }

    @Override
    public Patient getPatientById(Long id) {
        return patientRepository.findById(id).get();
    }

    @Override
    public Patient savePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Patient editPatient(Patient patient, Long id) {
        Patient p=patientRepository.findById(id).get();
        p.setAddress(patient.getAddress());
        p.setEmail(patient.getEmail());
        p.setFirstName(patient.getFirstName());
        p.setLastName(patient.getLastName());
        p.setIdNumber(patient.getIdNumber());
        p.setPhone(patient.getPhone());

        return patientRepository.save(p);
    }

    @Override
    public int deletePatient(Long id) {
        patientRepository.deleteById(id);
        return 1;
    }
}
