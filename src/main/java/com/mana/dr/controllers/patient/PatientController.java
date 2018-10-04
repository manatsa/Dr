package com.mana.dr.controllers.patient;

import com.mana.dr.entities.Kinsman;
import com.mana.dr.entities.Patient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/patient")
public class PatientController {

    @RequestMapping("/new.html")
    public String createPatient(Model model)
    {
        model.addAttribute("patient",new Patient());
        model.addAttribute("kinsman",new Kinsman());
        return "patient/createPatient";
    }

    @RequestMapping("/created")
    public String patientCreated(Patient patient, Kinsman kinsman)
    {
        System.err.println(patient.getFirstName()+" "+kinsman.getFirstName());
        return "redirect:/";
    }
}
