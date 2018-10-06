package com.mana.dr.controllers.patient;

import com.mana.dr.entities.Kinsman;
import com.mana.dr.services.KinsmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KinsmanController {

    @Autowired
    KinsmanService kinsmanService;

    @RequestMapping("/kinsman/view/{id}")
    public String showKinsman(Model model, @PathVariable Long id){
        Kinsman kinsman=kinsmanService.getKinsmanById(id);
        model.addAttribute("kinsman",kinsman);
        return "patient/viewKinsman";
    }


}
