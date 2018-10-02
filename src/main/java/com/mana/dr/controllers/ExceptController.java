package com.mana.dr.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptController {

    @RequestMapping("/loginFailed")
    public String loginerror()
    {
        return "error";
    }
}
