package com.mana.dr.controllers;

import com.mana.dr.interfaces.MedicineInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MedicineController {

    @Autowired
    MedicineInterface medicineservice;
}
