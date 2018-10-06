package com.mana.dr.services;

import com.mana.dr.entities.Hospital;
import com.mana.dr.interfaces.HospitalInterface;
import com.mana.dr.repositories.HospitalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HospitalService implements HospitalInterface {

    @Autowired
    HospitalRepository hospitalRepository;

    @Override
    public List<Hospital> getAllHospital() {
        return hospitalRepository.findAll();
    }

    @Override
    public Hospital getHospitalById(Long id) {
        return hospitalRepository.findById(id).get();
    }

    @Override
    public Hospital saveHospital(Hospital hospital) {
        return hospitalRepository.save(hospital);
    }

    @Override
    public Hospital editHospital(Hospital hospital, Long id) {
        Hospital hosp=hospitalRepository.findById(id).get();
        hosp.setName(hospital.getName());
        hosp.setAddress(hospital.getAddress());
        hosp.setPhone(hospital.getPhone());
        hosp.setEmail(hospital.getEmail());
        hosp.setContact(hospital.getContact());

        return  hospitalRepository.save(hosp);
    }

    @Override
    public int deleteHospital(Long id) {
        hospitalRepository.deleteById(id);
        return 1;
    }
}
