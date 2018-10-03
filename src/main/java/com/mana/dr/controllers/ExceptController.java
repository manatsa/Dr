package com.mana.dr.controllers;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptController {

    @RequestMapping("/loginFailed")
    public String loginerror(HttpServletRequest httpServletRequest)
    {
        int errorCode=(Integer) httpServletRequest.getAttribute("javax.servlet.error.status_code");
        System.err.println(errorCode);
        return "error";
    }
}
