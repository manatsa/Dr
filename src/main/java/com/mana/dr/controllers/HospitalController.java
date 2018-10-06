package com.mana.dr.controllers;

import com.mana.dr.entities.Hospital;
import com.mana.dr.services.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/hospital")
public class HospitalController {

    @Autowired
    HospitalService hospitalService;

    @RequestMapping("/new.html")
    public String createHospital(Model model){
        model.addAttribute("hospital",new Hospital());
        return "hospital/createHospital";
    }

    @RequestMapping("/created")
    public String createdHospital(Model model, Hospital hospital){
       hospitalService.saveHospital(hospital);
        List<Hospital> hospitals=hospitalService.getAllHospital();
        model.addAttribute("hospitals",hospitals);
        model.addAttribute("done",true);
        model.addAttribute("message","Hospital saved successfully!");
        return "/hospital/viewHospitals";
    }

    @RequestMapping("/")
    public String showAllHospital(Model model){
        List<Hospital> hospitals=hospitalService.getAllHospital();
        model.addAttribute("hospitals",hospitals);
        return "hospital/viewHospitals";
    }


    @RequestMapping("/view/{id}")
    public String showHospital(Model model, @PathVariable Long id){
        Hospital hospital=hospitalService.getHospitalById(id);
        model.addAttribute("hospital",hospital);
        return "hospital/viewHospital";
    }

}
