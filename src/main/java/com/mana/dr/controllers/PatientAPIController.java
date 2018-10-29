package com.mana.dr.controllers;

import com.mana.dr.entities.Patient;
import com.mana.dr.interfaces.KinsmanInterface;
import com.mana.dr.interfaces.PatientInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/patient")
@CrossOrigin
public class PatientAPIController {


    @Autowired
    PatientInterface patientService;

    @Autowired
    KinsmanInterface kinsmanService;


    @GetMapping({"/","/list"})
    public List<Patient> showAllPatients(Model model){

        return patientService.getAllPatients();
    }


    @RequestMapping("/view/{id}")
    public String viewPatient(@PathVariable Long id, Model model){
        Patient patient=patientService.getPatientById(id);
        model.addAttribute("patient",patient);
        return "patient/viewPatient";
    }


}
