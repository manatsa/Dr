package com.mana.dr.controllers.patient;

import com.mana.dr.entities.Kinsman;
import com.mana.dr.entities.Patient;
import com.mana.dr.services.KinsmanService;
import com.mana.dr.services.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/patient")
public class PatientController {


    @Autowired
    PatientService patientService;

    @Autowired
    KinsmanService kinsmanService;


    @RequestMapping("/new.html")
    public String createPatient(Model model)
    {
        model.addAttribute("patient",new Patient());
        return "patient/createPatient";
    }

    @RequestMapping("/created")
    public String patientCreated(Patient patient, HttpServletRequest request,Model model)
    {
        System.err.println(patient.toString()+" \n ++++++++++++++++++++++++++");
        Kinsman kinsman=new Kinsman();
        kinsman.setAddress(request.getParameter("kaddress"));
        kinsman.setEmail(request.getParameter("kemail"));
        kinsman.setFirstName(request.getParameter("kfirstName"));
        kinsman.setIdNumber(request.getParameter("kidNumber"));
        kinsman.setLastName(request.getParameter("klastName"));
        kinsman.setPhone(request.getParameter("kphone"));
         patient.setKinsman(kinsman);

        patientService.savePatient(patient);
        model.addAttribute("show"," alert alert-dismissable alert-success text-center ");
        model.addAttribute("message","Patient was saved successfully!!");
        return "patient/ViewPatients";
    }

    @RequestMapping({"/","/list"})
    public String showAllPatients(Model model){
        List<Patient> patients=patientService.getAllPatients();
        model.addAttribute("patients",patients);
        return "patient/viewPatients";
    }


    @RequestMapping("/view/{id}")
    public String viewPatient(@PathVariable Long id, Model model){
        Patient patient=patientService.getPatientById(id);
        model.addAttribute("patient",patient);
        return "patient/viewPatient";
    }

    @RequestMapping("/edit/{id}")
    public String editPatient(@PathVariable Long id, Model model){
        Patient patient=patientService.getPatientById(id);
        model.addAttribute("patient",patient);
        return "patient/editPatient";
    }

    @RequestMapping("/edit.html")
    public String editedPatient(Patient patient, Model model, HttpServletRequest request){
        long kid=Long.parseLong(request.getParameter("kid"));
        Kinsman kinsman=kinsmanService.getKinsmanById(kid);
        patient.setKinsman(kinsman);
        patientService.savePatient(patient);
        List<Patient> patients=patientService.getAllPatients();
        model.addAttribute("patients",patients);
        model.addAttribute("show"," alert alert-dismissable alert-success text-center  ");
        model.addAttribute("message","Patient was edited successfully!!");
        return "patient/viewPatients";
    }
}
