package com.mana.dr.interfaces;

import com.mana.dr.entities.Hospital;

import java.util.List;

public interface HospitalInterface {

    public List<Hospital> getAllHospital();
    public Hospital getHospitalById(Long id);
    public Hospital saveHospital(Hospital hospital);
    public Hospital editHospital(Hospital hospital,Long id);
    public int deleteHospital(Long id);
}
